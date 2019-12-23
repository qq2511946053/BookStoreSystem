package com.vp.bookstore.controller.userinfoservlet;

import com.vp.bookstore.util.VerifyCode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/userinfoservlet/ValiImage")
public class JudgeValiImage extends HttpServlet{
    protected static String code=null;
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            //生成图片
            VerifyCode vc = new VerifyCode();
            //将生成的验证码图片存入response实体中
            vc.drawImage(response.getOutputStream());
            //控制浏览器不要缓存验证码图片
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "no-cache");
            //将生成的验证码的文本内容输出到控制台
            code = vc.getCode();

    }
}
