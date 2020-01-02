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
<title>我的评论</title>
    <link type="text/css" rel="stylesheet" href="<%=basePaths%>css/style.css" />
    <script type="text/javascript" src="<%=basePaths%>js/jquery-1.7.js"></script>
    <script type="text/javascript">
        $(function () {
            if(${comment==null}){
                if(${userInfo!=null}){
                    window.location="${pageContext.request.contextPath}/findcomment?user_id=${userInfo.user_id}";
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
                   <dd><a href="<%=basePaths%>Shippingaddress.jsp">我的收货地址</a></dd>
                   <dd><a href="<%=basePaths%>Profile.jsp">个人档案</a></dd>
               </dl>
               <dl>
                   <dt>社区中心</dt>
                   <dd  class="active"><a href="<%=basePaths%>comment.jsp">我的评论</a></dd>
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
                    <div class="user_lmt1">我的评论</div>
                   
           </div>
           <div class="user_coment">
                 <div class="my_comments">
                     <ul>
                         <c:if test="${comment.size()!=0}">
                            <c:forEach items="${comment}" var="c">
                         <li>
                             <div class="my_co_1">
                                  <div class="my_co_11"><a href="" ><img src="<%=basePath%>${c.get(0)}" width="47" height="60" /></a></div>
                                  <div class="my_co_12">${c.get(1)}</div>
                                  <div class="my_co_13">${c.get(2)}</div>
                                  <div class="my_co_14"><a href="<%=basePath%>deletecomment?user_id=${userInfo.user_id}&&book_id=${c.get(4)}">删除</a></div>
                             </div>
                             <div class="my_co_2"><span class="red">我的评论：</span>${c.get(3)}</div>
                             
                         </li>
                            </c:forEach>
                         </c:if>

                     </ul>
                        <!--分页开始 -->
                 <div style="clear:both;"></div>
                    <div class="fenyeys" >
                        <c:if test="${comment.size()!=0}">
                            <c:if test="${pagesize.get(0)!=1}">
                                <a href="<%=basePath%>findbookcollection?user_id=${userInfo.user_id}&&index=${pagesize.get(0)-1}">上一页</a>
                            </c:if>
                            <c:forEach var="i" begin="1" end="${pagesize.get(1)}">
                                <c:if test="${i==pagesize.get(0)}">
                                    <a href="<%=basePath%>findbookcollection?user_id=${userInfo.user_id}&&index=${i}"  class="active">${i}</a>
                                </c:if>
                                <c:if test="${i!=pagesize.get(0)}">
                                    <a href="<%=basePath%>findbookcollection?user_id=${userInfo.user_id}&&index=${i}"  >${i}</a>
                                </c:if>

                            </c:forEach>
                            <c:if test="${pagesize.get(0)<pagesize.get(1)}">
                                <a href="<%=basePath%>findbookcollection?user_id=${userInfo.user_id}&&index=${pagesize.get(0)+1}">下一页</a>
                            </c:if>
                        </c:if>
                    </div>
                    <div style="clear:both;"></div>
                    <!--分页结束 -->
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
