package com.vp.bookstore.util;

import java.lang.reflect.Field;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Jdbc工具类
 */
public class JdbcUtil {
    private static Connection conn = null;
    private static PreparedStatement ps = null;
    private static ResultSet rs = null;

    /**
     * 获取连接
     * 从DruidPool连接池获取对象
     */
    private static void getConnection() throws SQLException {
        conn = DruidPollUtil.getConnection();
    }

    /**
     * 断开式查询
     * 针对增删改操作
     *
     * @return 返回修改行数
     */
    public static int executeNoQuery(String sql, Object[] objects) {
        try {
            getConnection();
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i + 1, objects[i]);
            }
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return 0;
    }

    /**
     * 非断开式查询
     * 针对查操作
     *
     * @return 返回object单独对象
     */
    public static <T> T executeQuery(String sql, Object[] objects, Class<T> clazz) {
        T t = null;
        try {
            getConnection();
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i + 1, objects[i]);
            }
            rs = ps.executeQuery();
            if (rs.first()) {
                t = clazz.newInstance();
                ResultSetMetaData rsMetaData = rs.getMetaData();
                int columnCount = rsMetaData.getColumnCount();
                for (int i = 1; i <= columnCount; i++) {
                    String columnName = rsMetaData.getColumnName(i);
                    Object object = rs.getObject(columnName);
                    Field field = clazz.getDeclaredField(columnName);
                    field.setAccessible(true);
                    field.set(t, object);
                }
            }
            return t;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return t;
    }

    /**
     * 非断开式查询
     *
     * @return List T 集合
     */
    public static <T> List<T> executeQuerys(String sql, Object[] objects, Class<T> clazz) {
        List<T> list = new ArrayList<>();
        try {
            getConnection();
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i + 1, objects[i]);
            }
            rs = ps.executeQuery();
            while (rs.next()){
                T t = clazz.newInstance();
                ResultSetMetaData rsMetaData = rs.getMetaData();
                int columnCount = rsMetaData.getColumnCount();
                for (int i = 1; i <= columnCount; i++) {
                    String columnName = rsMetaData.getColumnName(i);
                    Object object = rs.getObject(columnName);
                    Field field = clazz.getDeclaredField(columnName);
                    field.setAccessible(true);
                    field.set(t, object);
                }
                list.add(t);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return list;
    }

    /**
     * 查询表中的数量
     */
    public static int executeCount(String sql,Object[] objects){
        try {
            getConnection();
            ps=conn.prepareStatement(sql);
            for (int i = 0; i < objects.length; i++) {
                ps.setObject(i+1,objects[i]);
            }
            rs=ps.executeQuery();
            if (rs.next()){
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            close();
        }
        return 0;
    }


    /**
     * 关闭释放资源
     */
    public static void close() {
        try {
            if (conn != null) conn.close();
            if (ps != null) ps.close();
            if (rs != null) rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
