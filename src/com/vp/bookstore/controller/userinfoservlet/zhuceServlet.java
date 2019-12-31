package com.vp.bookstore.controller.userinfoservlet;

import com.vp.bookstore.dao.IProtectInfoDao;
import com.vp.bookstore.dao.IUserInfoDao;
import com.vp.bookstore.dao.impl.IProtectInfoDaoImpl;
import com.vp.bookstore.dao.impl.IUserInfoDaoImpl;
import com.vp.bookstore.pojo.Protect;
import com.vp.bookstore.pojo.UserInfo;
import com.vp.bookstore.util.UpLoadImage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/userinfoservlet/zhuceServlet")
public class zhuceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Object> list = UpLoadImage.UpLoadImage(request);
        IUserInfoDao userInfoDao=new IUserInfoDaoImpl();
        UserInfo userInfo=new UserInfo();
        Protect protect1=new Protect();
        Protect protect2=new Protect();
        userInfo.setUser_phone(list.get(0).toString());
        userInfo.setUser_password(list.get(1).toString());
        userInfo.setUser_email(list.get(3).toString());
        userInfo.setUser_nickname(list.get(4).toString());
        userInfo.setUser_qq(list.get(5).toString());
        userInfo.setUser_address(list.get(6).toString());
        userInfo.setUser_school(list.get(7).toString());
        if(list.get(8).toString().equals(""))userInfo.setUser_age(null);
        else  userInfo.setUser_age(Integer.parseInt(list.get(8).toString()));
        userInfo.setUser_school_class(list.get(9).toString());
        userInfo.setUser_img(list.get(10).toString());
        userInfo.setUser_identity(list.get(11).toString());
        userInfo.setUser_realname(list.get(12).toString());
        userInfo.setUser_gender(list.get(13).toString());
        userInfo.setUser_hobby(list.get(14).toString());
        userInfo.setUser_introduce(list.get(15).toString());
        userInfo.setUser_region(list.get(16).toString()+list.get(17).toString()+list.get(18).toString());

        
        if(userInfoDao.insertUserAccount(userInfo)){
            IProtectInfoDao protectInfoDao=new IProtectInfoDaoImpl();
            UserInfo userInfo1 = userInfoDao.judgeUserAccount(userInfo);
            Integer user_id = userInfo1.getUser_id();
            protect1.setUser_id(user_id);
            protect1.setProtect_problem(list.get(19).toString());
            protect1.setProtect_answer(list.get(20).toString());
            protect2.setUser_id(user_id);
            protect2.setProtect_problem(list.get(21).toString());
            protect2.setProtect_answer(list.get(22).toString());
            boolean b = protectInfoDao.addProtect(protect1);
            boolean b1 = protectInfoDao.addProtect(protect2);
            if(b==true&&b1==true){
                request.getSession().setAttribute("userInfo",userInfo1);
                request.getRequestDispatcher("/reception/index.jsp").forward(request,response);
            }else {
                request.setAttribute("erro","注册失败，请重新注册！！！");
                request.getRequestDispatcher("/reception/zhuce.jsp").forward(request,response);
            }

        }





    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
