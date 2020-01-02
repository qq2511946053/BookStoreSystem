package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.CollectionSql;
import com.vp.bookstore.dao.ICollectionDao;
import com.vp.bookstore.pojo.Collection;
import com.vp.bookstore.util.JdbcUtil;


import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:48
 * @Version: 1.0
 */
public class ICollectionDaoImpl implements ICollectionDao {
    @Override
    public boolean findByUserCollectionBook(Collection collection) {
        int i = JdbcUtil.executeCount(CollectionSql.findByUserCollectionBook, new Object[]{collection.getBook_id(), collection.getUser_id()});
        if (i > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean insertCollection(Collection collection) {
        int i = JdbcUtil.executeNoQuery(CollectionSql.insertCollection, new Object[]{collection.getBook_id(), collection.getUser_id()});
        if (i > 0) {
            return true;
        }
        return false;

    }

    @Override
    public List<Collection> findcollectionByuserid(int user_id) {
        return JdbcUtil.executeQuerys(CollectionSql.FINDCOLLECTIONBYUSERID, new Object[]{user_id}, Collection.class);
    }

    @Override
    public List<Collection> pagefindcollectionByuserid(int user_id, int index, int pagesize) {
        return JdbcUtil.executeQuerys(CollectionSql.PAGEFINDCOLLECTIONBYUSERID, new Object[]{user_id, index, pagesize}, Collection.class);

    }

    @Override
    public Boolean deletecollectionBybookid(int user_id, int book_id) {
        return JdbcUtil.executeNoQuery(CollectionSql.DELETECOLLECTIONBYBOOKID, new Object[]{user_id, book_id}) > 0 ? true : false;
    }
}
