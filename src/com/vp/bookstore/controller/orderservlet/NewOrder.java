package com.vp.bookstore.controller.orderservlet;

import com.alibaba.fastjson.JSON;
import com.vp.bookstore.dao.IReceivingDao;
import com.vp.bookstore.dao.impl.IReceivingDaoImpl;
import com.vp.bookstore.dto.OrderListDto;
import com.vp.bookstore.dto.ShoppingCartDto;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Author: duYang
 * @Date: 2019/12/30 10:37
 * @Version: 1.0
 */
@WebServlet(value = "/NewOrder")
public class NewOrder extends HttpServlet {
    private static IReceivingDao receivingDao=new IReceivingDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String operation = req.getParameter("operation");
        if (operation.equals("bookDetailBtn")){
            bookDetailBtn(req,resp);
        }
        else if (operation.equals("bookCartBtn")){
            bookCartBtn(req,resp);
        }
    }

    //商品详细页面的购买按钮
    protected void bookDetailBtn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String data = req.getParameter("data");
        OrderListDto orderListDto=new OrderListDto();
        List<ShoppingCartDto> shoppingCartDtos = JSON.parseArray(data, ShoppingCartDto.class);
        double sumPrice=0;
        for (ShoppingCartDto shopping : shoppingCartDtos) {
            //double类型容易出现.00000000001的情况
            shopping.setBook_discountprice(Double.parseDouble(new DecimalFormat("#.##").format(shopping.getBook_discountprice())));
            sumPrice+=shopping.getBook_discountprice()*shopping.getBook_count();
        }
        orderListDto.setSumPrice(Double.parseDouble(new DecimalFormat("#.##").format(sumPrice)));
        orderListDto.setOrderList(shoppingCartDtos);
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo)session.getAttribute("userInfo");
        orderListDto.setReceiving(receivingDao.findDefaultReceiving(userInfo.getUser_id()));
        userInfo.setOrderListDto(orderListDto);
        session.setAttribute("userInfo",userInfo);
    }

    //购物车页面的购买按钮
    protected void bookCartBtn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        Map<Integer, ShoppingCartDto> cartList = userInfo.getCartList();
        //存放用户关于临时订单的全部数据
        OrderListDto orderListDto=new OrderListDto();
        //存放订单书籍的数据
        List<ShoppingCartDto> orderList=new ArrayList<>();
        //计算总价
        double sumPrice=0;
        for (String book_id : parameterMap.get("data")) {
            int id=Integer.parseInt(book_id);
            ShoppingCartDto shoppingCartDto = cartList.get(id);
            shoppingCartDto.setBook_discountprice(Double.parseDouble(new DecimalFormat("#.##").format(shoppingCartDto.getBook_discountprice())));
            sumPrice+=shoppingCartDto.getBook_discountprice()*shoppingCartDto.getBook_count();
            orderList.add(shoppingCartDto);
        }
        orderListDto.setSumPrice(Double.parseDouble(new DecimalFormat("#.##").format(sumPrice)));
        orderListDto.setOrderList(orderList);
        orderListDto.setReceiving(receivingDao.findDefaultReceiving(userInfo.getUser_id()));
        userInfo.setOrderListDto(orderListDto);
        session.setAttribute("userInfo",userInfo);
    }
}
