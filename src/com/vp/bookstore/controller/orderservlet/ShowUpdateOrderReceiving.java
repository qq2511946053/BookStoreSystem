package com.vp.bookstore.controller.orderservlet;

import com.vp.bookstore.dao.IReceivingDao;
import com.vp.bookstore.dao.impl.IReceivingDaoImpl;
import com.vp.bookstore.pojo.Receiving;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @Author: duYang
 * @Date: 2019/12/30 15:28
 * @Version: 1.0
 */

/**
 * 显示修改订单地址的页面
 */
@WebServlet(value = "/ShowUpdateOrderReceiving")
public class ShowUpdateOrderReceiving extends HttpServlet {
    private static IReceivingDao receivingDao=new IReceivingDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        List<Receiving> allReceiving = receivingDao.findAllReceiving(userInfo.getUser_id());
        req.setAttribute("allReceiving",allReceiving);
        req.getRequestDispatcher("reception/updateorderreceiving.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
