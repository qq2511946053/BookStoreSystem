package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:41
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.OrderDetail;

import java.util.List;

/**
 * 订单详情表的接口
 */
public interface IOrderDetailDao {
    /**
     * 功能：返回订单的所有详情信息
     * 传入：order_id
     * return List<OrderDetail>
     */
    List<OrderDetail> findOrderDetail(int order_id);

    /**
     * 功能：根据书籍删除订单
     * 传入：order_id,book_id
     * return Boolean
     */
    Boolean deleteOrderDetailBybooid(int order_id, int book_id);
}
