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
    public List<Comment> findByBookId(int bookId) {
        return JdbcUtil.executeQuerys(CommentSql.findByBookId, new Object[]{bookId}, Comment.class);
    }
}
