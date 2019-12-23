package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.UserInfoSql;
import com.vp.bookstore.dao.IUserInfoDao;
import com.vp.bookstore.pojo.UserInfo;
import com.vp.bookstore.util.JdbcUtil;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:52
 * @Version: 1.0
 */
public class IUserInfoDaoImpl implements IUserInfoDao {
    @Override
    public UserInfo judgeUserAccount(UserInfo userInfo) {
        if(userInfo.getUserPassword()==null)
            return JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFOBYUSERNAME,new Object[]{userInfo.getUserPhone(),userInfo.getUserEmail(),userInfo.getUserQq()},UserInfo.class);
        else return JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFO,new Object[]{userInfo.getUserPhone(),userInfo.getUserEmail(),userInfo.getUserQq(),userInfo.getUserPassword()},UserInfo.class);
    }

    @Override
    public UserInfo findByUserId(int id) {
        return null;
    }

    @Override
    public boolean insertUserAccount(UserInfo userInfo) {
        return false;
    }
}
