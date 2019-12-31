package com.vp.bookstore.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页
 */
@Data
public class PageDto<T> {
    private Integer dataCount;
    //总页数
    private Integer totalCount;
    //当前页数
    private Integer pageIndex;
    //是否显示前一页,后一页,首页,尾页
    private boolean showPrevious;
    private boolean showNext;
    private boolean showFirstPage;
    private boolean showEndPage;
    //存放数据
    private List<T> list=new ArrayList<>();
    //存放页码的集合
    private List<Integer> pageList=new ArrayList<>();

    public PageDto(){}

    public PageDto(Integer count, Integer index, Integer size){
        this.dataCount=count;
        if (count==0) return;
        // totalCount总页数
        if (count % size == 0) {
            this.totalCount = count / size;
        } else {
            this.totalCount = count / size + 1;
        }
        this.pageIndex=index;
        //是否展示上一页和下一页
        this.showPrevious=(pageIndex==1)?false:true;
        this.showNext=(pageIndex==totalCount)?false:true;
        //放入页码数
        for (int i=-2;i<3;i++){
            if (pageIndex+i>0&&pageIndex+i<=totalCount){
                this.pageList.add(pageIndex+i);
            }
        }
        //是否展示回到首页和尾页
        this.showFirstPage=this.pageList.contains(1)?false:true;
        this.showEndPage=this.pageList.contains(totalCount)?false:true;
    }
}
