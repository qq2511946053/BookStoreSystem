package com.vp.bookstore.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Jdbc工具类
 */
public class TransactionJdbcUtil {
    private static PreparedStatement ps = null;
    private static ResultSet rs = null;

    /**
     * 获取连接
     * 从DruidPool连接池获取对象
     */
    public static Connection getConnection() throws SQLException {
        return DruidPollUtil.getConnection();
    }

    /**
     * 断开式查询
     * 针对增删改操作
     *
     * @return 返回修改行数
     */
    public static int executeNoQuery(String sql, Object[] objects,Connection conn) {
        try {
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i + 1, objects[i]);
            }
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }


    /**
     * 查询表中的数量
     */
    public static int executeCount(String sql, Object[] objects,Connection conn) {
        try {
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i + 1, objects[i]);
            }
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }


    /**
     * 关闭释放资源
     */
    public static void close() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
