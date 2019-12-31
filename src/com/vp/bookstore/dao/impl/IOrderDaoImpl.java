package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.OrderSql;
import com.vp.bookstore.dao.IOrderDao;
import com.vp.bookstore.pojo.Order;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:49
 * @Version: 1.0
 */
public class IOrderDaoImpl implements IOrderDao {
    @Override
    public List<Order> findOrder(int user_id) {
        return JdbcUtil.executeQuerys(OrderSql.FINDORDER,new Object[]{user_id},Order.class);
    }

    @Override
    public List<Order> findOrderbyidandstatus(int user_id, int order_status) {
        return JdbcUtil.executeQuerys(OrderSql.FINDORDERBYIDANSTATUS,new Object[]{user_id,order_status},Order.class);
    }

    @Override
    public List<Order> findOrderbyidandstatusyizhifu(int user_id) {
        return JdbcUtil.executeQuerys(OrderSql.FINDORDERBYIDANSTATUSYIZHIFU,new Object[]{user_id},Order.class);

    }

    @Override
    public Order findOrderByOrderId(int order_id) {
        return JdbcUtil.executeQuery(OrderSql.FINDORDERBYORDERID,new Object[]{order_id},Order.class);
    }

    @Override
    public Boolean deleteOrderDetailBybooid(int order_id) {
        return JdbcUtil.executeNoQuery(OrderSql.DELETEORDERBYORDERID,new Object[]{order_id})>0?true:false;
    }
}
