package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:00
 * @Version: 1.0
 */

/**
 * 收藏表的Sql语句
 */
public class CollectionSql {
    public static final String findByUserCollectionBook="select count(1) from collection where book_id=? and user_id=?";
    public static final String insertCollection="insert into collection values(null,?,?)";
}
