package com.vp.bookstore.controller.orderservlet;

import com.alibaba.fastjson.JSON;
import com.vp.bookstore.dto.OrderListDto;
import com.vp.bookstore.pojo.UserInfo;
import com.vp.bookstore.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: duYang
 * @Date: 2019/12/30 18:23
 * @Version: 1.0
 */
@WebServlet(value = "/SubmitOrder")
public class SubmitOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        Map<String,String> resultMap=new HashMap<>();
        System.out.println("正在处理提交订单");
        HttpSession session = req.getSession();
        UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
        OrderListDto orderListDto = userInfo.getOrderListDto();
        PrintWriter writer = resp.getWriter();
        if (orderListDto!=null){
            //订单处理
            OrderService.submitOrder(orderListDto,userInfo.getUser_id());
            resultMap.put("result","success");
            userInfo.setOrderListDto(null);
            session.setAttribute("userInfo",userInfo);
        }
        else{
            resultMap.put("result","出现错误了!");
        }
        writer.write(JSON.toJSONString(resultMap));
    }
}
