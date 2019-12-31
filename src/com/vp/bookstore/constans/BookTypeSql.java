package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:00
 * @Version: 1.0
 */
public class BookTypeSql {
    public static final String findByName="select * from booktype where booktype_name=?";
    public static final String findByAllName="select DISTINCT booktype_name from booktype";
    public static final String findByDetailName="select booktype_detailname from booktype where booktype_name=?";
}
