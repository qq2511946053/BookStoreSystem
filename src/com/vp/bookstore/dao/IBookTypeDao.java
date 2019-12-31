package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:35
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.BookType;

import java.util.List;

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

    /**
     * 功能：返回所有类别名称
     * 传入：null
     * return list BookType
     */
    List<BookType> findByAllName();

    /**
     * 功能：返回所有类别名称的详细信息
     * 传入：typename
     * return list BookType
     */
    List<BookType> findByDetailName(String typename);
}
