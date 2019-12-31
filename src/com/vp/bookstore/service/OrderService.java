package com.vp.bookstore.service;

import com.vp.bookstore.constans.BookInfoSql;
import com.vp.bookstore.constans.OrderDetailSql;
import com.vp.bookstore.constans.OrderSql;
import com.vp.bookstore.dto.OrderListDto;
import com.vp.bookstore.dto.ShoppingCartDto;
import com.vp.bookstore.util.DruidPollUtil;
import com.vp.bookstore.util.TransactionJdbcUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * @Author: duYang
 * @Date: 2019/12/30 18:35
 * @Version: 1.0
 */
public class OrderService {
    /**
     * 此方法处理Session中的临时订单
     * 采取事务的方式提交
     * (未完成功能)15分钟后将订单变为已提交订单但未支付,并且还原书库存的锁定
     * @param orderListDto
     */
    public static void submitOrder(OrderListDto orderListDto,int userId){
        Connection connection = null;
        try {
            connection= DruidPollUtil.getConnection();
            connection.setAutoCommit(false);
            int i = TransactionJdbcUtil.executeNoQuery(OrderSql.insertOrder, new Object[]{getChars(), userId, orderListDto.getSumPrice(), orderListDto.getReceiving().getReceiving_id(), Math.floor(orderListDto.getSumPrice())}, connection);
            if (i==0) connection.rollback();
            int orderID = TransactionJdbcUtil.executeCount(OrderSql.getOrderID, new Object[]{}, connection);
            for (ShoppingCartDto shopping : orderListDto.getOrderList()) {
                TransactionJdbcUtil.executeNoQuery(OrderDetailSql.insertOrderDetail,new Object[]{orderID,shopping.getBook_id(),shopping.getBook_count()},connection);
                TransactionJdbcUtil.executeNoQuery(BookInfoSql.updateBookStock,new Object[]{shopping.getBook_count(),shopping.getBook_id()},connection);
            }
            connection.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                if (connection!=null){
                    connection.rollback();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        finally {
            TransactionJdbcUtil.close();
            try {
                if(connection!=null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 根据时间轴生成20位的字符串
     */
    public static String getChars(){
        StringBuilder stringBuilder=new StringBuilder();
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyyMMddHHmmssSSS");
        stringBuilder.append(simpleDateFormat.format(new Date()));
        Random random=new Random();
        for (int i = 0; i < 3; i++) {
            stringBuilder.append(random.nextInt(9));
        }
        return stringBuilder.toString();
    }
}
