package com.vp.bookstore.pojo;

/**
 * @Author: duYang
 * @Date: 2019/12/23 10:24
 * @Version: 1.0
 */

import lombok.Data;

/**
 * 用户信息表
 */
@Data
public class UserInfo implements java.io.Serializable{
    private static final long serialVersionUID = -7592885055310803868L;
    /** userId */
    private Integer user_id;

    /** 用户昵称 */
    private String user_nickname;

    /** 手机号 */
    private String user_phone;

    /** 邮箱 */
    private String user_email;

    /** 用户密码 */
    private String user_password;

    /** 年龄 */
    private Integer user_age;

    /** qq账号 */
    private String user_qq;

    /** 学校 */
    private String user_school;

    /** 学校班级 */
    private String user_school_class;

    /** 地区 */
    private String user_region;

    /** 地址 */
    private String user_address;

    /** 用户图片 */
    private String user_img;

    /** 用户身份 */
    private String user_identity;

    /** 真实姓名 */
    private String user_realname;

    /** 性别 */
    private Integer user_gender;

    /** 用户爱好 */
    private String user_hobby;

    /** 用户介绍 */
    private String user_introduce;

    /** 用户积分 */
    private Integer user_integral;

    public UserInfo() {
    }


}
