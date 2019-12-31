package com.vp.bookstore.controller.commentservlet;

import com.vp.bookstore.dao.ICommentDao;
import com.vp.bookstore.dao.impl.ICommentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/deletecomment")
public class deletecomment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int user_id=Integer.parseInt(request.getParameter("user_id"));
        int book_id=Integer.parseInt(request.getParameter("book_id"));
        ICommentDao iCommentDao = new ICommentDaoImpl();
            iCommentDao.deleteComment(user_id, book_id);
            request.getRequestDispatcher("/reception/comment.jsp").forward(request,response);

    }
}
