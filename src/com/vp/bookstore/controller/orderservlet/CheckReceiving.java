package com.vp.bookstore.controller.orderservlet;

import com.vp.bookstore.dao.IReceivingDao;
import com.vp.bookstore.dao.impl.IReceivingDaoImpl;
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
 * @Date: 2019/12/30 17:53
 * @Version: 1.0
 */

/**
 * 切换收获地址
 */
@WebServlet(value = "/CheckReceiving")
public class CheckReceiving extends HttpServlet {
    private IReceivingDao receivingDao=new IReceivingDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String receiving_id = req.getParameter("receiving_id");
        int id=Integer.parseInt(receiving_id);
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        OrderListDto orderListDto = userInfo.getOrderListDto();
        orderListDto.setReceiving(receivingDao.findById(id));
        userInfo.setOrderListDto(orderListDto);
        session.setAttribute("userInfo",userInfo);
    }
}
