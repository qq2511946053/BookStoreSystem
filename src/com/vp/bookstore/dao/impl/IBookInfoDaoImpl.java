package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.BookInfoSql;
import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.pojo.BookInfo;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

public class IBookInfoDaoImpl implements IBookInfoDao {
    @Override
    public BookInfo findByBookId(int id) {
        return JdbcUtil.executeQuery(BookInfoSql.FINDBYBOOKID,new Object[]{id},BookInfo.class);
    }

    @Override
    public List<BookInfo> findHeatRanking(int size) {
        return null;
    }

    @Override
    public List<BookInfo> findNewBookRanking(int size) {
        return null;
    }

    @Override
    public List<BookInfo> findDisCountBookRanking(int size) {
        return null;
    }
}
