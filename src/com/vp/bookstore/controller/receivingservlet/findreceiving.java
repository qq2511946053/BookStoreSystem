package com.vp.bookstore.controller.receivingservlet;

import com.vp.bookstore.dao.IReceivingDao;
import com.vp.bookstore.dao.impl.IReceivingDaoImpl;
import com.vp.bookstore.pojo.Receiving;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/findreceiving")
public class findreceiving extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IReceivingDao iReceivingDao=new IReceivingDaoImpl();
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        List<Receiving> receivings= iReceivingDao.findReceivingbyid(user_id);
        if(request.getParameter("receiving_id")!=null){
            int receiving_id=Integer.parseInt(request.getParameter("receiving_id"));
            Receiving receiving = iReceivingDao.findReceivingbyreceivingid(receiving_id);
            request.setAttribute("rece",receiving);

        }
            request.setAttribute("receivings", receivings);
            request.getRequestDispatcher("/reception/Shippingaddress.jsp").forward(request, response);

    }
}
