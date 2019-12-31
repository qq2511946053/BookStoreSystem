package com.vp.bookstore.service;

import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.dao.IBookTypeDao;
import com.vp.bookstore.dao.impl.IBookInfoDaoImpl;
import com.vp.bookstore.dao.impl.IBookTypeDaoImpl;
import com.vp.bookstore.dto.BookListDto;
import com.vp.bookstore.dto.PageDto;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/24 20:29
 * @Version: 1.0
 */
public class BookListService {
    private static IBookTypeDao bookTypeDao=new IBookTypeDaoImpl();
    private static IBookInfoDao bookInfoDao=new IBookInfoDaoImpl();

    public static BookListDto getData(String typeName,String typeDetailName,String discountInfo,int pageIndex,String sortRule,String fuzzyField){
        StringBuilder countSql=new StringBuilder();
        StringBuilder dataSql=new StringBuilder();
        List<Object> countList=new ArrayList<>();
        List<Object> dataList=new ArrayList<>();
        countSql.append("select count(1) from bookinfo where book_status=1");
        dataSql.append("select book_id,book_name,book_img,book_price,book_discountprice from bookinfo where book_status=1");
        BookListDto bookListDto=new BookListDto();
        if (fuzzyField!=null&&!fuzzyField.equals("")){
            bookListDto.setFuzzyField(fuzzyField);
            countSql.append(" and book_name like CONCAT('%',?,'%')");
            dataSql.append(" and book_name like CONCAT('%',?,'%')");
            countList.add(fuzzyField);
            dataList.add(fuzzyField);
        }
        if (typeName!=null&&!typeName.equals("")) {
            if (typeDetailName!=null&&typeDetailName!=""){
                bookListDto.setTypeDetailName(typeDetailName);
                countSql.append(" and book_typeid = (select booktype_id from booktype where booktype_detailname=?)");
                dataSql.append(" and book_typeid = (select booktype_id from booktype where booktype_detailname=?)");
                countList.add(typeDetailName);
                dataList.add(typeDetailName);
            }
            else{
                countSql.append(" and book_typeid in (select booktype_id from booktype where booktype_name=?)");
                dataSql.append(" and book_typeid in (select booktype_id from booktype where booktype_name=?)");
                countList.add(typeName);
                dataList.add(typeName);
            }
            bookListDto.setTypeName(typeName);
            bookListDto.setBookTypeDetailNames(bookTypeDao.findByDetailName(typeName));
        }
        if (discountInfo!=null&&!discountInfo.equals("")) {
            bookListDto.setDiscountInfo(discountInfo);
            countSql.append(" and book_discount BETWEEN ? and ?");
            dataSql.append(" and book_discount BETWEEN ? and ?");
            String[] split = discountInfo.split("-");
            countList.add(Float.parseFloat(split[0])/10);
            countList.add(Float.parseFloat(split[1])/10);
            dataList.add(Float.parseFloat(split[0])/10);
            dataList.add(Float.parseFloat(split[1])/10);
        }
        //排序
        if (sortRule!=null&&!sortRule.equals("")){
            bookListDto.setSortRule(sortRule);
            if (sortRule.equals("sellasc")) dataSql.append(" order by book_sell");
            else if (sortRule.equals("selldesc")) dataSql.append(" order by book_sell desc");
            else if (sortRule.equals("priceasc")) dataSql.append(" order by book_discountprice");
            else if (sortRule.equals("pricedesc")) dataSql.append(" order by book_discountprice desc");
            else if (sortRule.equals("dateasc")) dataSql.append(" order by book_date");
            else if (sortRule.equals("datedesc")) dataSql.append(" order by book_date desc");
        }
        //获得书籍的分类信息
        bookListDto.setBookTypeNames(bookTypeDao.findByAllName());
        int pageSize=20;
        int offSize=(pageIndex-1)*pageSize;
        dataSql.append(" limit ?,?");
        dataList.add(offSize);
        dataList.add(pageSize);
        PageDto pageDataList=new PageDto(bookInfoDao.getBookCount(countSql.toString(),countList),pageIndex,pageSize);
        pageDataList.setList(bookInfoDao.findLimitRanking(dataSql.toString(),dataList));
        bookListDto.setPageDataList(pageDataList);
        return bookListDto;
    }
}
