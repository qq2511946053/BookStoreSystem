package com.vp.bookstore.service;

import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.dao.ICommentDao;
import com.vp.bookstore.dao.impl.IBookInfoDaoImpl;
import com.vp.bookstore.dao.impl.ICommentDaoImpl;
import com.vp.bookstore.pojo.BookInfo;

/**
 * @Author: duYang
 * @Date: 2019/12/25 18:17
 * @Version: 1.0
 */
public class BookDetailService {
    private static IBookInfoDao bookInfoDao=new IBookInfoDaoImpl();
    private static ICommentDao commentDao=new ICommentDaoImpl();

    public static BookInfo getBookDetail(int bookId){
        BookInfo bookInfo = bookInfoDao.findByBookId(bookId);
        bookInfo.setCommentList(commentDao.findByBookId(bookInfo.getBook_id()));
        return bookInfo;
    }
}
