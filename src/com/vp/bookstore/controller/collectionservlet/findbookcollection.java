package com.vp.bookstore.controller.collectionservlet;

import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.dao.ICollectionDao;
import com.vp.bookstore.dao.impl.IBookInfoDaoImpl;
import com.vp.bookstore.dao.impl.ICollectionDaoImpl;
import com.vp.bookstore.pojo.BookInfo;
import com.vp.bookstore.pojo.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/findbookcollection")
public class findbookcollection extends HttpServlet {
    private  final static int PAGESIZE=3;
    private static int  pagenum=0;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICollectionDao iCollectionDao=new ICollectionDaoImpl();
        IBookInfoDao iBookInfoDao=new IBookInfoDaoImpl();
        int user_id =Integer.parseInt(request.getParameter("user_id"));
        List<Collection> collections = iCollectionDao.findcollectionByuserid(user_id);
        List<Object> lists=new ArrayList<Object>();
        List<Object> list=null;
        int index=1;
        if(request.getParameter("index")!=null){
            index=Integer.parseInt(request.getParameter("index"));
        }
        if(collections.size()!=0){
            int size=collections.size();
            if(size%PAGESIZE==0) pagenum=size/PAGESIZE;
            else pagenum=size/PAGESIZE+1;
            System.out.println(pagenum);
            if(index>pagenum)index=pagenum;
            if(index<1)index=1;
            int page=(index-1)*3;
            List<Collection> collections1 = iCollectionDao.pagefindcollectionByuserid(user_id, page, PAGESIZE);

            for (Collection collection:collections1){
                list=new ArrayList<Object>();

                BookInfo byBookId = iBookInfoDao.findByBookId(collection.getBook_id());

                    list.add(byBookId.getBook_img());
                    list.add(byBookId.getBook_name());
                    list.add(byBookId.getBook_discountprice());
                    list.add(byBookId.getBook_id());
                    lists.add(list);

            }
        }
        List<Integer> pages=new ArrayList<Integer>();
        pages.add(index);
        pages.add(pagenum);
        System.out.println(pages.toString());
        request.setAttribute("collection",lists);
        request.setAttribute("pagesize",pages);
        request.getRequestDispatcher("/reception/collection.jsp").forward(request,response);
    }
}
