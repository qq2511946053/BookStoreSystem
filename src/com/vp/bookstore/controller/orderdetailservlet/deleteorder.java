package com.vp.bookstore.controller.orderdetailservlet;

import com.vp.bookstore.dao.IOrderDao;
import com.vp.bookstore.dao.IOrderDetailDao;
import com.vp.bookstore.dao.impl.IOrderDaoImpl;
import com.vp.bookstore.dao.impl.IOrderDetailDaoImpl;
import com.vp.bookstore.pojo.OrderDetail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@WebServlet(value = "/orderdetailservlet/deleteorder")
public class deleteorder extends HttpServlet {
    IOrderDetailDao iOrderDetailDao = new IOrderDetailDaoImpl();
    IOrderDao iOrderDao =new IOrderDaoImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw=response.getWriter();
        Map<String, String[]> map = request.getParameterMap();
        String[]order_ids=map.get("order_ids[]");
        String[]book_ids=map.get("book_ids[]");
        boolean falg=true;
        for (int i=0;i<order_ids.length;i++){
            if(!iOrderDetailDao.deleteOrderDetailBybooid(Integer.parseInt(order_ids[i].toString()),Integer.parseInt(book_ids[i].toString())))
            falg=false;
        }
        List<OrderDetail> orderDetail = iOrderDetailDao.findOrderDetail(Integer.parseInt(order_ids[0].toString()));
        if(orderDetail.size()==0){
            if(!iOrderDao.deleteOrderDetailBybooid(Integer.parseInt(order_ids[0].toString())))
             falg=false;
        }
        pw.print(falg);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int order_id = Integer.parseInt(request.getParameter("order_id"));
            int book_id = Integer.parseInt(request.getParameter("book_id"));
            if(request.getParameter("yemian")!=null)
            if(iOrderDetailDao.deleteOrderDetailBybooid(order_id, book_id)) {
                List<OrderDetail> orderDetail = iOrderDetailDao.findOrderDetail(order_id);
                if(orderDetail.size()==0){
                    iOrderDao.deleteOrderDetailBybooid(order_id);
                }
            }
            if(request.getParameter("yemian")==null)
            response.sendRedirect("/BookStoreSystem_war_exploded/reception/MyOrder.jsp");
            else  response.sendRedirect("/BookStoreSystem_war_exploded/reception/bought.jsp");

    }
}
