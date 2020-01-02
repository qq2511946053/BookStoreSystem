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
     * 功能：获得书籍的全部数量
     * 传入：null
     * return count
     */
    int getBookCount();

    /**
     * 重载：自己传入字符串和对象
     * return
     */
    int getBookCount(String sql,List<Object> list);

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

    /**
     * 功能：返回类别中热门推荐的书（热度按照已售+收藏计算）
     * 传入：name,size
     * return list BookInfo
     */
    List<BookInfo> findBookTypeRanking(String name,int size);

    /**
     * 功能：返回班级-班级之间热门推荐的书（热度按照已售+收藏计算）
     * 传入：status,end,size
     * return list BookInfo
     */
    List<BookInfo> findFitClassRanking(int status,int end,int size);

    /**
     * 功能：分页查询
     * 传入：off,size
     * return list BookInfo
     */
    List<BookInfo> findLimitRanking(int off,int size);

    /**
     * 重载：自己传人参数
     */
    List<BookInfo> findLimitRanking(String sql,List<Object> list);
}
