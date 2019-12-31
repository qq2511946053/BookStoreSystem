package com.vp.bookstore.controller.receivingservlet;

import com.vp.bookstore.dao.IReceivingDao;
import com.vp.bookstore.dao.impl.IReceivingDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/deletereceiving")
public class deletereceiving extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        IReceivingDao iReceivingDao=new IReceivingDaoImpl();
        int receiving_id = Integer.parseInt(request.getParameter("receiving_id"));
        iReceivingDao.deletereceiving(receiving_id);
        response.sendRedirect("/BookStoreSystem_war_exploded/reception/Shippingaddress.jsp");
    }
}
