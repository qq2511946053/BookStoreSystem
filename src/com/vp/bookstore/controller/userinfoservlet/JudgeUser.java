package com.vp.bookstore.controller.userinfoservlet;

import com.vp.bookstore.dao.IUserInfoDao;
import com.vp.bookstore.dao.impl.IUserInfoDaoImpl;
import com.vp.bookstore.pojo.UserInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: duYang
 * @Date: 2019/12/19 15:10
 * @Version: 1.0
 */

/**
 * 判断用户接口
 */
@WebServlet("/userinfoservlet/JudgeUser")
public class JudgeUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        IUserInfoDao infoDao=new IUserInfoDaoImpl();
        UserInfo userInfo=new UserInfo();
        String userid = req.getParameter("userid");
        String pwd=req.getParameter("pwd");
        System.out.println(userid);
        System.out.println(pwd);
        Cookie cookie=new Cookie("username",userid);

        Cookie cookie1=new Cookie("pwd",pwd);
        cookie.setMaxAge(60*60*24);
        cookie.setPath("/");
        cookie1.setMaxAge(60*60*24);

        cookie1.setPath("/");
        resp.addCookie(cookie);
        resp.addCookie(cookie1);
        if(userid!=null&&pwd==null){
           userInfo.setUserPhone(userid);
           userInfo.setUserEmail(userid);
           userInfo.setUserQq(userid);
            UserInfo userInfo1 = infoDao.judgeUserAccount(userInfo);
            if(userInfo1==null)out.print(false);
            else out.print(true);
        }
        if(userid!=null&&pwd!=null){
            userInfo.setUserPhone(userid);
            userInfo.setUserEmail(userid);
            userInfo.setUserQq(userid);
            userInfo.setUserQq(pwd);
            UserInfo userInfo1 = infoDao.judgeUserAccount(userInfo);
            if(userInfo1==null)out.print(false);
            else {
               req.getSession().setAttribute("userInfo",userInfo1);
               out.print(true);
            }
        }


    }
}
