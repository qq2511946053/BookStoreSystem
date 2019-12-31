package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.BookTypeSql;
import com.vp.bookstore.dao.IBookTypeDao;
import com.vp.bookstore.pojo.BookType;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:48
 * @Version: 1.0
 */
public class IBookTypeDaoImpl implements IBookTypeDao {
    @Override
    public int findByName(String name) {
        return 0;
    }

    @Override
    public List<BookType> findByAllName() {
        return JdbcUtil.executeQuerys(BookTypeSql.findByAllName, new Object[]{}, BookType.class);
    }

    @Override
    public List<BookType> findByDetailName(String typename) {
        return JdbcUtil.executeQuerys(BookTypeSql.findByDetailName, new Object[]{typename}, BookType.class);
    }
}
