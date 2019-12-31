package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:24
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.BookInfo;

import java.util.List;

/**
 * 书籍表接口
 */
public interface IBookInfoDao {
    /**
     * 功能：查询书籍的信息
     * 传入：book_id
     * return BookInfo
     */
    BookInfo findByBookId(int book_id);

    /**
     * 功能：返回热销排行榜书籍信息
     * 传入：size
     * return list BookInfo
     */
    List<BookInfo> findHeatRanking(int size);

    /**
     * 功能：返回最新上架书籍的信息
     * 传入：size
     * return list BookInfo
     */
    List<BookInfo> findNewBookRanking(int size);

    /**
     * 功能：返回折扣最低书籍的信息
     * 传入：size
     * return list BookInfo
     */
    List<BookInfo> findDisCountBookRanking(int size);


}
