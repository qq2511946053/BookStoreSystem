package com.vp.bookstore.dao.impl;


import com.vp.bookstore.constans.UserInfoSql;
import com.vp.bookstore.dao.IUserInfoDao;
import com.vp.bookstore.pojo.UserInfo;
import com.vp.bookstore.util.JdbcUtil;

import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:52
 * @Version: 1.0
 */

public class IUserInfoDaoImpl implements IUserInfoDao {
    @Override
    public UserInfo judgeUserAccount(UserInfo userInfo) {
        if(userInfo.getUser_phone()!=null&&userInfo.getUser_password()==null&&userInfo.getUser_email()==null) {
            return JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFOBYUSERNAME, new Object[]{userInfo.getUser_phone()}, UserInfo.class);
            } else if (userInfo.getUser_phone() != null && userInfo.getUser_password() != null && userInfo.getUser_email() == null) {
                return JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFO, new Object[]{userInfo.getUser_phone(), userInfo.getUser_password()}, UserInfo.class);
            } else if (userInfo.getUser_email() != null) {
                return JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFOBYEMAIL, new Object[]{userInfo.getUser_email()}, UserInfo.class);
            } else if (userInfo.getUser_qq() != null) {
                return JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFOBYQQ, new Object[]{userInfo.getUser_qq()}, UserInfo.class);
            } else  if(userInfo.getUser_nickname() != null){
                return JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFOBYNICKNAME, new Object[]{userInfo.getUser_nickname()}, UserInfo.class);
            }
        return null;
    }

    @Override
    public UserInfo findByUserId(int id) {
        return  JdbcUtil.executeQuery(UserInfoSql.JUDGEUSERINFOBYID,new Object[]{id},UserInfo.class);
    }

    @Override
    public boolean insertUserAccount(UserInfo userInfo) {
        List<Object> list = UserInfoSql.adduserinfosql(userInfo);
        return  JdbcUtil.executeNoQuery( list.get(0).toString(),(Object[]) list.get(1))>0?true:false;

    }

    @Override
    public boolean updateUserAccount(UserInfo userInfo) {
        List<Object> list = UserInfoSql.updateuserinfosql(userInfo);
        return  JdbcUtil.executeNoQuery( list.get(0).toString(),(Object[]) list.get(1))>0?true:false;

    }

    @Override
    public boolean updateUserpassword(int user_id, String password) {
        return JdbcUtil.executeNoQuery(UserInfoSql.UPDATEUSERPASSWORD,new Object[]{password,user_id})>0?true:false;
    }
}
