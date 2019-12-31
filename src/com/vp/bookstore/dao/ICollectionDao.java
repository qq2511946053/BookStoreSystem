package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:38
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.Collection;

/**
 * 收藏记录表的接口
 */
public interface ICollectionDao {
    /**
     * 功能：判断此用户是否收藏这本书
     * 传入 collection(book_id,user_id)
     * 返回 boolean
     */
    boolean findByUserCollectionBook(Collection collection);

    /**
     * 功能：添加一条收藏记录
     * 传入 collection(book_id,user_id)
     * 返回 boolean
     */
    boolean insertCollection(Collection collection);
}
