package com.vp.bookstore.controller.orderservlet;

import com.vp.bookstore.dto.OrderListDto;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Author: duYang
 * @Date: 2019/12/27 14:24
 * @Version: 1.0
 */

/**
 * 显示提交的订单的页面
 */
@WebServlet(value = "/ShowSubmissionOrder")
public class ShowSubmissionOrder extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        OrderListDto orderListDto = userInfo.getOrderListDto();
        req.setAttribute("orderListDto",orderListDto);
        req.getRequestDispatcher("reception/submissionorder.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req,resp);
    }

}
