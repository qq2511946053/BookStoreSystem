package com.vp.bookstore.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * DruidPool工具类
 * 阿里云连接池（单例模式）
 */
public class DruidPollUtil {
    private static DataSource dataSource;
    private static DruidPollUtil druidPollUtil=new DruidPollUtil();

    private DruidPollUtil(){
        InputStream resource = DruidPollUtil.class.getClassLoader().getResourceAsStream("BookStoreSystem.properties");
        Properties properties=new Properties();
        try {
            properties.load(resource);
            dataSource = DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

}
