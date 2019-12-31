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
<title>我的订单</title>
<link type="text/css" rel="stylesheet" href="<%=basePaths%>css/style.css" />
<script type="text/javascript" src="<%=basePaths%>js/jquery-1.7.js"></script>
<script type="text/javascript" src="<%=basePaths%>js/jquery-ui.js"></script>
    <style type="text/css">

    </style>
    <script type="text/javascript">
        $(function () {
            if(${MyOrder==null}){
                if(${userInfo!=null}){
                    window.location="${pageContext.request.contextPath}/orderservlet/findorder?user_id=${userInfo.user_id}&&yemian=0";
                }
            }
            //全选
            $(".allxz_c").bind("click",function () {
                $("input[name='dd_book']").prop("checked",this.checked);
            });
            //全删除
            $("#detet").click(function () {
                if(confirm('确定要删除所选吗?')){
                    var checks = $("input[name='dd_book']:checked");
                    if(checks.length == 0){ alert('未选中任何项！');return false;}
                    //将获取的值存入数组
                    var order_ids=new Array();
                    var book_ids=new Array();
                    checks.each(function(){
                        order_ids.push($(this).next().val());
                        book_ids.push($(this).next().next().val());
                    });
                    $.ajax({
                        type: "POST",
                        dataType:"json",
                        url: "${pageContext.request.contextPath}/orderdetailservlet/deleteorder",
                        data: {
                            "order_ids":order_ids,
                            "book_ids":book_ids
                        },
                        success: function(msg){
                            if(msg)window.location="${pageContext.request.contextPath}/reception/MyOrder.jsp";
                            else alert("删除失败！！！");
                        }
                    });
                }
            });



            //评价
            $(".pingjia").click(function () {
                $("#pingjia").val("");
                var status1=$(this).parent().parent().prev().prev().text();
                var xiugai=0;//0添加1修改
                var xiugaipinglu="";//比较评论是否被修改
                    if(status1=="已到货"){
                        var book_id=$(this).next().val();
                        var user_id=${userInfo.user_id};
                        $.ajax({
                            type: "GET",
                            url: "${pageContext.request.contextPath}/addcommentservlet",
                            data: {
                                "user_id":user_id,
                                "book_id":book_id
                            },
                            success: function(msg){
                                if(msg!=false) {
                                    xiugai=1;
                                    xiugaipinglu=msg;
                                    $("#pingjia").val(msg);

                                }
                            }
                         });

                         $("#aa").dialog({
                         height:250,
                         width:300,
                         draggable:false,
                         show:"puff",
                         hide:"puff",
                         modal:true,//是否使用模式，为true时背景半透明不能修改的效果
                         closeText:"",
                         title:"我的评价",
                         buttons:[
                             {
                                 text:"确定",
                                 click:function () {
                                   var comment_content=$("#pingjia").val();
                                   if(xiugai==0){
                                   if(comment_content!=""){
                                       $.ajax({
                                           type: "get",
                                           dataType:"json",
                                           url: "${pageContext.request.contextPath}/addcommentservlet",
                                           data: {
                                               "user_id":user_id,
                                               "book_id":book_id,
                                               "comment_content":comment_content
                                           },
                                           success: function(msg){
                                               if(msg)alert("评论成功！！！")
                                               else alert("评论失败！！！");
                                           }
                                       });
                                   }else alert("您没有做任何评价！！！");
                                 }else{
                                        if($("#pingjia").val().trim()==xiugaipinglu.trim()){
                                            alert("您的评论未做任何修改！！！");
                                        }else if($("#pingjia").val()==""){
                                            $.ajax({
                                                type: "get",
                                                dataType:"json",
                                                url: "${pageContext.request.contextPath}/deletecomment",
                                                data: {
                                                    "user_id":user_id,
                                                    "book_id":book_id
                                                },
                                                success: function(msg){
                                                    if(msg)alert("已删除该评论！！！")
                                                    else alert("删除评论失败！！！");
                                                }
                                            });
                                        }else if($("#pingjia").val()!=xiugaipinglu){
                                            $.ajax({
                                                type: "get",
                                                dataType:"json",
                                                url: "${pageContext.request.contextPath}/Updatecomment",
                                                data: {
                                                    "user_id":user_id,
                                                    "book_id":book_id,
                                                    "comment_content":comment_content
                                                },
                                                success: function(msg){
                                                    if(msg)alert("该评论已修改！！！")
                                                    else alert("评论修改失败！！！");
                                                }
                                            });
                                        }
                                   }
                                     $(this).dialog("close");
                                 },
                                 class:"sampleClass1",
                                 style:"background-color: red;\n" +
                                     "\tborder-radius: 4px;\n" +
                                     "\ttext-align: center;" +
                                     "margin-top: 60px;\n" +
                                     "margin-left: 50px;width: 70px;\n" +
                                     "height: 32px;"
                             },
                             {
                                 text:"取消",
                                 click:function () {
                                     $(this).dialog("close");
                                 },
                                 class:"sampleClass2",
                                 style:"background-color: green;\n" +
                                     "\tborder-radius: 4px;\n" +
                                     "\ttext-align: center;" +
                                     "margin-top: 100px;\n" +
                                     "margin-left: 50px;width: 70px;\n" +
                                     "height: 32px;"
                             },
                         ]
                     });
                  }else alert("您的订单未支付，请支付后在进行评价！！！");

            });
        });


    </script>
</head>

<body>

    <div class="user_top">
       <div class="user_c">
         <div class="user_top_l">
             <a href="" target="_blank">回到首页</a>
             欢迎您，${userInfo.user_nickname}
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
                   <dd  class="active"><a href="<%=basePaths%>MyOrder.jsp">我的订单</a></dd>
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
                    <div class="user_lmt1">我的订单</div>
                    <div class="user_lmt2">
                         <div class="user_lmt22"><a href=""><img src="<%=basePaths%>images/user_bt.jpg" width="70" height="22" id="detet" /></a></div>
                         <div class="user_lmt21"><input name="allxz" type="checkbox" value="" class="allxz_c"/>全选</div>
                    </div>
               </div>
               <div class="user_coment">
                 <table width="713" border="0" cellspacing="0" cellpadding="0"  class="my_dd">
                       <tr>
                            <th height="48" colspan="2">书籍</th>
                            <th width="110">订单日期</th>
                            <th width="93">订单数量</th>
                            <th width="98">订单状况</th>
                            <th width="117">实付款（元）</th>
                            <th width="115">交易操作</th>
                        </tr>
                        <c:if test="${MyOrder.size()!=0}">
                            <c:forEach items="${MyOrder}" var="order">
                        <tr>
                            <td width="32" height="195" style="border-right:none; vertical-align:text-top;">
                              <input type="checkbox" name="dd_book" id="dd_book1" class="dd_book"/>
                                <input type="text" hidden value="${order.get(6)}"/>
                                <input type="text" hidden value="${order.get(7)}"/>
                            </td>
                            <td width="163">
                                 <div class="dd_img"><a href="" target="_blank"><img src="<%=basePath%>${order.get(0)}" width="132" height="121" /></a></div>
                                 <div class="dd_bookname"><a href="" >${order.get(1)}</a></div>
                            </td>
                            <td>${order.get(2)}</td>
                            <td>${order.get(3)}</td>
                            <td class="status">${order.get(4)}</td>
                            <td>${order.get(5)}</td>
                            <td>
                                 <div class="user_ck"><a href="" target="_blank">查看</a></div>
                                 <div class="user_pj"><button  class="pingjia"  style="background: transparent;border: none;outline: none;cursor: pointer;" >评价</button><input type="text" hidden value="${order.get(7)}"/></div>
                                 <div class="user_sc"><a href="<%=basePath%>orderdetailservlet/deleteorder?order_id=${order.get(6)}&&book_id=${order.get(7)}" >删除</a></div>
                            </td>
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
                        <a href="<%=basePath%>orderservlet/findorder?order_id=${MyOrder.get(0).get(6)-1}&&user_id=${userInfo.user_id}&&yemian=0">上一页</a>
                        </c:if>
                        <c:forEach  items="${MyOrdernum}"  var="num"  >
                            <c:if test="${MyOrder.get(0).get(6)==num.order_id}">
                            <a href="<%=basePath%>orderservlet/findorder?order_id=${num.order_id}&&user_id=${userInfo.user_id}&&yemian=0"  class="active"><%=i%></a><%i++;%>
                            </c:if>
                            <c:if test="${MyOrder.get(0).get(6)!=num.order_id}">
                                <a href="<%=basePath%>orderservlet/findorder?order_id=${num.order_id}&&user_id=${userInfo.user_id}&&yemian=0"  ><%=i%></a><%i++;%>
                            </c:if>
                        </c:forEach>
                        <c:if test="${MyOrder.get(0).get(6)!=MyOrdernum.get(MyOrdernum.size()-1).order_id}">
                            <a href="<%=basePath%>orderservlet/findorder?order_id=${MyOrder.get(0).get(6)+1}&&user_id=${userInfo.user_id}&&yemian=0">下一页</a>
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
<!--评价框-->
    <div id="aa" title="名称" hidden="true" align="center" >
        <textarea  cols="18" rows="6"  id="pingjia" placeholder="请输入评价..." style="font-size: 30px" >
        </textarea>
    </div>

</body>
</html>
