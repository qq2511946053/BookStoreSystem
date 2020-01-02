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
<title>我的积分</title>
    <link type="text/css" rel="stylesheet" href="<%=basePaths%>css/style.css" />
    <script type="text/javascript" src="<%=basePaths%>js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            if(${MyOrder==null}){
                if(${userInfo!=null}){
                    window.location="${pageContext.request.contextPath}/orderservlet/findorder?user_id=${userInfo.user_id}&&yemian=3&&status=123";
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
                   <dd  class="active"><a href="<%=basePaths%>integral.jsp">我的积分</a></dd>
                   <dd><a href="">我的消息</a></dd>
                   <dd><a href="<%=basePaths%>Shippingaddress.jsp">我的收货地址</a></dd>
                   <dd><a href="<%=basePaths%>Profile.jsp">个人档案</a></dd>
               </dl>
               <dl>
                   <dt>社区中心</dt>
                   <dd><a href="<%=basePaths%>comment.jsp">我的评论</a></dd>
                   <dd><a href="<%=basePaths%>exchange.jsp">兑换专区</a></dd>
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
                    <div class="user_lmt1">我的积分</div>
                    <div class="user_lmt2">
                        <c:if test="${MyOrder.size()!=0}">
                         <div class="user_lmt21">共有<b class="red">${MyOrder.get(0).get(9)}</b>积分</div>
                        </c:if>
                        <c:if test="${MyOrder.size()==0}">
                            <div class="user_lmt21">共有<b class="red"></b>积分</div>
                        </c:if>
                    </div>
                    
           </div>
               <div class="user_coment">
                 <table width="713" border="0" cellspacing="0" cellpadding="0"  class="my_dd">
                       <tr>
                           <th height="48" colspan="4">书籍信息</th>
                           <th height="48" colspan="4">数量</th>
                            <th height="48" colspan="3">获得积分</th>
                        </tr>
                        <c:if test="${MyOrder.size()!=0}">
                            <c:forEach items="${MyOrder}" var="order">
                        <tr>
                            <td width="32" height="149" style="border-right:none; vertical-align:text-top;">
                              
                            </td>
                            <td width="167">
                                 <div class="dd_img"><a href="" ><img src="<%=basePath%>${order.get(0)}" width="132" height="121" /></a></div>
                               
                            </td>
                            <td colspan="2" style="padding:0 5px; text-align:left;"><a href="" >${order.get(1)}</a></td>
                            <td colspan="4">${order.get(3)}</td>
                            <td colspan="3">${order.get(8)} </td>
                        </tr>
                            </c:forEach>
                        </c:if>

                    </table>
                    <!--分页开始 -->
                 <div style="clear:both;"></div>
                   <c:if test="${MyOrdernum.size()!=0}">
                       <div class="fenyeys" >
                           <%int i=1;%>
                           <c:if test="${MyOrder.get(0).get(6)!=MyOrdernum.get(0).order_id}">
                               <a href="<%=basePath%>orderservlet/findorder?order_id=${MyOrder.get(0).get(6)-1}&&user_id=${userInfo.user_id}&&yemian=3&&status=123">上一页</a>
                           </c:if>
                           <c:forEach  items="${MyOrdernum}"  var="num"  >
                               <c:if test="${MyOrder.get(0).get(6)==num.order_id}">
                                   <a href="<%=basePath%>orderservlet/findorder?order_id=${num.order_id}&&user_id=${userInfo.user_id}&&yemian=3&&status=123"  class="active"><%=i%></a><%i++;%>
                               </c:if>
                               <c:if test="${MyOrder.get(0).get(6)!=num.order_id}">
                                   <a href="<%=basePath%>orderservlet/findorder?order_id=${num.order_id}&&user_id=${userInfo.user_id}&&yemian=3&&status=123"  ><%=i%></a><%i++;%>
                               </c:if>
                           </c:forEach>
                           <c:if test="${MyOrder.get(0).get(6)!=MyOrdernum.get(MyOrdernum.size()-1).order_id}">
                               <a href="<%=basePath%>orderservlet/findorder?order_id=${MyOrder.get(0).get(6)+1}&&user_id=${userInfo.user_id}&&yemian=3&&status=123">下一页</a>
                           </c:if>

                       </div>

                   </c:if>
                    <div style="clear:both;"></div>
                    <!--分页结束 -->
                   
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
