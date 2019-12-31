package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:42
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.Receiving;

import java.util.List;

/**
 * 收获地址表的接口
 */
public interface IReceivingDao {
    /**
     * 功能：查询用户的默认收获地址
     * 传入：user_Id
     * return Receiving
     */
    Receiving findDefaultReceiving(int id);

    /**
     * 功能：查询用户的收获地址
     * 传入：user_Id
     * return list Receiving
     */
    List<Receiving> findAllReceiving(int id);

    /**
     * 功能：根据receiving_id查找数据
     * 传入：receiving_id
     * return list Receiving
     */
    Receiving findById(int id);
}
