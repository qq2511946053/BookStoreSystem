package com.vp.bookstore.controller.orderservlet;

import com.vp.bookstore.dao.IBookInfoDao;
import com.vp.bookstore.dao.IOrderDao;
import com.vp.bookstore.dao.IOrderDetailDao;
import com.vp.bookstore.dao.impl.IBookInfoDaoImpl;
import com.vp.bookstore.dao.impl.IOrderDaoImpl;
import com.vp.bookstore.dao.impl.IOrderDetailDaoImpl;
import com.vp.bookstore.pojo.BookInfo;
import com.vp.bookstore.pojo.Order;
import com.vp.bookstore.pojo.OrderDetail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/orderservlet/findorder")
public class findorder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0,order_id=0;
        String Sid =request.getParameter("user_id");
        String Sorder_id = request.getParameter("order_id");
        int yemian=Integer.parseInt(request.getParameter("yemian"));
        if(Sid!=null){
            id=Integer.parseInt(Sid);
        }
        if(Sorder_id!=null){
            order_id=Integer.parseInt(Sorder_id);
        }
        System.out.println(id);
        System.out.println(order_id);
        IOrderDao iOrderDao = new IOrderDaoImpl();
        IOrderDetailDao iOrderDetailDao = new IOrderDetailDaoImpl();
        IBookInfoDao iBookInfoDao = new IBookInfoDaoImpl();
        List<Object> lists = new ArrayList<Object>();
        List<Object> list = null;
        Order first=null;
        List<Order> order=null;
        if(request.getParameter("status")==null) {
            order = iOrderDao.findOrder(id);
        }else {
            int status=Integer.parseInt(request.getParameter("status"));
            if(status==3) {
                order = iOrderDao.findOrderbyidandstatus(id,status);
            }
            if(status==123){
                order = iOrderDao.findOrderbyidandstatusyizhifu(id);
            }
        }
            if (order.size() != 0) {
                if (id != 0 && order_id == 0) {
                    first = order.get(0);
                } else if (id != 0 && order_id != 0) {
                    first = iOrderDao.findOrderByOrderId(order_id);
                }
                if (first != null) {
                    List<OrderDetail> orderDetail = iOrderDetailDao.findOrderDetail(first.getOrder_id());
                    for (OrderDetail od : orderDetail) {
                        list = new ArrayList<Object>();
                        BookInfo bookInfo = iBookInfoDao.findByBookId(od.getBook_id());
                        list.add(bookInfo.getBook_img());//0.照片路径
                        list.add(bookInfo.getBook_name());//1.书籍名称
                        list.add(first.getOrder_date().toString().substring(0, 10));//2.购买时间
                        list.add(od.getBook_number());//3.购买数量
                        switch (first.getOrder_status()) {//4.支付状态
                            case 0:
                                list.add("未支付");
                                break;
                            case 1:
                                list.add("未发货");
                                break;
                            case 2:
                                list.add("未到货");
                                break;
                            case 3:
                                list.add("已到货");
                                break;
                            default:
                                break;
                        }
                        list.add(bookInfo.getBook_discountprice() * od.getBook_number());//5.支付总价
                        list.add(first.getOrder_id());//6.订单id
                        list.add(od.getBook_id());//7.书籍id
                        list.add(new Double(Math.floor(Double.parseDouble(list.get(5).toString())/10)).intValue());//8.获得积分
                        list.add(first.getIntegral());//9.总积分



                        lists.add(list);
                    }
                }
            }

        request.setAttribute("MyOrdernum", order);
        request.setAttribute("MyOrder", lists);
        switch (yemian){
            case 0: request.getRequestDispatcher("/reception/MyOrder.jsp").forward(request, response);
                break;
            case 1:request.getRequestDispatcher("/reception/Bill.jsp").forward(request, response);
                break;
            case 2:request.getRequestDispatcher("/reception/bought.jsp").forward(request, response);
                break;
            case 3:request.getRequestDispatcher("/reception/integral.jsp").forward(request, response);
                break;
            case 4:request.getRequestDispatcher("/reception/exchange.jsp").forward(request, response);
                break;
            default:break;
        }

        }

}
