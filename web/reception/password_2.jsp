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
        $(".pass_next").click(function () {

            var password=$("#password").val().trim();

            if(${problem.size()>0}){
            if(password=="${problem.get(0).protect_answer}"){

                    window.location="${pageContext.request.contextPath}/reception/password_3.jsp"
                }else {
                $(".passworderro").html("密保错误！！！").css("color","red");
            }
            }
        });
    });
</script>
</head>

<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" target="_blank" ></a></div>
       

   </div>
   <div class="zhuce_c">
        <div class="password_t">
             <span class="fr_pw"><a href="" target="_blank">如何找回密码</a></span><span class="zhmm">找回密码</span>
        </div>
        <div class="password_b">
             <div class="password_b1 bg2">
                   <ul>                                                        
                       <li>1、输入用户名</li>
                       <li>2、回答密保问题</li>
                       <li>3、重设密码</li>
                       <li>4、密码重设成功</li>
                   </ul>
             </div>
             <div class="password_bc">
                  <div class="password_bc2">
                      <c:if test="${problem.size()>0}">
                          <div class="password_bc2t">问题一：${problem.get(0).protect_problem}？</div>
                      </c:if>
                      <c:if test="${problem.size()<1}">
                          <div class="password_bc2t">无密保问题</div>
                      </c:if>
                       <div class="password_bc2b"><input type="text" name="password_bc2btxt" class="password_bc2btxt" id="password"> <span class="passworderro" style="padding-left: 20px;color: red;font-size: large"></span></div>
                       <div class="password_bc2c"><button class="pass_next">下一步</button></div>
                  </div>
                  
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
