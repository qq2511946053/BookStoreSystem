package com.vp.bookstore.pojo;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:24
 * @Version: 1.0
 */

import lombok.Data;

import java.sql.Timestamp;

/**
 * 书籍信息表
 */
@Data
public class BookInfo implements java.io.Serializable{
    /** 版本号 */
    private static final long serialVersionUID = -8977923589642342968L;

    /* This code was generated by TableGo tools, mark 1 begin. */

    /** 书籍ID */
    private Integer book_id;

    /** 书籍名称 */
    private String book_name;

    /** 书的价格 */
    private Double book_price;

    /** 折扣等级 */
    private Double book_discount;

    /** 书折扣价 */
    private Double book_discountprice;

    /** 书的图片 */
    private String book_img;

    /** 书的详情 */
    private String book_details;

    /** 书的状态1代表通过 */
    private Integer book_status;

    /** 书的类型 */
    private Integer book_typeid;

    /** 适合班级 */
    private Integer book_fitclass;

    /** 书的作者 */
    private String book_auth;

    /** 上传用户 */
    private Integer userid;

    /** 是否可以兑换 */
    private Boolean book_isexchange;

    /** 出版社 */
    private String book_press;

    /** 时间 */
    private Timestamp book_date;

    /** 收藏数量 */
    private Integer book_collection;

    /** 售出数量 */
    private Integer book_sell;

    /** 库存 */
    private Integer book_stock;
}
