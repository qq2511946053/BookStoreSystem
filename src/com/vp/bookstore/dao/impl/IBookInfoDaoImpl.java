package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.BookInfoSql;
import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.pojo.BookInfo;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/24 9:30
 * @Version: 1.0
 */
public class IBookInfoDaoImpl implements IBookInfoDao {

    @Override
    public int getBookCount() {
        return JdbcUtil.executeCount(BookInfoSql.getBookCount, new Object[]{});
    }

    @Override
    public int getBookCount(String sql, List<Object> list) {
        Object[] objects=new Object[list.size()];
        for (int i = 0; i < list.size(); i++) {
            objects[i]=list.get(i);
        }
        return JdbcUtil.executeCount(sql, objects);
    }

    @Override
    public BookInfo findByBookId(int id) {
        return JdbcUtil.executeQuery(BookInfoSql.findByBookId, new Object[]{id}, BookInfo.class);
    }

    @Override
    public List<BookInfo> findHeatRanking(int size) {
        return JdbcUtil.executeQuerys(BookInfoSql.findHeatRanking, new Object[]{size}, BookInfo.class);
    }

    @Override
    public List<BookInfo> findNewBookRanking(int size) {
        return JdbcUtil.executeQuerys(BookInfoSql.findNewBookRanking, new Object[]{size}, BookInfo.class);
    }

    @Override
    public List<BookInfo> findDisCountBookRanking(int size) {
        return JdbcUtil.executeQuerys(BookInfoSql.findDisCountBookRanking, new Object[]{size}, BookInfo.class);
    }

    @Override
    public List<BookInfo> findBookTypeRanking(String name,int size) {
        return JdbcUtil.executeQuerys(BookInfoSql.findBookTypeRanking, new Object[]{name,size}, BookInfo.class);
    }

    @Override
    public List<BookInfo> findFitClassRanking(int status,int end,int size) {
        return JdbcUtil.executeQuerys(BookInfoSql.findFitClassRanking, new Object[]{status,end,size}, BookInfo.class);
    }

    @Override
    public List<BookInfo> findLimitRanking(int off, int size) {
        return JdbcUtil.executeQuerys(BookInfoSql.findLimitRanking, new Object[]{off, size}, BookInfo.class);
    }

    @Override
    public List<BookInfo> findLimitRanking(String sql, List<Object> list) {
        Object[] objects=new Object[list.size()];
        for (int i = 0; i < list.size(); i++) {
            objects[i]=list.get(i);
        }
        return JdbcUtil.executeQuerys(sql, objects, BookInfo.class);
    }
}
