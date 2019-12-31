package com.vp.bookstore.controller;

import com.vp.bookstore.dao.IBookTypeDao;
import com.vp.bookstore.dao.impl.IBookTypeDaoImpl;
import com.vp.bookstore.dto.BookListDto;
import com.vp.bookstore.service.BookListService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: duYang
 * @Date: 2019/12/24 12:03
 * @Version: 1.0
 */

/**
 * 显示书的分页功能
 */
@WebServlet(value = "/ShowBookList")
public class ShowBookList extends HttpServlet {
    private IBookTypeDao bookTypeDao=new IBookTypeDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String typename = req.getParameter("typename");
        String typedetailname = req.getParameter("typedetailname");
        String discount = req.getParameter("discount");
        String sortRule = req.getParameter("sortRule");
        String fuzzyField = req.getParameter("fuzzyField");
        int pageindex;
        String index=req.getParameter("index");
        if (index==null||index.equals("")) pageindex=1;
        else pageindex=Integer.parseInt(index);
        BookListDto data= BookListService.getData(typename,typedetailname,discount,pageindex,sortRule,fuzzyField);
        req.setAttribute("data", data);
        req.getRequestDispatcher("reception/booklist.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
