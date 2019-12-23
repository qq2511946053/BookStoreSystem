package com.vp.bookstore.pojo;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:40
 * @Version: 1.0
 */

import lombok.Data;

import java.sql.Timestamp;

/**
 * 订单表
 */
@Data
public class Order implements java.io.Serializable{
    private static final long serialVersionUID = 5659758877323700987L;

    /** orderid */
    private Integer order_id;

    /** 订单编号ordernumber */
    private String order_number;

    /** 用户id */
    private Integer user_id;

    /** 订单总价 */
    private Double order_price;

    /** 订单状态（0下单没付款，1下单已付款，2付款未发货，3付款已经发货等等） */
    private Integer order_status;

    /** 订单时间 */
    private Timestamp order_date;

    /** 订单总价 */
    private Integer receiving_id;
}
