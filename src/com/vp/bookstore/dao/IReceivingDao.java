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
     * 功能：返回收货地址的所有信息
     * 传入：user_id
     * return List<Receiving>
     */
    List<Receiving> findReceivingbyid(int user_id);

    /**
     * 功能：查看是否有默认地址
     * 传入：user_id,status
     * return List<Receiving>
     */
    Receiving findReceivingbyidandstatus(int user_id,int status);

    /**
     * 功能：根据收藏地址receiving_id查看
     * 传入：user_id,status
     * return List<Receiving>
     */
    Receiving findReceivingbyreceivingid(int receiving_id);

    /**
     * 功能：添加收货地址信息
     * 传入：Receiving
     * return Boolean
     */
    Boolean addreceiving(Receiving receiving);

    /**
     * 功能：修改收货地址信息
     * 传入：Receiving
     * return Boolean
     */
    Boolean updatereceiving(Receiving receiving);

    /**
     * 功能：删除收货地址信息
     * 传入：receiving_id
     * return Boolean
     */
    Boolean deletereceiving(int receiving_id);
}
