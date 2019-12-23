package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:01
 * @Version: 1.0
 */
public class UserInfoSql {
    public static final String JUDGEUSERINFOBYUSERNAME="select * from userinfo where phone=? or email=? or qq=?";
    public static final String JUDGEUSERINFO="select * from userinfo where phone=? or email=? or qq=? and pwd=?";
}
