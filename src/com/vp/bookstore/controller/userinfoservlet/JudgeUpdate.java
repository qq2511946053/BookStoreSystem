package com.vp.bookstore.controller.userinfoservlet;

import com.vp.bookstore.dao.IUserInfoDao;
import com.vp.bookstore.dao.impl.IUserInfoDaoImpl;
import com.vp.bookstore.pojo.UserInfo;
import com.vp.bookstore.util.UpLoadImage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 修改用户信息
 */
@WebServlet(value = "/userinfoservlet/JudgeUpdate")
public class JudgeUpdate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Object> list = UpLoadImage.UpLoadImage(request);
        IUserInfoDao iUserInfoDao=new IUserInfoDaoImpl();
        UserInfo userInfo=new UserInfo();
        userInfo.setUser_id(Integer.parseInt(list.get(0).toString()));
        userInfo.setUser_img(list.get(1).toString());
        userInfo.setUser_nickname(list.get(2).toString());
        userInfo.setUser_identity(list.get(3).toString());
        userInfo.setUser_realname(list.get(4).toString());
        userInfo.setUser_gender(list.get(5).toString());
        userInfo.setUser_email(list.get(6).toString());
        userInfo.setUser_phone(list.get(7).toString());
        userInfo.setUser_qq(list.get(8).toString());
        userInfo.setUser_school(list.get(9).toString());
        userInfo.setUser_school_class(list.get(10).toString());
        userInfo.setUser_region(list.get(14).toString()+list.get(15).toString()+list.get(16).toString());
        userInfo.setUser_hobby(list.get(17).toString());
        userInfo.setUser_introduce(list.get(18).toString());

        if(iUserInfoDao.updateUserAccount(userInfo)) {
            UserInfo userInfo1 = iUserInfoDao.findByUserId(userInfo.getUser_id());
            System.out.println(userInfo1.toString());
            request.getSession().setAttribute("userInfo", userInfo1);
            request.setAttribute("msg","保存成功！！！");

        }else {request.setAttribute("msg","保存失败！！！");}
        request.getRequestDispatcher("/reception/Profile.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
