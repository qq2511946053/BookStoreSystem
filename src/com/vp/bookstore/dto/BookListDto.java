package com.vp.bookstore.dto;

/**
 * @Author: duYang
 * @Date: 2019/12/24 20:27
 * @Version: 1.0
 */

import com.vp.bookstore.pojo.BookType;
import lombok.Data;

import java.util.List;

/**
 * 存放商品列表的信息
 */
@Data
public class BookListDto {
    private String typeName;
    private String typeDetailName;
    private String discountInfo;
    private List<BookType> bookTypeNames;
    private List<BookType> bookTypeDetailNames;
    private PageDto pageDataList;
    private String sortRule;//排序规则
    private String fuzzyField;//字段名
}
