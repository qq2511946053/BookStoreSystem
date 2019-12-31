package com.vp.bookstore.controller.commentservlet;

import com.vp.bookstore.dao.ICommentDao;
import com.vp.bookstore.dao.impl.ICommentDaoImpl;
import com.vp.bookstore.pojo.Comment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/addcommentservlet")
public class addcommentservlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter pw=response.getWriter();
        int user_id=Integer.parseInt(request.getParameter("user_id"));
        int book_id=Integer.parseInt(request.getParameter("book_id"));
        String comment_content=request.getParameter("comment_content");
        ICommentDao iCommentDao = new ICommentDaoImpl();
        if(comment_content!=null) {
            if (iCommentDao.addComment(user_id, book_id, comment_content))
                pw.print(true);
            else pw.print(false);
        }else {
            Comment comment = iCommentDao.findCommentBYuseridandbookid(user_id, book_id);
            System.out.println(comment.getComment_content());
            if(comment!=null) pw.print(comment.getComment_content());
            else pw.print(false);
        }

    }
}
