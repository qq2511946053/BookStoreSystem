package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:43
 * @Version: 1.0
 */

import com.vp.bookstore.dto.ShoppingCartDto;

/**
 * 购物车表的接口
 */
public interface IShoppingDao {
    /**
     * 功能：返回购物车Deo所需的数据
     * 传入：book_id
     * return ShoppingCartDto
     */
    ShoppingCartDto findByID(int book_id);
}
