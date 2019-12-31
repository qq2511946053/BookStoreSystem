package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:00
 * @Version: 1.0
 */

/**
 * 评论表的Sql语句
 */
public class CommentSql {
    public static final String findByBookId="select userinfo.user_img,userinfo.user_nickname,comment.comment_content,comment.comment_date from comment,userinfo where comment.user_id=userinfo.user_id and book_id=?";
}
