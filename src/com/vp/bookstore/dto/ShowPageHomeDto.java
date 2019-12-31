package com.vp.bookstore.dto;

/**
 * @Author: duYang
 * @Date: 2019/12/23 19:32
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.BookInfo;
import lombok.Data;

import java.util.List;

/**
 * 存放首页的数据
 */
@Data
public class ShowPageHomeDto {
    private List<BookInfo> heatRanking;
    private List<BookInfo> newBookRanking;
    private List<BookInfo> primarySchoolBook;
    private List<BookInfo> middleSchoolBook;
    private List<BookInfo> highSchoolBook;
    private List<BookInfo> educationBook;//教育书
    private List<BookInfo> referenceBook;//工具书
    private List<BookInfo> periodicalBook;//期刊书
    private List<BookInfo> disCountBookRanking;
}
