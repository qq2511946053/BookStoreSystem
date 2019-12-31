<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vp.bookstore.pojo.UserInfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String basePaths = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"reception"+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的收获地址</title>
<link type="text/css" rel="stylesheet" href="<%=basePaths%>css/style.css" />
<script type="text/javascript" src="<%=basePaths%>js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            if(${receivings==null}){
                if(${userInfo!=null}){
                    window.location="${pageContext.request.contextPath}/findreceiving?user_id=${userInfo.user_id}";
                }
            }
            $("form").submit(function () {
                var s_county=$("#s_county option:selected").text().trim();
                var address=$("#receiving_address").val().trim();
                var postalcode=$("#postalcode").val().trim();
                var name=$("#receiving_name").val().trim();
                var phone=$("#receiving_phone").val().trim();
                if(s_county!="市、县级市"&&address.length>5&&postalcode!=""&&name!=""&&phone!=""){

                    return true
                }else {
                    alert("必填信息不能为空！！！");
                } return false
            });


        });
    </script>
</head>

<body>

    <div class="user_top">
       <div class="user_c">
         <div class="user_top_l">
             <a href="" target="_blank">回到首页</a>
             欢迎您，${userInfo.user_nickname} &nbsp;&nbsp;&nbsp;
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
                   <dd class="active"><a href="<%=basePaths%>Shippingaddress.jsp">我的收货地址</a></dd>
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
                    <div class="user_lmt1">我的收货地址</div>
                   
           </div>
           <div class="user_coment">
               <form action="<%=basePath%>addreceiving" method="post">
                <div class="user_address">
                     <dl>
                          <dt class="yellow"><a href="<%=basePaths%>Shippingaddress.jsp">新增收货地址</a></dt>
                          <dd>*为必填选项</dd>
                     </dl>

                     <dl>
                          <dt><span class="red">*</span>所在地区</dt>
                          <dd>
                               <div>
                                  <select id="s_province" name="s_province" class="selects"></select>  
                                  <select id="s_city" name="s_city" class="selects"></select>  
                                  <select id="s_county" name="s_county" class="selects"></select>
                                  <script class="resources library" src="<%=basePaths%>js/area.js" type="text/javascript"></script>
                                  
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
                                    //  Gid('s_county').setAttribute('onchange','showArea()');
                              </script>
                          </dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>详细地址</dt>
                          <dd>
                               <textarea name="receiving_address" cols="" rows=""  class="address_xx" value="${rece.receiving_address}" id="receiving_address"  placeholder="不要重复填写省市区，必须大于5个字符，小于120个字符"></textarea>
                          </dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>邮政编码</dt>
                          <dd><input name="postalcode" type="text"  class="youbian" value="${rece.postalcode}" id="postalcode"/></dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>收货人姓名</dt>
                          <dd><input name="receiving_name" type="text"  class="youbian" id="receiving_name" value="${rece.receiving_name}" placeholder="长度不超过25个字符" />
                          </dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>手机号码</dt>
                          <dd>
                              <input name="receiving_phone" type="text" id="receiving_phone" value="${rece.receiving_phone}"  class="youbian"  placeholder="请填写手机号码..." />
                          </dd>
                     </dl>
                     <dl>
                          <dt></dt>
                          <dd>

                              <c:if test="${rece.status==1}">
                              <input name="status" type="checkbox"  checked="checked" value="1" class="add_mr"/>
                              </c:if>
                              <c:if test="${rece.status!=1}">
                                  <input name="status" type="checkbox"   value="1" class="add_mr"/>
                              </c:if>
<%--                              <c:if test="${rece==null}">--%>
<%--                                  <input name="status" type="checkbox"   value="1" class="add_mr"/>--%>
<%--                              </c:if>--%>
                              设为默认收货地址
                          </dd>
                     </dl>
                     <dl>
                          <dt></dt>
                         <dd><input hidden type="text" name="user_id" value="${userInfo.user_id}"/>
                             <c:if test="${rece.receiving_id!=null}">
                             <input hidden type="text" name="receiving_id" value="${rece.receiving_id}" id="receiving_id"/>
                             </c:if>
                             <c:if test="${rece==null}">
                             <input name="bc_bt" type="submit" class="bc_bt" value="保存"/>
                             </c:if>
                             <c:if test="${rece!=null}">
                                 <input name="bc_bt" type="submit" class="bc_bt" value="修改"/>
                             </c:if>
                                 <h3 style="color: red">${msg}</h3></dd>

                     </dl>
                </div>
               </form>
                <!--address list begin -->
                <table width="713" border="0" cellspacing="0" cellpadding="0" class="address_list">
                    <tr  class="address_list_t">
                      <th width="10%">收货人</th>
                      <th width="23%">所在地区</th>
                      <th width="31%">详细地址</th>
                      <th width="9%">邮编</th>
                      <th width="14%">电话/手机</th>
                      <th width="13%">操作</th>
                    </tr>
                    <c:if test="${receivings.size()!=0}">
                        <c:forEach items="${receivings}" var="receiving">
                    <tr>
                      <td><div align="center">${receiving.receiving_name}</div></td>
                      <td>${receiving.receiving_region}</td>
                      <td>${receiving.receiving_address}</td>
                      <td><div align="center">${receiving.postalcode}</div></td>
                      <td><div align="center">${receiving.receiving_phone}</div></td>
                      <td><div align="center"><a href="<%=basePath%>findreceiving?user_id=${userInfo.user_id}&&receiving_id=${receiving.receiving_id}"  >修改</a>&nbsp;&nbsp;<a href="<%=basePath%>deletereceiving?receiving_id=${receiving.receiving_id}" id="shangchu">删除</a></div></td>
                    </tr>
                        </c:forEach>
                    </c:if>
                  </table>

                <!--address list end -->
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
