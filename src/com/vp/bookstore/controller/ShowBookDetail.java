package com.vp.bookstore.controller;

import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.dao.impl.IBookInfoDaoImpl;
import com.vp.bookstore.pojo.BookInfo;
import com.vp.bookstore.service.BookDetailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/25 16:04
 * @Version: 1.0
 */

/**
 * 查看书的详细信息
 */
@WebServlet(value = "/ShowBookDetail")
public class ShowBookDetail extends HttpServlet {
    private static IBookInfoDao bookInfoDao=new IBookInfoDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bookid = req.getParameter("bookid");
        BookInfo bookDetail = BookDetailService.getBookDetail(Integer.parseInt(bookid));
        req.setAttribute("bookDetail",bookDetail);
        List<BookInfo> heatRanking = bookInfoDao.findHeatRanking(7);
        req.setAttribute("heatRanking",heatRanking);
        req.getRequestDispatcher("reception/bookdetail.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
