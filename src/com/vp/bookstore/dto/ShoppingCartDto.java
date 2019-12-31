package com.vp.bookstore.dto;

import lombok.Data;

/**
 * @Author: duYang
 * @Date: 2019/12/26 11:50
 * @Version: 1.0
 */

/**
 * 购物车信息
 */
@Data
public class ShoppingCartDto {
    private Integer book_id;
    private String book_img;
    private String book_name;
    private Double book_discountprice;
    private Integer book_count=1;

    public ShoppingCartDto(){}

    public ShoppingCartDto(Integer book_id, String book_img, String book_name, Double book_discountprice, Integer book_count) {
        this.book_id = book_id;
        this.book_img = book_img;
        this.book_name = book_name;
        this.book_discountprice = book_discountprice;
        this.book_count = book_count;
    }
}
