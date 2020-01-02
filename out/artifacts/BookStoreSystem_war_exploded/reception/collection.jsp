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
<title>我的收藏</title>
<link type="text/css" rel="stylesheet" href="<%=basePaths%>css/style.css" />
<script type="text/javascript" src="<%=basePaths%>js/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        if(${collection==null}){
            if(${userInfo!=null}){
                window.location="${pageContext.request.contextPath}/findbookcollection?user_id=${userInfo.user_id}";
            }
        }
        //全选
        $(".allxz_c").bind("click",function () {
            $("input[name='dd_book']").prop("checked",this.checked);
        });

        //全删除
        $("#delete").click(function () {
            if(confirm('确定要删除所选吗?')){
                var checks = $("input[name='dd_book']:checked");
                if(checks.length == 0){ alert('未选中任何项！');return false;}
                //将获取的值存入数组
                var book_ids=new Array();
                checks.each(function(){
                    book_ids.push($(this).next().val());
                });
                $.ajax({
                    type: "POST",
                    dataType:"json",
                    url: "${pageContext.request.contextPath}/deletecollection",
                    data: {
                        "user_id":${userInfo.user_id},
                        "book_ids":book_ids
                    },
                    success: function(msg){
                        if(msg)window.location="${pageContext.request.contextPath}/reception/collection.jsp";
                        else alert("删除失败！！！");
                    }
                });
            }
        });
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
                   <dd class="active"><a href="<%=basePaths%>collection.jsp">我的收藏</a></dd>
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
                    <div class="user_lmt1">我的收藏</div>
                    <div class="user_lmt2">
                         <div class="user_lmt22"><a href=""><img src="images/user_bt.jpg" width="70" height="22" id="delete"/></a></div>
                         <div class="user_lmt21"><input name="allxz" type="checkbox" value="" class="allxz_c"/>全选</div>
                    </div>
               </div>
               <div class="user_coment">
                 <table width="713" border="0" cellspacing="0" cellpadding="0"  class="my_dd">
                       <tr>
                            <th height="48" colspan="5">书籍信息</th>
                            <th width="117">金额（元）</th>
                            <th width="115">收藏操作</th>
                        </tr>
                     <c:if test="${collection.size()!=0}">
                        <c:forEach items="${collection}" var="c">

                        <tr>
                            <td width="32" height="149" style="border-right:none; vertical-align:text-top;">
                              <input type="checkbox" name="dd_book" id="dd_book1" class="dd_book"/>
                                <input type="text" hidden value="${c.get(3)}"/>
                            </td>
                            <td width="163">
                                 <div class="dd_img"><a href="" target="_blank"><img src="<%=basePath%>${c.get(0)}" width="132" height="121" /></a></div>
                            </td>
                            <td colspan="3">${c.get(1)}</td>
                            <td>${c.get(2)}</td>
                            <td>
                                 <div class="user_ck"><a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${c.get(3)}" target="_blank">查看</a></div>
                                 <div class="user_sc"><a href="<%=basePath%>deletecollection?user_id=${userInfo.user_id}&&book_id=${c.get(3)}" >删除</a></div>
                            </td>
                        </tr>
                        </c:forEach>
                     </c:if>
                    </table>
                    <!--分页开始 -->
                 <div style="clear:both;"></div>
                    <div class="fenyeys" >
                        <c:if test="${collection.size()!=0}">
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
                    <!--结算开始 -->
<%--                    <div class="settlement">--%>
<%--                         <div class="settlement_l">--%>
<%--                              <div class="settlement_l1"><input name="allxz" type="checkbox" value="" class="allxz_c"/>全选</div>--%>
<%--                              <div class="settlement_l2"><a href="">删除</a></div>--%>
<%--                         </div>--%>
<%--                         <div class="settlement_r">--%>
<%--                              <span>已选商品<b class="red">2</b>件 </span> <span> 合计（不含运费）￥<b class="ppr">25.00</b></span>--%>
<%--                              <span class="jiesuan"><a href="">结算</a></span>--%>
<%--                         </div>--%>
<%--                    </div>--%>
<%--                    <!--结算结束 -->--%>
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
