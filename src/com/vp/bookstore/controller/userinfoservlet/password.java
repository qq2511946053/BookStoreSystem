package com.vp.bookstore.controller.userinfoservlet;

import com.vp.bookstore.dao.IProtectInfoDao;
import com.vp.bookstore.dao.IUserInfoDao;
import com.vp.bookstore.dao.impl.IProtectInfoDaoImpl;
import com.vp.bookstore.dao.impl.IUserInfoDaoImpl;
import com.vp.bookstore.pojo.Protect;
import com.vp.bookstore.pojo.UserInfo;
import com.vp.bookstore.util.VerifyCode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/password")
public class password extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setContentType("text/html; charset=UTF-8");
        String phone = request.getParameter("phone");
        String yanzhengma = request.getParameter("yanzhengma");
        UserInfo userInfo=new UserInfo();
        userInfo.setUser_phone(phone);
        IUserInfoDao infoDao=new IUserInfoDaoImpl();
        IProtectInfoDao iProtectInfoDao=new IProtectInfoDaoImpl();
        UserInfo userInfo1 = infoDao.judgeUserAccount(userInfo);

        if(userInfo1!=null){
            String code=JudgeValiImage.code;
            if(yanzhengma.toLowerCase().equals(code.toLowerCase())){
                List<Protect> lists =iProtectInfoDao.findByProtectId(userInfo1.getUser_id());
                System.out.println(lists.toString());
                request.getSession().setAttribute("problem",lists);
                request.getRequestDispatcher("/reception/password_2.jsp").forward(request,response);
            }else {
                request.setAttribute("msg","验证码错误！！！请重新输入...");
                request.getRequestDispatcher("/reception/password_1.jsp").forward(request,response);
            }
        }else {

            request.setAttribute("msg", "用户名错误！！！请重新输入手机号...");
            request.getRequestDispatcher("/reception/password_1.jsp").forward(request, response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
