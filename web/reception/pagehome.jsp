<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 25119
  Date: 2019/12/23
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购书网-首页</title>
</head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/reception/css/style.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/reception/js/jquery.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/reception/js/jquery.SuperSlide.2.1.1.js"></script>
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
            <div class="nav_left">全部分类</div>
            <div class="nav_right">
                <ul>
                    <li><a href="#">首页</a></li>
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
    <!--1 begin -->
    <div class="con_one">
        <!--left begin -->
        <div class="con_one_left">
            <!--fenlei begin -->
            <div class="category">
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
            <!--fenlei end -->
            <!--hot begin -->
            <div class="hotsell">
                <div class="hotsell_t">热销排行榜</div>
                <div class="hotsell_b">
                    <ul>
                        <c:forEach var="book" items="${data.heatRanking}" varStatus="i">
                            <li>
                                <div class="dis_pi"><a
                                        href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}"><img
                                        src="${book.book_img}" width="70" height="82" alt="" title=""/></a> <span
                                        class="pic_r"><em>${book.book_name}</em> <i>￥${book.book_discountprice}</i> <del>￥${book.book_price} </del> </span>
                                </div>
                                <p>
                                    <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">${book.book_name}</a>
                                </p>
                                <div class="${i.index<3?"num lbg":"num"}">${i.index+1}</div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">
                jQuery(".hotsell_b").slide({titCell: "li", triggerTime: 0});
            </script>

            <!--hot end -->
            <div class="clearfloat"></div>
            <!--ads1 begin -->
            <div class="ads1">
                <ul>
                    <li><a href="#"><img src="images/ad1.jpg" width="235" height="115"/></a></li>
                    <li><a href="#"><img src="images/ad2.jpg" width="235" height="115"/></a></li>
                </ul>
            </div>
            <!--ads1 end -->
        </div>
        <!--left end -->
        <!--right begin -->
        <div class="con_one_right">
            <!--banner begin -->
            <div class="banner">
                <ul class="pic">
                    <li><a href="#"><img src="images/banner1.jpg" width="856" height="335"/></a></li>
                    <li><a href="#"><img src="images/banner1.jpg" width="856" height="335"/></a></li>
                    <li><a href="#"><img src="images/banner1.jpg" width="856" height="335"/></a></li>
                </ul>
                <ul class="hd">
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <script type="text/javascript">
                jQuery(".banner").slide({mainCell: ".pic", effect: "left", autoPlay: true, delayTime: 300});
            </script>
            <!--banner end -->
            <!--new book begin -->
            <div class="newbook">
                <div class="hd">
                    <h2>新书上架</h2>
                    <a class="next"></a>
                    <a class="prev"></a>
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
                <div class="bd">
                    <ul>
                        <c:forEach var="book" items="${data.newBookRanking}">
                            <li>
                                <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                    <div class="imgs"><img src="${book.book_img}" width="135" height="157" alt=""
                                                           title=""/></div>
                                    <h3>${book.book_name}</h3>
                                    <div class="shou">
                                        <span class="shou_l">已售：<b class="red">${book.book_sell}</b></span>
                                        <span class="shou_r">收藏：<b class="red">${book.book_collection}</b></span>
                                    </div>
                                    <div class="price">￥${book.book_discountprice}</div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

            </div>
            <script type="text/javascript">jQuery(".newbook").slide({
                mainCell: ".bd ul",
                effect: "left",
                delayTime: 800,
                vis: 5,
                scroll: 1,
                pnLoop: false,
                trigger: "click",
                easing: "easeOutCubic"
            });</script>

            <!--new book end -->

            <!--hot tj begin -->
            <div class="hottj">
                <div class="hd">
                    <h2> 热门推荐</h2>
                    <ul>
                        <li>小学</li>
                        <li>初中</li>
                        <li>高中</li>
                        <li>教育</li>
                        <li>工具书</li>
                        <li>期刊</li>
                    </ul>
                </div>
                <div class="bd">
                    <ul class="tjul">
                        <c:forEach var="book" items="${data.primarySchoolBook}" varStatus="i">
                            <li ${(i.index+1)%5==0?"class='last'":""}>
                                <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                    <div class="imgs"><img src="${book.book_img}" width="132" height="180" alt=""
                                                           title=""/></div>
                                    <h3>${book.book_name}</h3>
                                    <div class="shou">
                                        <span class="shou_l">已售：<b class="red">${book.book_sell}</b></span>
                                        <span class="shou_r">收藏：<b class="red">${book.book_collection}</b></span>
                                    </div>
                                    <div class="price">￥${book.book_discountprice}</div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                    <ul class="tjul">
                        <c:forEach var="book" items="${data.middleSchoolBook}" varStatus="i">
                            <li ${(i.index+1)%5==0?"class='last'":""}>
                                <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                    <div class="imgs"><img src="${book.book_img}" width="132" height="180" alt=""
                                                           title=""/></div>
                                    <h3>${book.book_name}</h3>
                                    <div class="shou">
                                        <span class="shou_l">已售：<b class="red">${book.book_sell}</b></span>
                                        <span class="shou_r">收藏：<b class="red">${book.book_collection}</b></span>
                                    </div>
                                    <div class="price">￥${book.book_discountprice}</div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                    <ul class="tjul">
                        <c:forEach var="book" items="${data.highSchoolBook}" varStatus="i">
                            <li ${(i.index+1)%5==0?"class='last'":""}>
                                <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                    <div class="imgs"><img src="${book.book_img}" width="132" height="180" alt=""
                                                           title=""/></div>
                                    <h3>${book.book_name}</h3>
                                    <div class="shou">
                                        <span class="shou_l">已售：<b class="red">${book.book_sell}</b></span>
                                        <span class="shou_r">收藏：<b class="red">${book.book_collection}</b></span>
                                    </div>
                                    <div class="price">￥${book.book_discountprice}</div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                    <ul class="tjul">
                        <c:forEach var="book" items="${data.educationBook}" varStatus="i">
                            <li ${(i.index+1)%5==0?"class='last'":""}>
                                <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                    <div class="imgs"><img src="${book.book_img}" width="132" height="180" alt=""
                                                           title=""/></div>
                                    <h3>${book.book_name}</h3>
                                    <div class="shou">
                                        <span class="shou_l">已售：<b class="red">${book.book_sell}</b></span>
                                        <span class="shou_r">收藏：<b class="red">${book.book_collection}</b></span>
                                    </div>
                                    <div class="price">￥${book.book_discountprice}</div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                    <ul class="tjul">
                        <c:forEach var="book" items="${data.referenceBook}" varStatus="i">
                            <li ${(i.index+1)%5==0?"class='last'":""}>
                                <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                    <div class="imgs"><img src="${book.book_img}" width="132" height="180" alt=""
                                                           title=""/></div>
                                    <h3>${book.book_name}</h3>
                                    <div class="shou">
                                        <span class="shou_l">已售：<b class="red">${book.book_sell}</b></span>
                                        <span class="shou_r">收藏：<b class="red">${book.book_collection}</b></span>
                                    </div>
                                    <div class="price">￥${book.book_discountprice}</div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                    <ul class="tjul">
                        <c:forEach var="book" items="${data.periodicalBook}" varStatus="i">
                            <li ${(i.index+1)%5==0?"class='last'":""}>
                                <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                    <div class="imgs"><img src="${book.book_img}" width="132" height="180" alt=""
                                                           title=""/></div>
                                    <h3>${book.book_name}</h3>
                                    <div class="shou">
                                        <span class="shou_l">已售：<b class="red">${book.book_sell}</b></span>
                                        <span class="shou_r">收藏：<b class="red">${book.book_collection}</b></span>
                                    </div>
                                    <div class="price">￥${book.book_discountprice}</div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                </div>
            </div>
            <script type="text/javascript">jQuery(".hottj").slide({delayTime: 0});</script>
            <!--hot tj end -->
        </div>
        <!--right end -->
    </div>
    <!--1 end -->
    <!--ads2 beign -->
    <div class="ads2">
        <ul>
            <li><a href="#"><img src="images/b1.jpg" width="360" height="125"/></a></li>
            <li><a href="#"><img src="images/b2.jpg" width="360" height="125"/></a></li>
            <li class="last"><a href="#"><img src="images/b3.jpg" width="360" height="125"/></a></li>
        </ul>
    </div>
    <!--ads2 end -->

    <!--today begin -->
    <div class="today">
        <div class="today_t">今日特价</div>
        <div class="today_b">
            <ul>
                <c:forEach var="book" items="${data.disCountBookRanking}" varStatus="i">
                    <li ${(i.index+1)%5==0?"class='last'":""}>
                        <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                            <div class="pics"><img src="${book.book_img}" width="178" height="168" alt="" title=""/>
                            </div>
                            <div class="tt">${book.book_name}</div>
                            <div class="no_price"><span class="xj">￥${book.book_discountprice}</span><span class="cj"><del>￥${book.book_price}</del></span>
                            </div>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!--today end -->
</div>
<!--container end -->
<!--footer begin -->
<div class="footer">
    <div class="footer_t">
        <ul>
            <li><a href="#"><img src="images/f1.jpg" width="130" height="52"/></a></li>
            <li><a href="#"><img src="images/f2.jpg" width="130" height="52"/></a></li>
            <li><a href="#"><img src="images/f3.jpg" width="130" height="52"/></a></li>
            <li class="last"><a href=""><img src="images/f4.jpg" width="130" height="52"/></a></li>
        </ul>
    </div>
    <div class="footer_b">
        <div class="footer_b1 tb1">
            <span class="f_title">购物指南</span>
            <ul>
                <li><a href="#">购物流程</a></li>
                <li><a href="#">发票制度</a></li>
                <li><a href="#">账户管理</a></li>
                <li><a href="#">会员优惠</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb2">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="#">货到付款</a></li>
                <li><a href="#">网上支付</a></li>
                <li><a href="#">银行转账</a></li>
                <li><a href="#">账户余额</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb3">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="#">订单状态说明</a></li>
                <li><a href="#">订单取消操作</a></li>
                <li><a href="#">订单配送说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb4">
            <span class="f_title">配送方式</span>
            <ul>
                <li><a href="#">配送时间及运费</a></li>
                <li><a href="#">验货与签收</a></li>
                <li><a href="#">订单配送查询</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb5">
            <span class="f_title">退换货</span>
            <ul>
                <li><a href="#">退换货政策</a></li>
                <li><a href="#">退换货流程</a></li>
                <li><a href="#">退换货申请</a></li>
                <li><a href="#">退款说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb6">
            <span class="f_title">商家服务</span>
            <ul>
                <li><a href="#">常见问题</a></li>
                <li><a href="#">找回密码</a></li>
                <li><a href="#">汇款单招领</a></li>
                <li><a href="#">联系客服</a></li>
            </ul>
        </div>
    </div>
    <div class="footer_m">
        <div class="footer_nav">
            <a href="#">关于我们</a>|
            <a href="#">联系我们</a>|
            <a href="#">人才招聘</a>|
            <a href="#">广告服务</a>|
            <a href="#">友情链接</a>|
            <a href="#">销售联盟</a>|
            <a href="#">公司简介</a>
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
        $("input[name='search_bt']").click(function () {
            var fuzzyField = $(this).prev().val();
            if (fuzzyField != "输入你要搜索的书籍名称") {
                window.location = "${pageContext.request.contextPath}/ShowBookList?fuzzyField=" + fuzzyField;
            }
        });
    });
</script>
