package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.CollectionSql;
import com.vp.bookstore.dao.ICollectionDao;
import com.vp.bookstore.pojo.Collection;
import com.vp.bookstore.util.JdbcUtil;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:48
 * @Version: 1.0
 */
public class ICollectionDaoImpl implements ICollectionDao {
    @Override
    public boolean findByUserCollectionBook(Collection collection) {
        int i = JdbcUtil.executeCount(CollectionSql.findByUserCollectionBook, new Object[]{collection.getBook_id(), collection.getUser_id()});
        if (i>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean insertCollection(Collection collection) {
        int i = JdbcUtil.executeNoQuery(CollectionSql.insertCollection, new Object[]{collection.getBook_id(), collection.getUser_id()});
        if (i>0){
            return true;
        }
        return false;
    }
}
