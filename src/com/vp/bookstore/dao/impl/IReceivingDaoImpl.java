package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.ReceivingSql;
import com.vp.bookstore.dao.IReceivingDao;
import com.vp.bookstore.pojo.Receiving;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:51
 * @Version: 1.0
 */
public class IReceivingDaoImpl implements IReceivingDao {
    @Override
    public Receiving findDefaultReceiving(int id) {
        return JdbcUtil.executeQuery(ReceivingSql.findDefaultReceiving, new Object[]{id}, Receiving.class);
    }

    @Override
    public List<Receiving> findAllReceiving(int id) {
        return JdbcUtil.executeQuerys(ReceivingSql.findAllReceiving, new Object[]{id}, Receiving.class);
    }

    @Override
    public Receiving findById(int id) {
        return JdbcUtil.executeQuery(ReceivingSql.findById, new Object[]{id}, Receiving.class);
    }
}
