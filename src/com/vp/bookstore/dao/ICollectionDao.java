package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:38
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.Collection;

import java.util.List;

/**
 * 收藏记录表的接口
 */
public interface ICollectionDao {
    /**
     * 功能：查看用户收藏的书籍id
     * 传入：user_id
     * 传出：Boolean
     */
    List<Collection> findcollectionByuserid(int user_id);

    /**
     * 功能：分页查询查看用户收藏的书籍id
     * 传入：user_id
     * 传出：Boolean
     */
    List<Collection> pagefindcollectionByuserid(int user_id,int index,int pagesize);

    /**
     * 功能：删除收藏的书籍id
     * 传入：user_id,book_id
     * 传出：Boolean
     */
    Boolean deletecollectionBybookid(int user_id,int book_id);
}
