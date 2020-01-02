<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: 25119
  Date: 2019/12/24
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购书网-列表</title>
</head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/reception/css/style.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/reception/js/jquery.min.js"></script>
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
                <input name="search_txt" type="text" class="search_txt" value="${data.fuzzyField==null?"输入你要搜索的书籍名称":data.fuzzyField}"
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
                    <li><a href="javascript:void(0);">商品列表</a></li>
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
    <div class="list_banner"><a href="javascript:void(0);"><img src="images/list_banner.jpg" width="1100" height="92"/></a></div>
    <!--banner end -->
    <div class="list_dq">
        <a href="${pageContext.request.contextPath}/ShowBookList" target="_self">商品列表</a>
        <c:if test="${data.typeName!=null}">
            <c:if test="${data.typeDetailName==null}">
                > ${data.typeName}
            </c:if>
            <c:if test="${data.typeDetailName!=null}">
                > <a
                    href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}">${data.typeName} </a>
                > ${data.typeDetailName}
            </c:if>
        </c:if>
    </div>
    <!--fenlei begin -->
    <div class="list_fl">
        <dl>
            <dt>类别：</dt>
            <dd>
                <c:if test="${data.typeName==null}">
                    <a class="active">全部</a>
                </c:if>
                <c:if test="${data.typeName!=null}">
                    <a href="${pageContext.request.contextPath}/ShowBookList?fuzzyField=${data.fuzzyField}&discount=${data.discountInfo}&sortRule=${data.sortRule}">全部</a>
                </c:if>
                <c:forEach var="name" items="${data.bookTypeNames}">
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${name.booktype_name}&fuzzyField=${data.fuzzyField}&discount=${data.discountInfo}&sortRule=${data.sortRule}"
                       class="${data.typeName==name.booktype_name?"active":""}">${name.booktype_name}</a>
                </c:forEach>
            </dd>
        </dl>
        <dl>
            <dt>详细：</dt>
            <dd>
                <c:if test="${data.typeDetailName==null}">
                    <a class="active">全部</a>
                </c:if>
                <c:if test="${data.typeDetailName!=null}">
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&fuzzyField=${data.fuzzyField}&discount=${data.discountInfo}&sortRule=${data.sortRule}">全部</a>
                </c:if>
                <c:forEach var="detailname" items="${data.bookTypeDetailNames}">
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${detailname.booktype_detailname}&fuzzyField=${data.fuzzyField}&discount=${data.discountInfo}&sortRule=${data.sortRule}"
                       class="${data.typeDetailName==detailname.booktype_detailname?"active":""}">${detailname.booktype_detailname}</a>
                </c:forEach>
            </dd>
        </dl>
        <dl style="border-bottom:none;">
            <dt>折扣：</dt>
            <dd>
                <c:if test="${data.discountInfo==null}">
                    <a class="active">全部</a>
                </c:if>
                <c:if test="${data.discountInfo!=null}">
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&fuzzyField=${data.fuzzyField}&sortRule=${data.sortRule}">无折扣</a>
                </c:if>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=0-3&fuzzyField=${data.fuzzyField}&sortRule=${data.sortRule}"
                   class="${data.discountInfo=="0-3"?"active":""}">3折以下</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=3-5&fuzzyField=${data.fuzzyField}&sortRule=${data.sortRule}"
                   class="${data.discountInfo=="3-5"?"active":""}">3-5折</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=5-7&fuzzyField=${data.fuzzyField}&sortRule=${data.sortRule}"
                   class="${data.discountInfo=="5-7"?"active":""}">5-7折</a>
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=7-10&fuzzyField=${data.fuzzyField}&sortRule=${data.sortRule}"
                   class="${data.discountInfo=="7-10"?"active":""}">7折以上</a>
            </dd>
        </dl>
    </div>
    <!--fenlei end -->
    <!--paixu begin -->
    <div class="paixu">
        <div class="number">共有<span class="red">${data.pageDataList.dataCount}</span>个商品</div>
        <ul>
            <li class="li1">排序</li>
            <c:if test="${data.sortRule==null}">
                <li class="active">默认排序</li>
                <li>
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&discount=7-10&fuzzyField=${data.fuzzyField}&sortRule=selldesc">销量<b><img
                            src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
                <li>
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&discount=7-10&fuzzyField=${data.fuzzyField}&sortRule=priceasc">价格<b><img
                            src="images/list_jts.jpg" width="7" height="8"/></b></a></li>
                <li>
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&discount=7-10&fuzzyField=${data.fuzzyField}&sortRule=datedesc">出版时间<b><img
                            src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
            </c:if>
            <c:if test="${data.sortRule!=null}">
                <li>
                    <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&fuzzyField=${data.fuzzyField}">默认排序</a>
                </li>
                <c:if test="${data.sortRule=='sellasc'}">
                    <li class="active"><a
                            href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=selldesc&fuzzyField=${data.fuzzyField}">销量<b><img
                            src="images/list_jts.jpg" width="7" height="8"/></b></a></li>
                </c:if>
                <c:if test="${data.sortRule=='selldesc'}">
                    <li class="active"><a
                            href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=sellasc&fuzzyField=${data.fuzzyField}">销量<b><img
                            src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
                </c:if>
                <c:if test="${data.sortRule!='sellasc'&&data.sortRule!='selldesc'}">
                    <li>
                        <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=selldesc&fuzzyField=${data.fuzzyField}">销量<b><img
                                src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
                </c:if>

                <c:if test="${data.sortRule=='priceasc'}">
                    <li class="active"><a
                            href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=pricedesc&fuzzyField=${data.fuzzyField}">价格<b><img
                            src="images/list_jts.jpg" width="7" height="8"/></b></a></li>
                </c:if>
                <c:if test="${data.sortRule=='pricedesc'}">
                    <li class="active"><a
                            href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=priceasc&fuzzyField=${data.fuzzyField}">价格<b><img
                            src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
                </c:if>
                <c:if test="${data.sortRule!='priceasc'&&data.sortRule!='pricedesc'}">
                    <li>
                        <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=priceasc&fuzzyField=${data.fuzzyField}">价格<b><img
                                src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
                </c:if>

                <c:if test="${data.sortRule=='dateasc'}">
                    <li class="active"><a
                            href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=datedesc&fuzzyField=${data.fuzzyField}">出版时间<b><img
                            src="images/list_jts.jpg" width="7" height="8"/></b></a></li>
                </c:if>
                <c:if test="${data.sortRule=='datedesc'}">
                    <li class="active"><a
                            href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=dateasc&fuzzyField=${data.fuzzyField}">出版时间<b><img
                            src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
                </c:if>
                <c:if test="${data.sortRule!='dateasc'&&data.sortRule!='datedesc'}">
                    <li>
                        <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=datedesc&fuzzyField=${data.fuzzyField}">出版时间<b><img
                                src="images/list_jtx.jpg" width="7" height="8"/></b></a></li>
                </c:if>
            </c:if>
        </ul>
    </div>
    <!--paixu end -->
    <div class="clearfloat"></div>
    <!--today begin -->
    <div class="today">
        <div class="today_b">
            <ul>
                <c:forEach var="book" items="${data.pageDataList.list}" varStatus="i">
                    <li ${(i.index+1)%5==0?"class='last'":""}>
                        <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                            <div class="pics"><img src="${book.book_img}" width="178" height="168" alt="" title=""/>
                            </div>
                            <div class="tt">${book.book_name}</div>
                            <div class="no_price"><span class="dj">定价：<del>￥${book.book_price}</del></span><span
                                    class="yhj">优惠价<b>￥${book.book_discountprice}</b></span></div>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!--today end -->
    <!--page begin -->
    <div style="clear:both;"></div>
    <div class="pages">
        <c:if test="${data.pageDataList.showFirstPage}">
            <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=${data.sortRule}&fuzzyField=${data.fuzzyField}"><<</a>
        </c:if>
        <c:if test="${data.pageDataList.showPrevious}">
            <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=${data.sortRule}&index=${data.pageDataList.pageIndex-1}&fuzzyField=${data.fuzzyField}"><</a>
        </c:if>
        <c:forEach items="${data.pageDataList.pageList}" var="i">
            <c:if test="${i==data.pageDataList.pageIndex}">
                <span class="current">${i}</span>
            </c:if>
            <c:if test="${i!=data.pageDataList.pageIndex}">
                <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=${data.sortRule}&index=${i}&fuzzyField=${data.fuzzyField}">${i}</a>
            </c:if>
        </c:forEach>
        <c:if test="${data.pageDataList.showNext}">
            <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=${data.sortRule}&index=${data.pageDataList.pageIndex+1}&fuzzyField=${data.fuzzyField}">></a>
        </c:if>
        <c:if test="${data.pageDataList.showEndPage}">
            <a href="${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=${data.sortRule}&index=${data.pageDataList.totalCount}&fuzzyField=${data.fuzzyField}">>></a>
        </c:if>

        <%--        共${pageList.totalCount}页，到第<input type="text" name="jumpto" class="ui-page-skipTo" size="3">页--%>
        <%--        <button type="submit" class="ui-btn-s" id="btn_jump">跳转</button>--%>

    </div>
    <div style="clear:both;"></div>
    <!--page begin -->
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
        $("input[name='search_bt']").click(function () {
            var fuzzyField = $(this).prev().val();
            if (fuzzyField != "输入你要搜索的书籍名称") {
                window.location = "${pageContext.request.contextPath}/ShowBookList?fuzzyField=" + fuzzyField;
            }
            if (fuzzyField=="输入你要搜索的书籍名称"||fuzzyField==""){
                window.location = "${pageContext.request.contextPath}/ShowBookList?typename=${data.typeName}&typedetailname=${data.typeDetailName}&discount=${data.discountInfo}&sortRule=${data.sortRule}";
            }
        });
    });
</script>
