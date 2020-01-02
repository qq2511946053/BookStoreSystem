<%@ page import="java.util.*" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String basePaths = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"reception"+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆</title>
<link href="<%=basePaths%>css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="<%=basePaths%>js/jquery-1.7.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#phone").change(function () {

                var phone = $("#phone").val();

                if(phone.trim()==""){
                    $(".phoneerro").html("手机号不能为空！！！").css("color","red");
                }else {
                    if(/^1[3456789]\d{9}$/.test(phone)){

                    }else {
                        $(".phoneerro").html("手机号格式错误！！！").css("color","red");
                    }
                }
            });
        });
    </script>
</head>

<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" ></a></div>
       

   </div>
   <div class="zhuce_c">
        <div class="password_t">
             <span class="fr_pw"><a href="" >如何找回密码</a></span><span class="zhmm">找回密码</span>
        </div>
        <div class="password_b">
             <div class="password_b1 bg1">
                   <ul>                                                        
                       <li>1、输入用户名</li>
                       <li>2、回答密保问题</li>
                       <li>3、重设密码</li>
                       <li>4、密码重设成功</li>
                   </ul>
             </div>
             <div class="password_bc">
                 <form action="<%=basePath%>password" method="post">
                   <dl>
                        <dt>手机号：</dt>
                        <dd><input name="phone" type="text" class="pass_name" id="phone"/>
                            <span class="phoneerro" style="padding-left: 20px;color: red;font-size: large"></span></dd>

                   </dl>
                   <dl>
                        <dt>验证码：</dt>
                        <dd><input name="yanzhengma" type="text" class="pass_name" /></dd>
                   </dl>
                   <dl>
                        <dt></dt>
                        <dd>
                            <span class="pass_yzm"><img src="${pageContext.request.contextPath}/userinfoservlet/ValiImage" width="178" height="50" /></span>
                            看不清？<a href="">换张图</a>
                        </dd>
                   </dl>
                   <dl>
                        <dt></dt>
                        <dd><input type="submit"  class="pass_next" value="下一步"></a><h3 style="color: red">${msg}</h3></dd>
                   </dl>
                 </form>
             </div>
             
        </div>
   </div>
   <div class="footer_m mar38">
           <div class="footer_nav">
               <a href="" target="_blank">关于我们</a>|
               <a href="" target="_blank">联系我们</a>|
               <a href="" target="_blank">人才招聘</a>|
               <a href="" target="_blank">广告服务</a>|
               <a href="" target="_blank">友情链接</a>|
               <a href="" target="_blank">销售联盟</a>|
               <a href="" target="_blank">公司简介</a>
           </div>
           <div class="footer_copyright">
                网络文化经营许可证鄂网文[2015]0278-060号  Copyright © 2015-2018  版权所有
           </div>
     </div>
</body>
</html>
