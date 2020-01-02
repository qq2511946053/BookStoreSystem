package com.vp.bookstore.controller.shoppingservlet;

import com.alibaba.fastjson.JSON;
import com.vp.bookstore.dao.IShoppingDao;
import com.vp.bookstore.dao.impl.IShoppingDaoImpl;
import com.vp.bookstore.dto.ShoppingCartDto;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * @Author: duYang
 * @Date: 2019/12/26 14:35
 * @Version: 1.0
 */

/**
 * 加入购物车接口
 */
@WebServlet(value = "/AddShopping")
public class AddShopping extends HttpServlet {
    private static IShoppingDao shoppingDao=new IShoppingDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        String data = req.getParameter("data");
        List<ShoppingCartDto> shoppingCartDtos = JSON.parseArray(data, ShoppingCartDto.class);
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        Map<Integer, ShoppingCartDto> cartList = userInfo.getCartList();
        for (ShoppingCartDto shoppingCartDto : shoppingCartDtos) {
            if (cartList.containsKey(shoppingCartDto.getBook_id())){
                shoppingCartDto.setBook_count(shoppingCartDto.getBook_count()+cartList.get(shoppingCartDto.getBook_id()).getBook_count());
                cartList.put(shoppingCartDto.getBook_id(),shoppingCartDto);
            }
            else{
                cartList.put(shoppingCartDto.getBook_id(),shoppingCartDto);
            }
        }
        userInfo.setCartList(cartList);
        session.setAttribute("userInfo",userInfo);
        PrintWriter writer = resp.getWriter();
        writer.write("success");
    }
}
