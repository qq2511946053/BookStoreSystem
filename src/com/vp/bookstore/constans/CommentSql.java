package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:00
 * @Version: 1.0
 */
public class CommentSql {
    public  static final String ADDCOMMENT="insert into comment(user_id,book_id,comment_content) values(?,?,?)";
    public  static final String FINDCOMMENTBYUSERIDANDBOOKID="select *from comment where user_id=? and book_id=?";
    public  static final String FINDCOMMENTBYUSERID="select *from comment where user_id=?";
    public  static final String PAGEFINDCOMMENTBYUSERID="select *from comment where user_id=? limit ?,?";
    public  static final String UPDATECOMMENT="update  comment set comment_content=? where user_id=? and book_id=?";
    public  static final String DELETECOMMENT="delete from comment  where user_id=? and book_id=?";
}
