package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:35
 * @Version: 1.0
 */

/**
 * 书类别表的接口
 */
public interface IBookTypeDao {
    /**
     * 功能：返回指定类别名称的ID
     * 传入：BookType_name
     * return BookType_id
     */
    int findByName(String name);
}
