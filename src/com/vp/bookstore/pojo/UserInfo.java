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
    private Integer userId;

    /** 用户昵称 */
    private String userNickname;

    /** 手机号 */
    private String userPhone;

    /** 邮箱 */
    private String userEmail;

    /** 用户密码 */
    private String userPassword;

    /** 年龄 */
    private Integer userAge;

    /** qq账号 */
    private String userQq;

    /** 学校 */
    private String userSchool;

    /** 学校班级 */
    private String userSchoolClass;

    /** 地区 */
    private String userRegion;

    /** 地址 */
    private String userAddress;

    /** 用户图片 */
    private String userImg;

    /** 用户身份 */
    private String userIdentity;

    /** 真实姓名 */
    private String userRealname;

    /** 性别 */
    private Integer userGender;

    /** 用户爱好 */
    private String userHobby;

    /** 用户介绍 */
    private String userIntroduce;

    /** 用户积分 */
    private Integer userIntegral;

    public UserInfo() {
    }

    public UserInfo(Integer userId, String userNickname, String userPhone, String userEmail, String userPassword, Integer userAge, String userQq, String userSchool, String userSchoolClass, String userRegion, String userAddress, String userImg, String userIdentity, String userRealname, Integer userGender, String userHobby, String userIntroduce, Integer userIntegral) {
        this.userId = userId;
        this.userNickname = userNickname;
        this.userPhone = userPhone;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userAge = userAge;
        this.userQq = userQq;
        this.userSchool = userSchool;
        this.userSchoolClass = userSchoolClass;
        this.userRegion = userRegion;
        this.userAddress = userAddress;
        this.userImg = userImg;
        this.userIdentity = userIdentity;
        this.userRealname = userRealname;
        this.userGender = userGender;
        this.userHobby = userHobby;
        this.userIntroduce = userIntroduce;
        this.userIntegral = userIntegral;
    }
}
