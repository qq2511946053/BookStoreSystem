package com.vp.bookstore.pojo;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:43
 * @Version: 1.0
 */

import lombok.Data;

/**
 * 购物车表
 */
@Data
public class Shopping implements java.io.Serializable{
    private static final long serialVersionUID = 6335751561261318676L;


    /** 购物车表ID */
    private Integer shopping_id;

    /** bookId */
    private Integer book_id;

    /** userId */
    private Integer user_id;

    /** num */
    private Integer num;

    public Shopping() {
    }


}
