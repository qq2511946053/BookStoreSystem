package com.vp.bookstore.dto;

/**
 * @Author: duYang
 * @Date: 2019/12/30 17:03
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.Receiving;
import lombok.Data;

import java.util.List;

/**
 * 存放订单数据的临时信息
 */
@Data
public class OrderListDto {
    //订单总价
    private double sumPrice;
    //订单数据
    private List<ShoppingCartDto> orderList;
    //订单地址
    private Receiving receiving;
}
