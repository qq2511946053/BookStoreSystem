package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:01
 * @Version: 1.0
 */
public class OrderSql {
    public static final String insertOrder="insert into `order`(order_number,user_id,order_price,receiving_id,integral) values(?,?,?,?,?)";
    //查看conn刚插入的语句
    public static final String getOrderID="SELECT LAST_INSERT_ID()";
}
