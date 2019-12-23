package com.vp.bookstore.dao;

/**
 * @Author: duYang
 * @Date: 2019/12/23 11:19
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.Log;

/**
 * 日志接口表
 */
public interface ILogInfoDao {
    /**
     * 功能：添加一条系统日志
     * 传入：logInfo
     * return boolean
     */
    boolean insertLog(Log log);
}
