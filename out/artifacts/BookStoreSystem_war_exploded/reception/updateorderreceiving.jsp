<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: 25119
  Date: 2019/12/27
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购书网-修改订单收获地址</title>
</head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/reception/css/style.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/reception/js/jquery.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/reception/js/jquery.SuperSlide.2.1.1.js"></script>
<script>
    $(function () {
        $('.nav_left').mouseover(function () {
            $('.category_ho').show();
        }).mouseout(function () {
            $('.category_ho').hide();
        });
    });
</script>
<body>
<!--top begin -->
<div class="header">

    <div class="header_1">
        <div class="warp">
            <div class="header_1_l">
                欢迎光临购书网！
                <c:if test="${sessionScope.userInfo==null}">
                    <a href="${pageContext.request.contextPath}/reception/login.jsp">请登陆</a>
                    <a href="${pageContext.request.contextPath}/reception/zhuce.jsp">免费注册</a>
                </c:if>
                <c:if test="${sessionScope.userInfo!=null}">
                    ${sessionScope.userInfo.user_nickname}
                </c:if>
            </div>
            <div class="header_1_r">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/reception/MyOrder.jsp">我的订单</a></li>
                    <li><a href="${pageContext.request.contextPath}/ShowCart">购物车<span class="red">${fn:length(sessionScope.userInfo.cartList)}</span>件</a></li>
                    <li><a href="javascript:void(0);">帮助中心</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--logo &s begin -->
    <div class="header_2">
        <div class="logo"></div>
        <div class="srarching">
            <div class="srarching_t">
                <input name="search_txt" type="text" class="search_txt" value="输入你要搜索的书籍名称"
                       onfocus="if(this.value=='输入你要搜索的书籍名称'){this.value='';}"
                       onblur="if(this.value==''){this.value='输入你要搜索的书籍名称';}"/>
                <input name="search_bt" type="button" class="search_bt" value="搜索"/>
            </div>
            <div class="srarching_b">
                热门搜索：
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=教育&typedetailname=外语考试">外语考试</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=教育&typedetailname=中小学教辅">中小学教辅</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=百科全书">百科全书</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=辞典">辞典</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=牛津系列">牛津系列</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=汉语工具书">汉语工具书</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=英语工具书">英语工具书</a>
            </div>
        </div>
        <div class="ewm"><img src="images/ewm.jpg" width="92" height="92"/></div>

    </div>
    <!--logo &s end -->
    <!--nav begin -->
    <div class="nav">
        <div class="warp">
            <div class="nav_left">

                全部分类
                <div class="category_ho">
                    <dl>
                        <dt><a href="${pageContext.request.contextPath}/ShowBookList?typename=小学">小学</a></dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=小学&typedetailname=小学一年级">小学一年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=小学&typedetailname=小学二年级">小学二年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=小学&typedetailname=小学三年级">小学三年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=小学&typedetailname=小学四年级">小学四年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=小学&typedetailname=小学五年级">小学五年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=小学&typedetailname=小学六年级">小学六年级</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="${pageContext.request.contextPath}/ShowBookList?typename=初中">初中</a></dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=初中&typedetailname=初中一年级">初中一年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=初中&typedetailname=初中二年级">初中二年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=初中&typedetailname=初中三年级">初中三年级</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="${pageContext.request.contextPath}/ShowBookList?typename=高中">高中</a></dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=高中&typedetailname=高中一年级">高中一年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=高中&typedetailname=高中二年级">高中二年级</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=高中&typedetailname=高中三年级">高中三年级</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="${pageContext.request.contextPath}/ShowBookList?typename=教育">教育</a></dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=教育&typedetailname=教材">教材</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=教育&typedetailname=外语考试">外语考试</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=教育&typedetailname=中小学教辅">中小学教辅</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书">工具书</a></dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=汉语工具书">汉语工具书</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=英语工具书">英语工具书</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=其他语种工具">其他语种工具</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=百科全书">百科全书</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=文学鉴赏">文学鉴赏</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=辞典">辞典</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=牛津系列">牛津系列</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=朗文系列种工具">朗文系列种工具</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=民族语工具书">民族语工具书</a>
                            <a href="${pageContext.request.contextPath}/ShowBookList?typename=工具书&typedetailname=英文原版书">英文原版书</a>
                        </dd>
                    </dl>
                    <dl class="last">
                        <dt><a href="${pageContext.request.contextPath}/ShowBookList?typename=期刊">期刊</a></dt>
                        <dd></dd>
                    </dl>
                </div>

            </div>
            <div class="nav_right">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/ShowPageHome">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/ShowBookList">商品列表</a></li>
                    <li><a href="${pageContext.request.contextPath}/ShowCart">购物车</a></li>
                    <li><a href="${pageContext.request.contextPath}/reception/MyOrder.jsp">我的订单</a></li>
                    <li><a href="${pageContext.request.contextPath}/reception/Profile.jsp">个人中心</a></li>
                    <li><a href="javascript:void(0);">客户服务</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--nav end -->
    <div class="clearfloat"></div>
</div>
<!--top end -->
<!--container begin -->
<div class="container">
    <!--banner begin -->
    <div class="list_banner"><a href="javascript:void(0);" target="_blank"><img src="images/list_banner.jpg" width="1100" height="92"/></a>
    </div>
    <!--1begin -->
    <div class="buy_one">
        <!--收货人信息beign -->
        <div class="address_xg">
            <div class="address_xg_t"><span class="edit"><a href="${pageContext.request.contextPath}/reception/Shippingaddress.jsp" target="_blank">添加新地址</a></span>收货人信息</div>
            <div class="address_xg_b">
                <table width="713" border="0" cellspacing="0" cellpadding="0" class="address_list">
                    <tr  class="address_list_t">
                        <th width="10%">收货人</th>
                        <th width="23%">所在地区</th>
                        <th width="31%">详细地址</th>
                        <th width="9%">邮编</th>
                        <th width="14%">电话/手机</th>
                        <th width="13%">操作</th>
                    </tr>
                    <c:forEach var="receiving" items="${allReceiving}">
                        <tr>
                            <input type="hidden" value="${receiving.receiving_id}">
                            <td><div align="center">${receiving.receiving_name}</div></td>
                            <td align="center">${receiving.receiving_region}</td>
                            <td align="center">${receiving.receiving_address}</td>
                            <td><div align="center">${receiving.postalcode}</div></td>
                            <td><div align="center">${receiving.receiving_phone}</div></td>
                            <td><div align="center"><a href="javascript:void(0);" class="useReceiving">使用</a></div></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <!--收货人信息end -->
    </div>
    <script type="text/javascript">jQuery(".pay_way").slide({delayTime: 0});</script>
    <!--zhifu end -->

</div>
<!--container end -->
<!--footer begin -->
<div class="footer">
    <div class="footer_t">
        <ul>
            <li><a href="javascript:void(0);"><img src="images/f1.jpg" width="130" height="52"/></a></li>
            <li><a href="javascript:void(0);"><img src="images/f2.jpg" width="130" height="52"/></a></li>
            <li><a href="javascript:void(0);"><img src="images/f3.jpg" width="130" height="52"/></a></li>
            <li class="last"><a href=""><img src="images/f4.jpg" width="130" height="52"/></a></li>
        </ul>
    </div>
    <div class="footer_b">
        <div class="footer_b1 tb1">
            <span class="f_title">购物指南</span>
            <ul>
                <li><a href="javascript:void(0);">购物流程</a></li>
                <li><a href="javascript:void(0);">发票制度</a></li>
                <li><a href="javascript:void(0);">账户管理</a></li>
                <li><a href="javascript:void(0);">会员优惠</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb2">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="javascript:void(0);">货到付款</a></li>
                <li><a href="javascript:void(0);">网上支付</a></li>
                <li><a href="javascript:void(0);">银行转账</a></li>
                <li><a href="javascript:void(0);">账户余额</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb3">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="javascript:void(0);">订单状态说明</a></li>
                <li><a href="javascript:void(0);">订单取消操作</a></li>
                <li><a href="javascript:void(0);">订单配送说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb4">
            <span class="f_title">配送方式</span>
            <ul>
                <li><a href="javascript:void(0);">配送时间及运费</a></li>
                <li><a href="javascript:void(0);">验货与签收</a></li>
                <li><a href="javascript:void(0);">订单配送查询</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb5">
            <span class="f_title">退换货</span>
            <ul>
                <li><a href="javascript:void(0);">退换货政策</a></li>
                <li><a href="javascript:void(0);">退换货流程</a></li>
                <li><a href="javascript:void(0);">退换货申请</a></li>
                <li><a href="javascript:void(0);">退款说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb6">
            <span class="f_title">商家服务</span>
            <ul>
                <li><a href="javascript:void(0);">常见问题</a></li>
                <li><a href="javascript:void(0);">找回密码</a></li>
                <li><a href="javascript:void(0);">汇款单招领</a></li>
                <li><a href="javascript:void(0);">联系客服</a></li>
            </ul>
        </div>
    </div>
    <div class="footer_m">
        <div class="footer_nav">
            <a href="javascript:void(0);">关于我们</a>|
            <a href="javascript:void(0);">联系我们</a>|
            <a href="javascript:void(0);">人才招聘</a>|
            <a href="javascript:void(0);">广告服务</a>|
            <a href="javascript:void(0);">友情链接</a>|
            <a href="javascript:void(0);">销售联盟</a>|
            <a href="javascript:void(0);">公司简介</a>
        </div>
        <div class="footer_copyright">
            Copyright © 2020-2021 版权所有
        </div>
    </div>
</div>
<!--footer end -->
</body>
</html>
<script>
    $(function () {
        $(".useReceiving").click(function () {
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/CheckReceiving",
                data:{
                    "receiving_id":$(this).parent().parent().parent().find("input[type='hidden']").val()
                },
                success:function (data) {
                    window.location="${pageContext.request.contextPath}/ShowSubmissionOrder";
                }
            });
        });
        $("input[name='search_bt']").click(function () {
            var fuzzyField = $(this).prev().val();
            if (fuzzyField != "输入你要搜索的书籍名称") {
                window.location = "${pageContext.request.contextPath}/ShowBookList?fuzzyField=" + fuzzyField;
            }
        });
    });
</script>
