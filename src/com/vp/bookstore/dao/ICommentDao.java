package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:39
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.Comment;

import java.util.List;

/**
 * 评论表接口
 */
public interface ICommentDao {
    /**
     * 功能：返回评论信息，按评论时间降序
     * 传入：bookId
     * return list Comment
     */
    List<Comment> findByBookId(int bookId);
}
