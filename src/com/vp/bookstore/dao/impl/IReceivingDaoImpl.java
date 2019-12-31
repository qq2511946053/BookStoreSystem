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
    public List<Receiving> findReceivingbyid(int user_id) {
        return JdbcUtil.executeQuerys(ReceivingSql.FINDRECEIVINGBYID,new Object[]{user_id},Receiving.class);
    }

    @Override
    public Receiving findReceivingbyidandstatus(int user_id, int status) {
        return JdbcUtil.executeQuery(ReceivingSql.FINDRECEIVINGBYIDANDSTATUS,new Object[]{user_id,status},Receiving.class);
    }

    @Override
    public Receiving findReceivingbyreceivingid(int receiving_id) {
        return JdbcUtil.executeQuery(ReceivingSql.FINDRECEIVINGBYRECEIVINGID,new Object[]{receiving_id},Receiving.class);
    }

    @Override
    public Boolean addreceiving(Receiving receiving) {
        return JdbcUtil.executeNoQuery(ReceivingSql.ADDRECEIVING,new Object[]{receiving.getReceiving_region(),receiving.getReceiving_address(),receiving.getPostalcode(),receiving.getReceiving_name(),receiving.getReceiving_phone(),receiving.getUser_id(),receiving.getStatus()})>0?true:false;

    }

    @Override
    public Boolean updatereceiving(Receiving receiving) {
        return JdbcUtil.executeNoQuery(ReceivingSql.UPDATERECEIVING,new Object[]{receiving.getReceiving_region(),receiving.getReceiving_address(),receiving.getPostalcode(),receiving.getReceiving_name(),receiving.getReceiving_phone(),receiving.getUser_id(),receiving.getStatus(),receiving.getReceiving_id()})>0?true:false;

    }

    @Override
    public Boolean deletereceiving(int receiving_id) {
        return JdbcUtil.executeNoQuery(ReceivingSql.DELETERECEIVING,new Object[]{receiving_id})>0?true:false;

    }
}
