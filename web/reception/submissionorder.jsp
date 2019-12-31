<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>购书网-提交订单</title>
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
                <a href="">请登陆</a>
                <a href="">免费注册</a>
            </div>
            <div class="header_1_r">
                <ul>
                    <li><a href="">我的订单</a></li>
                    <li><a href="">购物车<span class="red">0</span>件</a></li>
                    <li><a href="">帮助中心</a></li>
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
                    <li><a href="#">我的订单</a></li>
                    <li><a href="#">个人中心</a></li>
                    <li><a href="#">客户服务</a></li>
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
    <div class="list_banner"><a href="" target="_blank"><img src="images/list_banner.jpg" width="1100" height="92"/></a>
    </div>
    <!--1begin -->
    <div class="buy_one">

        <div class="buy_one_t">
            <div class="buy_one_t1"></div>
            <div class="buy_one_t2">商品名称</div>
            <div class="buy_one_t3">单价</div>
            <div class="buy_one_t4">数量</div>
            <div class="buy_one_t5">小计</div>
        </div>

        <div class="buy_one_c">
            <ul>
                <c:forEach var="book" items="${sessionScope.userInfo.orderListDto.orderList}">
                    <li>
                        <div class="buy_one_c1"></div>
                        <div class="buy_one_c2">
                            <div class="buy_one_c2l"><a href=""><img src="${book.book_img}" width="38" height="54"/></a>
                            </div>
                            <div class="buy_one_c2r">${book.book_name}</div>
                        </div>
                        <div class="buy_one_c3"><b class="pr1">￥${book.book_discountprice}</b></div>
                        <div class="buy_one_c4">${book.book_count}</div>
                        <div class="buy_one_c5"><b class="pr2">￥<fmt:formatNumber type="number" value="${book.book_discountprice*book.book_count}" maxFractionDigits="2"></fmt:formatNumber>
                        </b></div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <!--收货人信息beign -->
        <div class="address_xg">
            <div class="address_xg_t"><span class="edit"><a href="${pageContext.request.contextPath}/ShowUpdateOrderReceiving">切换地址</a></span>收货人信息</div>
            <div class="address_xg_b">
                <c:if test="${sessionScope.userInfo.orderListDto.receiving!=null}">
                    <dl>
                        <dt>收货人姓名：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled"
                                   value="${sessionScope.userInfo.orderListDto.receiving.receiving_name}"/></dd>
                    </dl>
                    <dl>
                        <dt>收货地区：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled"
                                   value="${sessionScope.userInfo.orderListDto.receiving.receiving_region}${sessionScope.userInfo.orderListDto.receiving.receiving_address}"/></dd>
                    </dl>
                    <dl>
                        <dt>邮编：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled"
                                   value="${sessionScope.userInfo.orderListDto.receiving.postalcode}"/></dd>
                    </dl>
                    <dl>
                        <dt>手机：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled"
                                   value="${sessionScope.userInfo.orderListDto.receiving.receiving_phone}"/></dd>
                    </dl>
                </c:if>
                <c:if test="${sessionScope.userInfo.orderListDto.receiving==null}">
                    没有默认收获地址
                </c:if>
            </div>
        </div>
        <!--收货人信息end -->
        <div class="buy_one_z">
            <p>商品金额：￥${sessionScope.userInfo.orderListDto.sumPrice}</p>
            <p>应付纵总额（含运费）：<b>￥${sessionScope.userInfo.orderListDto.sumPrice}</b></p>
            <p><a href="javascript:void(0);" class="z_bt"></a></p>
        </div>
    </div>
    <script type="text/javascript">jQuery(".pay_way").slide({delayTime: 0});</script>
    <!--zhifu end -->

</div>
<!--container end -->
<!--footer begin -->
<div class="footer">
    <div class="footer_t">
        <ul>
            <li><a href=""><img src="images/f1.jpg" width="130" height="52"/></a></li>
            <li><a href=""><img src="images/f2.jpg" width="130" height="52"/></a></li>
            <li><a href=""><img src="images/f3.jpg" width="130" height="52"/></a></li>
            <li class="last"><a href=""><img src="images/f4.jpg" width="130" height="52"/></a></li>
        </ul>
    </div>
    <div class="footer_b">
        <div class="footer_b1 tb1">
            <span class="f_title">购物指南</span>
            <ul>
                <li><a href="" target="_blank">购物流程</a></li>
                <li><a href="" target="_blank">发票制度</a></li>
                <li><a href="" target="_blank">账户管理</a></li>
                <li><a href="" target="_blank">会员优惠</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb2">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="" target="_blank">货到付款</a></li>
                <li><a href="" target="_blank">网上支付</a></li>
                <li><a href="" target="_blank">银行转账</a></li>
                <li><a href="" target="_blank">账户余额</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb3">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="" target="_blank">订单状态说明</a></li>
                <li><a href="" target="_blank">订单取消操作</a></li>
                <li><a href="" target="_blank">订单配送说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb4">
            <span class="f_title">配送方式</span>
            <ul>
                <li><a href="" target="_blank">配送时间及运费</a></li>
                <li><a href="" target="_blank">验货与签收</a></li>
                <li><a href="" target="_blank">订单配送查询</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb5">
            <span class="f_title">退换货</span>
            <ul>
                <li><a href="" target="_blank">退换货政策</a></li>
                <li><a href="" target="_blank">退换货流程</a></li>
                <li><a href="" target="_blank">退换货申请</a></li>
                <li><a href="" target="_blank">退款说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb6">
            <span class="f_title">商家服务</span>
            <ul>
                <li><a href="" target="_blank">常见问题</a></li>
                <li><a href="" target="_blank">找回密码</a></li>
                <li><a href="" target="_blank">汇款单招领</a></li>
                <li><a href="" target="_blank">联系客服</a></li>
            </ul>
        </div>
    </div>
    <div class="footer_m">
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
            网络文化经营许可证鄂网文[2015]0278-060号 Copyright © 2015-2018 版权所有
        </div>
    </div>

</div>
<!--footer end -->
</body>
</html>
<script>
    $(function () {
        $(".z_bt").click(function () {
            if (${sessionScope.userInfo.orderListDto.receiving!=null}){
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/SubmitOrder",
                    dataType:"json",
                    success:function (data) {
                        alert(data.result);
                    }
                });
            }
            else{
                alert("请填写收获地址")
            }
        });
    });
</script>