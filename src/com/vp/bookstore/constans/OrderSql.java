package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:01
 * @Version: 1.0
 */
public class OrderSql {
    public static final String FINDORDER="select * from `order` where user_id=?";
    public static final String FINDORDERBYIDANSTATUS="select * from `order` where user_id=? and order_status=?";
    public static final String FINDORDERBYIDANSTATUSYIZHIFU="select*from `order` where user_id=? and order_status in (1,2,3)";
    public static final String FINDORDERBYORDERID="select * from `order` where order_id=?";
    public static final String DELETEORDERBYORDERID="delete from `order` where order_id=? ";

}
