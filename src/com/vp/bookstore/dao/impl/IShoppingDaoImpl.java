package com.vp.bookstore.dao.impl;

import com.vp.bookstore.constans.ShoppingSql;
import com.vp.bookstore.dao.IShoppingDao;
import com.vp.bookstore.dto.ShoppingCartDto;
import com.vp.bookstore.util.JdbcUtil;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:52
 * @Version: 1.0
 */
public class IShoppingDaoImpl implements IShoppingDao {
    @Override
    public ShoppingCartDto findByID(int book_id) {
        return JdbcUtil.executeQuery(ShoppingSql.findByID, new Object[]{book_id}, ShoppingCartDto.class);
    }
}
