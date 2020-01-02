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
<<<<<<< HEAD
     * 功能：返回评论信息，按评论时间降序
     * 传入：bookId
     * return list Comment
     */
    List<Comment> findByBookId(int bookId);

    /**
     * 功能：添加评论
     * 传入：user_id,book_id,comment_content
     * 传出：Boolean
     */
    Boolean addComment(int user_id,int book_id,String comment_content);

    /**
     * 功能：修改评论
     * 传入：user_id,book_id,comment_content
     * 传出：Boolean
     */
    Boolean updateComment(int user_id,int book_id,String comment_content);

    /**
     * 功能：删除评论
     * 传入：user_id,book_id
     * 传出：Boolean
     */
    Boolean deleteComment(int user_id,int book_id);

    /**
     * 功能：查询评论
     * 传入：user_id,book_id
     * 传出：Comment
     */
    Comment  findCommentBYuseridandbookid(int user_id, int book_id);

    /**
     * 功能：查询评论
     * 传入：user_id
     * 传出：Comment
     */
    List<Comment> findCommentByuserid(int user_id);
    /**
     * 功能：分页查询评论
     * 传入：user_id 用户id
     * page 第几页
     * pagesize 页面大小
     * 传出：Comment
     */
    List<Comment> pagefindCommentByuserid(int user_id,int page ,int pagesize);
}
