package com.vp.bookstore.controller.commentservlet;

import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.dao.ICommentDao;
import com.vp.bookstore.dao.impl.IBookInfoDaoImpl;
import com.vp.bookstore.dao.impl.ICommentDaoImpl;
import com.vp.bookstore.pojo.BookInfo;
import com.vp.bookstore.pojo.Comment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/findcomment")
public class findcomment extends HttpServlet {
    private  final static int PAGESIZE=3;
    private static int  pagenum=0;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        ICommentDao iCommentDao=new ICommentDaoImpl();
        IBookInfoDao iBookInfoDao=new IBookInfoDaoImpl();
        List<Comment> comments = iCommentDao.findCommentByuserid(user_id);
        List<Object>lists=new ArrayList<Object>();
        List<Object>list=null;
        int index=1;
        if(request.getParameter("index")!=null){
            index=Integer.parseInt(request.getParameter("index"));
        }
        if(comments.size()!=0){
            int size=comments.size();
            if(size%PAGESIZE==0) pagenum=size/PAGESIZE;
            else pagenum=size/PAGESIZE+1;
            System.out.println(pagenum);
            if(index>pagenum)index=pagenum;
            if(index<1)index=1;
            int page=(index-1)*3;

            List<Comment> comments1 = iCommentDao.pagefindCommentByuserid(user_id, page, PAGESIZE);

            for (Comment c:comments1){
                list=new ArrayList<Object>();
                BookInfo byBookId = iBookInfoDao.findByBookId(c.getBook_id());
                list.add(byBookId.getBook_img());
                list.add(byBookId.getBook_name());
                list.add(c.getComment_date());
                list.add(c.getComment_content());
                list.add(c.getBook_id());
                lists.add(list);
            }
        }
        List<Integer> pages=new ArrayList<Integer>();
        pages.add(index);
        pages.add(pagenum);
        request.setAttribute("comment",lists);
        request.setAttribute("pagesize",pages);
        request.getRequestDispatcher("/reception/comment.jsp").forward(request,response);
    }
}
