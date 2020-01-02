<%@ page import="java.util.*" contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String basePaths = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"reception"+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆</title>
<script type="text/javascript" src="<%=basePaths%>js/jquery-1.7.js"></script>
<script type="text/javascript" src="<%=basePaths%>js/jquery.cookie.js"></script>

<link href="<%=basePaths%>css/style.css" type="text/css" rel="stylesheet" />
    <script >
        $(function () {
            var username=$.cookie("username");
            var pwd=$.cookie("pwd");

            if(username!=""){$(".username").val(username)}
            if(pwd!=""){$(".password").val(pwd)}
        });
    </script>
</head>

<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href=""  ></a></div>
         <div class="login_title">欢迎登陆</div>
         <div class="login_txt"><img src="<%=basePath%>images/login_03.jpg" width="285" height="26" /></div>
   </div>
   <div class="login_c">
        <div class="login_c_left"><img src="<%=basePath%>images/login_f.jpg" width="369" height="314" /></div>
        <div class="login_c_right">
             <dl>
                  <dt>账&nbsp;&nbsp;&nbsp;号：</dt>
                  <dd><input name="userid" type="text"  class="username" /><p id="phoneerro" style="color: red"></p></dd>
             </dl>
             <script>
                $(function () {
                    $(".username").change(function () {
                        $("#phoneerro").text("");
                        userid=$(".username").val();
                        if(userid!=""){
                        $.ajax({
                            type: "POST",
                            dataType:"json",
                            url: "${pageContext.request.contextPath}/userinfoservlet/JudgeUser",
                            data: {"phone":userid},
                            success: function(msg){
                                if(!msg){
                                    $("#phoneerro").text("用户名错误！！！");
                                }
                            }
                        });
                        }else {
                            $("#phoneerro").text("用户名不能为空！！！");
                        }
                    });
                });
             </script>
             <dl>
                  <dt>密&nbsp;&nbsp;&nbsp;码：</dt>
                  <dd><input name="pwd" type="password"  class="password"/><p id="passworderro" style="color: red"></p></dd>
             </dl>
             <dl>
                  <dt>验证码：</dt>
                  <dd>
                      <input name="code" type="text"  class="yzm_txt"/>
                      <div class="yzm"><img src="${pageContext.request.contextPath}/userinfoservlet/ValiImage" width="82" height="30" /></div>
                      <div class="yzm_ot"><a href="" id="change">看不清换一张</a></div>
                  </dd>
             </dl>
            <script>
                var userid="";
                var pwd="";
                var code="";
                $(function () {
                    $(".yzm_txt").change(function () {
                        code=$(".yzm_txt").val().trim();
                        if(code==""){
                            alert("验证码为空!!!");
                        } else {
                            $.ajax({
                                type: "POST",
                                dataType:"json",
                                url: "${pageContext.request.contextPath}/userinfoservlet/JudgeCookie",
                                data: {"code":code},
                                success: function(msg){
                                    if(!msg){
                                        alert("验证码错误！！！");
                                    }
                                }
                            });
                        }
                    });

                    $("#change").click(function () {
                        userid=$(".username").val().trim();
                        pwd=$(".password").val().trim();
                        var date = new Date();
                        date.setTime(date.getTime() + (30 * 1000));
                        $.cookie("username",userid, {path:"/", expires: date });
                        $.cookie("pwd",pwd, { path:"/",expires: date });
                    });
                });
            </script>
             <div class="login_butt">
                   <input name="dl" type="button" class="bts" id="login" value="登陆"/>
                   <input name="qx" type="button" class="bts"  value="取消"/>
             </div>
            <script>
                $(function () {

                    $("#login").click(function () {

                        userid=$(".username").val().trim();
                        pwd=$(".password").val().trim();
                        code=$(".yzm_txt").val().trim();

                        if(pwd==""){
                            $("#passworderro").text("密码不能为空！！！");
                        }else if(userid==""){
                            $("#phoneerro").text("用户名不能为空！！！");
                        }else if(code==""){
                            alert("验证码不能为空！！！");
                        }
                        else {
                            $.ajax({
                                type: "POST",
                                dataType:"json",
                                url: "${pageContext.request.contextPath}/userinfoservlet/JudgeUser",
                                data: {
                                    "phone":userid,
                                    "pwd":pwd
                                },
                                success: function(msg){
                                    if(!msg){
                                        $("#passworderro").text("密码错误！！！");
                                    }else {
                                        window.location="${pageContext.request.contextPath}/ShowPageHome";
                                    }
                                }
                            });

                        }
                    });
                });

            </script>
             <div class="login_zc">
                  <a href="<%=basePath%>reception/password_1.jsp" target="_blank" class="login_zc1" id="removepassword">忘记登陆密码</a>
                  <a href="<%=basePath%>reception/zhuce.jsp" target="_blank" class="login_zc2">免费注册</a>
             </div>
            <script>
                $(function () {
                    $("#removepassword").click(function () {
                        $.removeCookie("pwd",{path:"/"});
                        $("#removepassword").val("");
                    });
                });
            </script>
        </div>
   </div>
   <div class="footer_m mar38">
           <div class="footer_nav">
               <a href="" >关于我们</a>|
               <a href="" >联系我们</a>|
               <a href="" >人才招聘</a>|
               <a href="" >广告服务</a>|
               <a href="" >友情链接</a>|
               <a href="" >销售联盟</a>|
               <a href="" >公司简介</a>
           </div>
           <div class="footer_copyright">
                网络文化经营许可证鄂网文[2015]0278-060号  Copyright © 2015-2018  版权所有
           </div>
     </div>
</body>

</html>
