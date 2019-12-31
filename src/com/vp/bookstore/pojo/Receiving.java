package com.vp.bookstore.pojo;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:42
 * @Version: 1.0
 */

import lombok.Data;

/**
 * 收货地址表
 */
@Data
public class Receiving implements java.io.Serializable{
    private static final long serialVersionUID = -3381312015282731585L;


    /** 收货地址ID */
    private Integer receiving_id;

    /** 地区 */
    private String receiving_region;

    /** 地址 */
    private String receiving_address;

    /** 邮政编码 */
    private String postalcode;

    /** 收货人姓名 */
    private String receiving_name;

    /** 收货人手机号 */
    private String receiving_phone;

    /** 关联用户ID */
    private Integer user_id;



}
