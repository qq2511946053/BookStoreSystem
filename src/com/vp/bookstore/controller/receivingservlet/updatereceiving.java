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

@WebServlet(value = "/addreceiving")
public class updatereceiving extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html;charset=utf-8");
        IReceivingDao iReceivingDao=new IReceivingDaoImpl();
        Receiving receiving=new Receiving();
        String s_province = request.getParameter("s_province");
        String s_city = request.getParameter("s_city");
        String s_county = request.getParameter("s_county");
        String receiving_address = request.getParameter("receiving_address");
        String postalcode = request.getParameter("postalcode");
        String receiving_name = request.getParameter("receiving_name");
        String receiving_phone = request.getParameter("receiving_phone");
        String status = request.getParameter("status");
        int user_id = Integer.parseInt(request.getParameter("user_id"));


        receiving.setReceiving_region(s_province+s_city+s_county);
        receiving.setReceiving_address(receiving_address);
        receiving.setPostalcode(postalcode);
        receiving.setReceiving_name(receiving_name);
        receiving.setReceiving_phone(receiving_phone);

            receiving.setUser_id(user_id);

            if (status == null) receiving.setStatus(0);
            else {
                receiving.setStatus(1);
                Receiving receiving1 = iReceivingDao.findReceivingbyidandstatus(user_id, receiving.getStatus());
                if(receiving1!=null) {
                    receiving1.setStatus(0);
                     iReceivingDao.updatereceiving(receiving1);

                }
            }

        if(request.getParameter("receiving_id")==null) {
            if (iReceivingDao.addreceiving(receiving)) request.setAttribute("msg", "添加成功！！！");
            else request.setAttribute("msg", "添加失败！！！");


        }else {
            int receiving_id = Integer.parseInt(request.getParameter("receiving_id"));
            receiving.setReceiving_id(receiving_id);
            if(iReceivingDao.updatereceiving(receiving))request.setAttribute("msg", "修改成功！！！");
            else request.setAttribute("msg", "修改失败！！！");
        }

        request.getRequestDispatcher("/findreceiving?user_id="+user_id).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
