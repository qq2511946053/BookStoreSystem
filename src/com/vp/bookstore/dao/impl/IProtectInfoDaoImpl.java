package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.ProtectSql;
import com.vp.bookstore.dao.IProtectInfoDao;
import com.vp.bookstore.pojo.Protect;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:51
 * @Version: 1.0
 */
public class IProtectInfoDaoImpl implements IProtectInfoDao {
    @Override
    public List<Protect> findByProtectId(int id) {
        return JdbcUtil.executeQuerys(ProtectSql.FINDPROTECTBYID,new Object[]{id},Protect.class);
    }

    @Override
    public boolean judgeProtectAnswer(Protect protect) {
        return false;
    }

    @Override
    public boolean addProtect(Protect protect) {
        return JdbcUtil.executeNoQuery(ProtectSql.PROTECTADD,new Object[]{protect.getUser_id(),protect.getProtect_problem(),protect.getProtect_answer()})>0?true:false;


    }
}
