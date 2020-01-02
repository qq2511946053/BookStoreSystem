package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.OrderDetailSql;
import com.vp.bookstore.dao.IOrderDetailDao;
import com.vp.bookstore.pojo.OrderDetail;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:51
 * @Version: 1.0
 */
public class IOrderDetailDaoImpl implements IOrderDetailDao {

    @Override
    public List<OrderDetail> findOrderDetail(int order_id) {
        return JdbcUtil.executeQuerys(OrderDetailSql.FINDORDERDETAIL,new Object[]{order_id},OrderDetail.class);
    }

    @Override
    public Boolean deleteOrderDetailBybooid(int order_id, int book_id) {
        return JdbcUtil.executeNoQuery(OrderDetailSql.DELETEORDERDETAILBYBOOKID,new Object[]{order_id,book_id})>0?true:false;
    }
}
