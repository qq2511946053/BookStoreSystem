package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:01
 * @Version: 1.0
 */
public class OrderDetailSql {
    public static final String FINDORDERDETAIL="select * from orderdetail where order_id=?";
    public static final String DELETEORDERDETAILBYBOOKID="delete from orderdetail where order_id=? and book_id=?";
}
