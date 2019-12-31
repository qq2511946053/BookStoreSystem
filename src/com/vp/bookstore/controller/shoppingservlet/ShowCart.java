package com.vp.bookstore.controller.shoppingservlet;

import com.vp.bookstore.dto.ShoppingCartDto;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

/**
 * @Author: duYang
 * @Date: 2019/12/26 10:41
 * @Version: 1.0
 */
@WebServlet(value = "/ShowCart")
public class ShowCart extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
        Map<Integer, ShoppingCartDto> cartList = userInfo.getCartList();
        req.setAttribute("cartList",cartList);
        req.getRequestDispatcher("reception/shoppingcart.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
