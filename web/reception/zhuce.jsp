<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"reception"+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link href="<%=basePath%>css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.7.js"></script>
    <script>

    </script>
</head>

<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" target="_blank" ></a></div>
         <div class="login_title">欢迎登陆</div>

   </div>
   <div class="zhuce_c">
        <div class="zhuce_ct">
             <span class="tit">注册新用户</span>
             <span class="relex">以下*标注的为必填选项</span>
        </div>

        <div class="zhuce_cb">
            <form method="post" action="${pageContext.request.contextPath}/userinfoservlet/zhuceServlet"  enctype="multipart/form-data">
              <dl>
                  <dt><span class="red">*</span>手机号：</dt>
                  <dd><input name="phone" type="text" class="usernames" id="phone" placeholder="请输入手机号..." />
                     <span class="phoneerro" style="padding-left: 20px;color: red;font-size: large"></span>
                  </dd>
              </dl>
            <script>
                $(function () {
                    $("#phone").change(function () {

                        var phone = $("#phone").val();

                        if(phone.trim()==""){
                            $(".phoneerro").html("手机号不能为空！！！").css("color","red");
                        }else {
                            if(/^1[3456789]\d{9}$/.test(phone)){
                                $.ajax({
                                    type: "POST",
                                    dataType:"json",
                                    url: "${pageContext.request.contextPath}/userinfoservlet/JudgeUser",
                                    data: {"phone":phone},
                                    success: function(msg){
                                        if(!msg){
                                            $(".phoneerro").html("正确").css("color","green");
                                        }else
                                        $(".phoneerro").html("该账号已被注册").css("color","red");
                                    }
                                });
                                }else {
                                $(".phoneerro").html("手机号格式错误！！！").css("color","red");
                                 }
                            }
                    });
                });
            </script>
              <dl>
                  <dt><span class="red">*</span>密码：</dt>
                  <dd><input name="password" type="password" class="passwords" id="password" placeholder="请输入密码...">
                  <span class="passworderro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>确认密码：</dt>
                  <dd><input name="passwords" type="password" class="passwords" id="passwords" placeholder="两次密码需一致...">
                  <span class="passwordserro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
            <script>
                $(function () {
                    $("#password").change(function () {
                        var password = $("#password").val().trim();
                        if(password.trim()==""){
                            $(".passworderro").html("密码不能为空！！！").css("color","red");
                        }else {
                            var passwords = $("#passwords").val().trim();
                            if(password==passwords){
                                $(".passwordserro").html("正确").css("color","green");
                            }
                            $(".passworderro").html("正确").css("color","green");
                        }
                    });

                    $("#passwords").change(function () {
                        var passwords = $("#passwords").val();
                        if(passwords.trim()==""){
                            $(".passwordserro").html("密码不能为空！！！").css("color","red");
                        }else {
                            var password = $("#password").val();
                            if(password==passwords){
                                $(".passwordserro").html("正确").css("color","green");
                            }else {
                                $(".passwordserro").html("两次密码不一致！！！").css("color","red");
                            }
                        }
                    });
                });
            </script>
              <dl>
                  <dt><span class="red">*</span>EMAIL:</dt>
                  <dd><input name="email" type="text" class="texts" id="email" placeholder="请输入邮箱...">
                  <span class="emailerro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>

              <dl>
                  <dt><span class="red">*</span>昵称：</dt>
                  <dd><input name="nickname" type="text" class="texts" id="nickname" placeholder="请输入昵称...">
                  <span class="nicknameerro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>QQ:</dt>
                  <dd><input name="qq" type="text" class="texts" id="qq" placeholder="请输入qq...">
                  <span class="qqerro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>地址：</dt>
                  <dd><input name="dizhi" type="text" class="texts" id="dizhi" placeholder="请输入住址...">
                  <span class="dizhierro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
              <dl>
                  <dt>学校:</dt>
                  <dd><input name="school" type="text" class="texts" id="school" placeholder="请输入学校...">
                  <span class="schoolerro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
              <dl>
                  <dt>年龄:</dt>
                  <dd><input name="age" type="text" class="texts" id="age" placeholder="请输入年龄...">
                  <span class="ageerro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
              <dl>
                  <dt>班级</dt>
                  <dd><input name="class" type="text" class="texts" id="banji" placeholder="请输入班级如：1、2...">
                  <span class="banjierro" style="padding-left: 20px;color: red;font-size: large"></span></dd>
              </dl>
              <dl>
                <dt>头像:</dt>
                <dd><input name="img" type="file" class="" id="img" ></dd>
              </dl>

              <dl>
                <dt>用户身份:</dt>
                <dd>
                      <label>
                          <input type="radio" name="identity" value="在校学生" checked="true" id="identity1" />
                          在校学生</label>
                      <label>
                          <input type="radio" name="identity" value="教师" id="identity2" />
                          教师</label>
                      <input type="radio" name="identity" value="上班族" id="identity3" />
                      上班族</label>
                      <input type="radio" name="identity" value="自由职业" id="identity4" />
                      自由职业</label>

                  </dd>
              </dl>

            <dl>
                <dt>真实姓名:</dt>
                <dd><input name="realname" type="text" class="texts" id="realname" placeholder="请输入用户身份..."></dd>
            </dl>

                 <dl>
                <dt>性别:</dt>
                     <dd ><label><input name="gender" type="radio"  value="男" checked="true" >&nbsp;&nbsp;男</label>
                         <label><input name="gender" type="radio"  value="女" >&nbsp;&nbsp;女</label></dd>
                </dl>
                <dl>
                    <dt>用户爱好:</dt>
                    <dd><textarea  cols="37" rows="4" name="hobby"  id="hobby" placeholder="请输入爱好..." style="line-height:28px; border:#e4e2e2 1px solid;padding-left:10px;resize: none;"></textarea></dd>
                </dl>
                <dl></dl>
                <dl></dl>

                <dl>
                    <dt>用户介绍:</dt>
                    <dd><textarea  cols="37" rows="4" name="introduce" id="introduce" placeholder="请输入自我介绍..." style="line-height:28px; border:#e4e2e2 1px solid;padding-left:10px;resize: none;"></textarea></dd>
                </dl>
                <dl></dl>
                <dl></dl>
            <script>
                $(function () {
                    $("#email").change(function () {
                        var email = $("#email").val();
                        if(email.trim()==""){
                            $(".emailerro").html("邮箱不能为空！！！").css("color","red");
                        }else {
                            if(email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)){
                                $.ajax({
                                    type: "POST",
                                    dataType:"json",
                                    url: "${pageContext.request.contextPath}/userinfoservlet/JudgeUser",
                                    data: {"email":email},
                                success: function(msg){
                                    if(!msg){
                                        $(".emailerro").html("正确").css("color","green");
                                    }else
                                        $(".emailerro").html("该邮箱已被注册").css("color","red");
                                }
                            });
                            } else {
                                $(".emailerro").html("邮箱格式错误！！！").css("color","red");
                            }
                        }
                    });

                    $("#nickname").change(function () {
                        var nickname = $("#nickname").val();
                        if(nickname.trim()==""){
                            $(".nicknameerro").html("昵称不能为空！！！").css("color","red");
                        }else {
                            $.ajax({
                                type: "POST",
                                dataType:"json",
                                url: "${pageContext.request.contextPath}/userinfoservlet/JudgeUser",
                                data: {"nickname":nickname},
                                success: function(msg){
                                    if(!msg){
                                        $(".nicknameerro").html("正确").css("color","green");
                                    }else
                                        $(".nicknameerro").html("该昵称已被注册").css("color","red");
                                }
                            });

                        }
                    });

                    $("#qq").change(function () {
                        var qq = $("#qq").val();
                        if(qq.trim()==""){
                            $(".qqerro").html("qq不能为空！！！").css("color","red");
                        }else {
                            if(qq.match(/[1-9]{1}[0-9]{4,11}/)){
                                $.ajax({
                                    type: "POST",
                                    dataType:"json",
                                    url: "${pageContext.request.contextPath}/userinfoservlet/JudgeUser",
                                    data: {"qq":qq},
                                    success: function(msg){
                                        if(!msg){
                                            $(".qqerro").html("正确").css("color","green");
                                        }else
                                            $(".qqerro").html("该qq已被注册").css("color","red");
                                    }
                                });

                            } else {
                                $(".qqerro").html("qq格式错误！！！").css("color","red");
                            }
                        }
                    });

                    $("#dizhi").change(function () {
                        var dizhi = $("#dizhi").val();
                        if(dizhi.trim()==""){
                            $(".dizhierro").html("地址不能为空！！！").css("color","red");
                        }else {
                            $(".dizhierro").html("正确").css("color","green");
                        }
                    });

                    $("#school").change(function () {
                        var school = $("#school").val();
                        if(!school.trim()==""){
                            $(".schoolerro").html("正确").css("color","green");
                        }
                    });

                    $("#age").change(function () {
                        var age = $("#age").val();
                        if(!age.trim()==""){
                            if(age>0&&age<120){
                                $(".ageerro").html("正确").css("color","green");
                            } else {
                                $(".ageerro").html("年龄格式错误！！！").css("color","red");
                            }
                        }
                    });

                    $("#banji").change(function () {
                        var banji = $("#banji").val();
                        if(!banji.trim()==""){
                          $(".banjierro").html("正确").css("color","green");
                        }
                    });
                });
            </script>
              <dl>
                  <dt><span class="red">*</span>地区：</dt>
                  <dd>
                        <div>
                            <select id="s_province" name="s_province" class="selects"></select>  
                            <select id="s_city" name="s_city" class="selects"></select>  
                            <select id="s_county" name="s_county" class="selects"></select>
                            <script class="resources library" src="<%=basePath%>js/area.js" type="text/javascript"></script>
                            
                            <script type="text/javascript">_init_area();</script>
                        </div>
                        <div id="show"></div>
                         <script type="text/javascript">
								var Gid  = document.getElementById ;
								var showArea = function(){
									Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +
									Gid('s_city').value + " - 县/区" +
									Gid('s_county').value + "</h3>"
															}
								//Gid('s_county').setAttribute('onchange','showArea()');
						</script>
                  </dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码提示问题一：</dt>
                  <dd>
                      <select name="wt1" class="wt1">
                          <option>您最崇拜的人是谁</option>
                          <option>您父亲的生日是</option>
                          <option>您母亲的生日是</option>
                          <option>您最喜欢的地方是哪里</option>
                      </select>
                  </dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码问题一答案：</dt>
                  <dd><input name="texts2" type="text" class="texts" id="daan1" ></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码提示问题二：</dt>
                  <dd>
                       <select name="wt1" class="wt1">
                          <option>您最崇拜的人是谁</option>
                          <option>您父亲的生日是</option>
                          <option>您母亲的生日是</option>
                          <option>您最喜欢的地方是哪里</option>
                      </select>
                  </dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码问题二答案：</dt>
                  <dd><input name="texts4" type="text" class="texts" id="daan2" ></dd>
              </dl>
               <dl>
                  <dt></dt>
                  <dd>
                       <input  type="checkbox"  class="check0"/>我已阅读并同意<a href="" class="red">《购书网用户注册协议》</a>
                  </dd>
              </dl>
              <div class="zc_bt">
                   <input  type="submit" class="bts"  value="注册" id="zhuce"/>
                   <input  type="button" class="bts"  value="取消"/>
              </div>
       </form>
              <div class="zc_lj">已经有账号？<a href="${pageContext.request.contextPath}/reception/login.jsp" target="_blank" class="yellow">立即登陆</a></div>
        </div>
   </div>
   <script>
       $(function () {
           $("form").submit(function () {
               if($(".check0").is(":checked")==false){
                   alert("请勾选购书网用户注册协议！！！")
                   return false;
               }else {
                   var daan1=$("#daan1").val();
                   var daan2=$("#daan2").val();
                   if(daan1==""||daan2==""){
                       alert("密保答案不能为空！！！");
                       return false;
                   }else {
                   var phoneerro=$(".phoneerro").text().trim();
                   var passworderro=$(".passworderro").text().trim();
                   var passwordserro=$(".passwordserro").text().trim();
                   var emailerro=$(".emailerro").text().trim();
                   var qqerro=$(".qqerro").text().trim();
                   var nicknameerro=$(".nicknameerro").text().trim();
                   var dizhierro=$(".dizhierro").text().trim();
                   var s_county=$("#s_county option:selected").text().trim();


                   var zhengque="正确";
                   if(zhengque==phoneerro&&zhengque==passworderro&&zhengque==passwordserro&&zhengque==emailerro&&zhengque==qqerro&&zhengque==nicknameerro&&zhengque==dizhierro&&s_county!="市、县级市"){
                        return true;
                   }else {
                       alert("必填信息填写为空或者有误！！！")
                       return false;
                   }


               }
               }

           });


       });
   </script>
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
