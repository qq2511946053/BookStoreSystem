package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:40
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.Order;

import java.util.List;

/**
 * 订单表接口
 */
public interface IOrderDao {
    /**
     * 功能：根据用户id查所拥有的订单
     * 传入：user_id
     * return List<Order>
     */
    List<Order> findOrder(int user_id);

    /**
     * 功能：根据用户id和发货状态查所拥有的订单
     * 传入：user_id，int order_status
     * return List<Order>
     */
    List<Order> findOrderbyidandstatus(int user_id,int order_status);

    /**
     * 功能：根据用户id和发货状态查所有已支付的订单
     * 传入：user_id，int order_status
     * return List<Order>
     */
    List<Order> findOrderbyidandstatusyizhifu(int user_id);

    /**
     * 功能：根据订单id查询订单表
     * 传入：order_id
     * return Order
     */
    Order findOrderByOrderId(int order_id);

    /**
     * 功能：根据订单id删除订单
     * 传入：order_id
     * return Boolean
     */
    Boolean deleteOrderDetailBybooid(int order_id);
}
