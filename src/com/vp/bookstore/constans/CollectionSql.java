package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:00
 * @Version: 1.0
 */
public class CollectionSql {
    public  static final String FINDCOLLECTIONBYUSERID="select*from collection where user_id=?";
    public  static final String PAGEFINDCOLLECTIONBYUSERID="select*from collection where user_id=? limit ?,?";
    public  static final String DELETECOLLECTIONBYBOOKID="delete from collection where user_id=? and book_id=?";

}
