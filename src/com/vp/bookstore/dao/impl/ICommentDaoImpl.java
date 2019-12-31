package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.CommentSql;
import com.vp.bookstore.dao.ICommentDao;
import com.vp.bookstore.pojo.Comment;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:48
 * @Version: 1.0
 */
public class ICommentDaoImpl implements ICommentDao {
    @Override
    public Boolean addComment(int user_id, int book_id, String comment_content) {
        return JdbcUtil.executeNoQuery(CommentSql.ADDCOMMENT,new Object[]{user_id,book_id,comment_content})>0?true:false;
    }

    @Override
    public Boolean updateComment(int user_id, int book_id, String comment_content) {
        return JdbcUtil.executeNoQuery(CommentSql.UPDATECOMMENT,new Object[]{comment_content,user_id,book_id})>0?true:false;
    }

    @Override
    public Boolean deleteComment(int user_id, int book_id) {
        return JdbcUtil.executeNoQuery(CommentSql.DELETECOMMENT,new Object[]{user_id,book_id})>0?true:false;

    }

    @Override
    public Comment findCommentBYuseridandbookid(int user_id, int book_id) {
        return JdbcUtil.executeQuery(CommentSql.FINDCOMMENTBYUSERIDANDBOOKID,new Object[]{user_id,book_id},Comment.class);

    }

    @Override
    public List<Comment> findCommentByuserid(int user_id) {
        return JdbcUtil.executeQuerys(CommentSql.FINDCOMMENTBYUSERID,new Object[]{user_id},Comment.class);

    }

    @Override
    public List<Comment> pagefindCommentByuserid(int user_id, int page, int pagesize) {
        return JdbcUtil.executeQuerys(CommentSql.PAGEFINDCOMMENTBYUSERID,new Object[]{user_id,page,pagesize},Comment.class);

    }
}
