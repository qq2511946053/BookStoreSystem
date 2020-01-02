package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 10:24
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.UserInfo;

/**
 * 用户表接口
 */
public interface IUserInfoDao {
    /**
     * 功能：判断用户账号密码是否正确
     * 传入：phone or email and password
     * return UserInfo
     */
    UserInfo judgeUserAccount(UserInfo userInfo);

    /**
     * 功能：返回用户信息
     * 传入：user_id
     * return userInfo
     */
    UserInfo findByUserId(int id);

    /**
     * 功能：添加用户
     * 传入：UserInfo
     * return boolean
     */
    boolean insertUserAccount(UserInfo userInfo);

    /**
     * 功能：修改用户信息
     * 传入：UserInfo
     * return boolean
     */
    boolean updateUserAccount(UserInfo userInfo);

    /**
     * 功能：修改密码
     * 传入：user_id，password
     * return boolean
     */
    boolean updateUserpassword(int user_id,String password);
}
