package com.vp.bookstore.constans;

import com.vp.bookstore.pojo.UserInfo;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/23 14:01
 * @Version: 1.0
 */
public class UserInfoSql {
    public static final String JUDGEUSERINFOBYUSERNAME="select * from userinfo where user_phone=?";
    public static final String JUDGEUSERINFOBYEMAIL="select * from userinfo where user_email=?";
    public static final String JUDGEUSERINFOBYQQ="select * from userinfo where user_qq=?";
    public static final String JUDGEUSERINFOBYNICKNAME="select * from userinfo where user_nickname=?";
    public static final String JUDGEUSERINFO="select * from userinfo where user_phone=?  and user_password=?";
    public static final String JUDGEUSERINFOBYID="select*from userinfo where user_id=?";
    public static final String UPDATEUSERPASSWORD="update userinfo set user_password=? where user_id=? ";
    /**
     * 功能：动态添加用户
     * 传入：userinfo
     * return sql，object[]
     */
    public static List<Object> adduserinfosql(UserInfo userInfo){
        StringBuilder sb=new StringBuilder("insert into userinfo(user_nickname,user_phone,user_password,user_qq,user_email,user_address");
        StringBuilder sb1=new StringBuilder(") values (?,?,?,?,?,?");
        List<Object> list=new ArrayList<Object>();
        list.add(userInfo.getUser_nickname());
        list.add(userInfo.getUser_phone());
        list.add(userInfo.getUser_password());
        list.add(userInfo.getUser_qq());
        list.add(userInfo.getUser_email());
        list.add(userInfo.getUser_address());
        if(userInfo.getUser_school()!=null){
            sb.append(",user_school");
            sb1.append(",?");
            list.add(userInfo.getUser_school());
        }

        if(null!=userInfo.getUser_age()){
            sb.append(",user_age");
            sb1.append(",?");
            list.add(userInfo.getUser_age());
        }
        if(userInfo.getUser_school_class()!=null){
            sb.append(",user_school_class");
            sb1.append(",?");
            list.add(userInfo.getUser_school_class());
        }
        if(!userInfo.getUser_img().equals("")){
            sb.append(",user_img");
            sb1.append(",?");
            list.add(userInfo.getUser_img());
        }
        if(userInfo.getUser_identity()!=null){
            sb.append(",user_identity");
            sb1.append(",?");
            list.add(userInfo.getUser_identity());
        }
        if(userInfo.getUser_realname()!=null){
            sb.append(",user_realname");
            sb1.append(",?");
            list.add(userInfo.getUser_realname());
        }
        if(userInfo.getUser_gender()!=null){
            sb.append(",user_gender");
            sb1.append(",?");
            list.add(userInfo.getUser_gender());
        }
        if(!userInfo.getUser_hobby().equals("")){
            sb.append(",user_hobby");
            sb1.append(",?");
            list.add(userInfo.getUser_hobby());
        }
        if(!userInfo.getUser_introduce().equals("")){
            sb.append(",user_introduce");
            sb1.append(",?");
            list.add(userInfo.getUser_introduce());
        }
        if(userInfo.getUser_region()!=null){
            sb.append(",user_region");
            sb1.append(",?");
            list.add(userInfo.getUser_region());
        }
        sb1.append(")");
        sb.append(sb1);
        int size = list.size();
        Object[]objects=new Object[size];
        for (int i=0;i<size;i++){
            objects[i]=list.get(i);
        }


        System.out.println(sb.toString());
        List<Object> list2=new ArrayList<Object>();
        list2.add(sb.toString());
        list2.add(objects);
        return list2;
    }

    /**
     * 功能：动态修改用户
     * 传入：userinfo
     * return sql，object[]
     */
    public static List<Object> updateuserinfosql(UserInfo userInfo){
        StringBuilder sb=new StringBuilder("update userinfo set user_nickname=? , user_identity=? , user_realname=? , user_phone=? ");
        List<Object> list=new ArrayList<Object>();
        list.add(userInfo.getUser_nickname());
        list.add(userInfo.getUser_identity());
        list.add(userInfo.getUser_realname());
        list.add(userInfo.getUser_phone());
        if(!userInfo.getUser_img().equals("")){
            sb.append(" , user_img=? ");
            list.add(userInfo.getUser_img());
        }

        if(userInfo.getUser_gender().equals("")||userInfo.getUser_gender()!=null){
            sb.append(" , user_gender=? ");
            list.add(userInfo.getUser_gender());
        }
        if(userInfo.getUser_email()!=null){
            sb.append(" , user_email=? ");
            list.add(userInfo.getUser_email());
        }
        if(userInfo.getUser_qq()!=null){
            sb.append(" , user_qq=? ");
            list.add(userInfo.getUser_qq());
        }

        if(userInfo.getUser_school()!=null){
            sb.append(" , user_school=? ");
            list.add(userInfo.getUser_school());
        }

        if(userInfo.getUser_school_class()!=null){
            sb.append(" , user_school_class=? ");
            list.add(userInfo.getUser_school_class());
        }

        if(userInfo.getUser_region()!=null){
            sb.append(", user_region=? ");
            list.add(userInfo.getUser_region());
        }

        if(!userInfo.getUser_hobby().equals("")){
            sb.append(" , user_hobby=? ");

            list.add(userInfo.getUser_hobby());
        }
        if(!userInfo.getUser_introduce().equals("")){
            sb.append(" , user_introduce=? ");

            list.add(userInfo.getUser_introduce());
        }
        sb.append(" where user_id=?");
        list.add(userInfo.getUser_id());
        int size = list.size();
        Object[]objects=new Object[size];
        for (int i=0;i<size;i++){
            objects[i]=list.get(i);
        }
        System.out.println(sb.toString());
        List<Object> list2=new ArrayList<Object>();
        list2.add(sb.toString());
        list2.add(objects);
        return list2;

    }

}
