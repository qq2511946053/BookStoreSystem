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
<title>兑换专区</title>
    <link type="text/css" rel="stylesheet" href="<%=basePaths%>css/style.css" />
    <script type="text/javascript" src="<%=basePaths%>js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            if(${MyOrder==null}){
                if(${userInfo!=null}){
                    window.location="${pageContext.request.contextPath}/orderservlet/findorder?user_id=${userInfo.user_id}&&yemian=4&&status=123";
                }
            }
        });
    </script>
</head>

<body>

    <div class="user_top">
       <div class="user_c">
         <div class="user_top_l">
             <a href="" target="_blank">回到首页</a>
             欢迎您，${userInfo.user_nickname}  &nbsp;&nbsp;&nbsp;
             <a href="" target="_blank">退出</a>
         </div>
         <div class="user_top_r">
               <ul>
                   <li><a href="" target="_blank">帮助中心</a></li>
                   <li><a href="" target="_blank">关于我们</a></li>

               </ul>
         </div>
       </div>
    </div>
    
    <div class="user_nav">
         <div class="user_c">
               <div class="user_nav_l">用户中心</div>
               <div class="user_nav_r">
                     <input name="search2" type="text"  class="uesr_s"/>
                     <input name="search2" type="button"  class="uesr_b"/>
               </div>
         </div>
    </div>
    
    <div class="user_cont">
         <!--left begin -->
         <div class="user_cont_left">
               <dl>
                   <dt>我的交易</dt>
                   <dd><a href="<%=basePaths%>MyOrder.jsp">我的订单</a></dd>
                   <dd><a href="<%=basePaths%>collection.jsp">我的收藏</a></dd>
                   <dd><a href="<%=basePaths%>Bill.jsp">我的账单</a></dd>
                   <dd><a href="<%=basePaths%>bought.jsp">已经购买的商品</a></dd>
               </dl>
               <dl>
                   <dt>自助服务</dt>
                   <dd><a href="">申请查询退换货</a></dd>
                   <dd><a href="">查询退换货记录</a></dd>
               </dl>
               <dl>
                   <dt>我的账户</dt>
                   <dd><a href="<%=basePaths%>integral.jsp">我的积分</a></dd>
                   <dd><a href="">我的消息</a></dd>
                   <dd><a href="<%=basePaths%>Shippingaddress.jsp">我的收获地址</a></dd>
                   <dd><a href="<%=basePaths%>Profile.jsp">个人档案</a></dd>
               </dl>
               <dl>
                   <dt>社区中心</dt>
                   <dd><a href="<%=basePaths%>comment.jsp">我的评论</a></dd>
                   <dd  class="active"><a href="<%=basePaths%>exchange.jsp">兑换专区</a></dd>
               </dl>
         </div>
         <script type="text/javascript">
$(document).ready(function(){
		$(".user_cont_left dl dt").click(function(){
		$(this).siblings().slideToggle("slow");
		$(this).toggleClass("jia"); return false;
	});
	
});
</script>
         <!--left end -->
         <!--right begin -->
         <div class="user_cont_right">
           <div class="user_lmt">
                    <div class="user_lmt1">我的评论</div>
                   
           </div>
           <div class="user_coment">
                 <div class="my_jifen"><span class="jf_fr"><a href="" >如何获取更多积分</a></span>我的积分&nbsp; &nbsp;<b class="red">${MyOrder.get(0).get(9)}分</b></div>
                 <div class="my_dhzq">
                       <div class="my_dhzq_t">兑换商品</div>
                       <div class="my_dhzq_b">
                            <dl>
                                 <dt><img src="images/dh_pic.jpg" width="104" height="141" /></dt>
                                 <dd>旧杂志超值积分换购</dd>
                                 <dd>积分：<b class="red">300</b></dd>
                                 <dd><a href=""><img src="images/dh_but.jpg" width="68" height="24" /></a></dd>
                            </dl>
                            <dl>
                                 <dt><img src="images/dh_pic.jpg" width="104" height="141" /></dt>
                                 <dd>旧杂志超值积分换购</dd>
                                 <dd>积分：<b class="red">300</b></dd>
                                 <dd><a href=""><img src="images/dh_but.jpg" width="68" height="24" /></a></dd>
                            </dl>
                            <dl>
                                 <dt><img src="images/dh_pic.jpg" width="104" height="141" /></dt>
                                 <dd>旧杂志超值积分换购</dd>
                                 <dd>积分：<b class="red">300</b></dd>
                                 <dd><a href=""><img src="images/dh_but.jpg" width="68" height="24" /></a></dd>
                            </dl>
                            <dl>
                                 <dt><img src="images/dh_pic.jpg" width="104" height="141" /></dt>
                                 <dd>旧杂志超值积分换购</dd>
                                 <dd>积分：<b class="red">300</b></dd>
                                 <dd><a href=""><img src="images/dh_but.jpg" width="68" height="24" /></a></dd>
                            </dl>
                            <dl>
                                 <dt><img src="images/dh_pic.jpg" width="104" height="141" /></dt>
                                 <dd>旧杂志超值积分换购</dd>
                                 <dd>积分：<b class="red">300</b></dd>
                                 <dd><a href=""><img src="images/dh_but.jpg" width="68" height="24" /></a></dd>
                            </dl>
                       </div>
                 </div>
           </div>
         </div>
         <!--right end -->
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
