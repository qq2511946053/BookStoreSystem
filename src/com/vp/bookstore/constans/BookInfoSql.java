package com.vp.bookstore.constans;

/**
 * @Author: duYang
 * @Date: 2019/12/23 13:59
 * @Version: 1.0
 */

/**
 * 书籍表的Sql语句
 */
public class BookInfoSql {
    public static final String getBookCount="select count(1) from bookinfo";
    public static final String findByBookId="select book_id,book_name,book_price,book_discountprice,book_discount,book_img,book_stock,book_details,book_sell from bookinfo where book_id=?";
    public static final String findHeatRanking="select book_id,book_name,book_price,book_discountprice,book_img,book_discount from bookinfo where book_status=1 order by book_sell desc limit 0,?";
    public static final String findNewBookRanking="select book_id,book_name,book_discountprice,book_img,book_sell,book_collection from bookinfo where book_status=1 order by book_date desc limit 0,?";
    public static final String findDisCountBookRanking="select book_id,book_name,book_discountprice,book_price,book_img from bookinfo where book_status=1 order by book_discount limit 0,?";
    public static final String findBookTypeRanking="select book_id,book_name,book_discountprice,book_img,book_collection,book_sell from bookinfo where book_status=1 and book_typeid in (select booktype_id from booktype where booktype_name=?) order by book_collection+book_sell desc limit 0,?";
    public static final String findFitClassRanking="select book_id,book_name,book_discountprice,book_img,book_collection,book_sell from bookinfo where book_status=1 and book_fitclass BETWEEN ? and ? order by book_collection+book_sell desc limit 0,?";
    public static final String findLimitRanking="select book_id,book_name,book_img,book_price,book_discountprice from bookinfo limit ?,?";
    public static final String updateBookStock="update bookinfo SET book_stock=book_stock-? where book_id=?";
    public static final String FINDBYBOOKID="select*from bookinfo where book_id=?";
}
