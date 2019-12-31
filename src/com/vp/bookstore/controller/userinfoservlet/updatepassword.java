package com.vp.bookstore.controller.userinfoservlet;

import com.vp.bookstore.dao.IUserInfoDao;
import com.vp.bookstore.dao.impl.IUserInfoDaoImpl;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/updatepassword")
public class updatepassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        String password=request.getParameter("password");
        IUserInfoDao infoDao=new IUserInfoDaoImpl();

        if(infoDao.updateUserpassword(user_id,password)){
            UserInfo userInfo = infoDao.findByUserId(user_id);
            request.getSession().setAttribute("userInfo",userInfo);
            request.getRequestDispatcher("/reception/password_5.jsp").forward(request,response);
        }else {
            request.setAttribute("msg","新密码修改错误！！！");
            request.getRequestDispatcher("/reception/password_4.jsp").forward(request,response);

        }
    }
}
