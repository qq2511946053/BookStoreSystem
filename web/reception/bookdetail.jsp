<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: 25119
  Date: 2019/12/25
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购书网-书本详情</title>
</head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/reception/css/style.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/reception/js/jquery.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/reception/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/reception/js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/reception/js/base.js"></script>
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
    <div class="list_banner"><a href=""><img src="images/list_banner.jpg" width="1100" height="92"/></a></div>
    <!--banner end -->
    <!--left begin -->
    <div class="xq_left">
        <!--book begin -->
        <div class="xq_book">
            <div class="books">
                <div id="preview" class="spec-preview"><span class="jqzoom"><img style="width: 350px;height: 350px"
                                                                                 jqimg="${bookDetail.book_img}"
                                                                                 src="${bookDetail.book_img}"/></span>
                </div>
                <!--缩图开始-->
                <div class="spec-scroll"><a class="prev"></a> <a class="next"></a>
                    <div class="items">
                        <ul>
                            <c:forEach var="i" begin="1" end="6">
                                <li><img alt="" bimg="${bookDetail.book_img}" src="${bookDetail.book_img}"
                                         onmousemove="preview(this);"></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- xinxi begin -->
            <div class="books_info">
                <h1>${bookDetail.book_name}</h1>
                <div class="info">
                    <dl>
                        <dt>优&nbsp;&nbsp;惠&nbsp;&nbsp;价</dt>
                        <dd><b class="price_s">￥${bookDetail.book_discountprice}</b><span
                                class="red">（${bookDetail.book_discount*10}折）</span></dd>
                    </dl>
                    <dl>
                        <dt>定&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价</dt>
                        <dd>
                            <del>￥${bookDetail.book_price}</del>
                        </dd>
                    </dl>
                    <dl>
                        <dt>购买数量</dt>
                        <dd>
                            <div class="wrap-input">
                                <a class="btn-reduce"></a>
                                <a class="btn-add"></a>
                                <input onkeyup="" value="1" id="buy-num" class="text" readonly="readonly">
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt>已&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;售</dt>
                        <dd><span class="red">${bookDetail.book_sell}</span>件</dd>
                    </dl>
                    <dl>
                        <dt>库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存</dt>
                        <dd><span class="red">${bookDetail.book_stock}</span>件</dd>
                    </dl>
                    <dl>
                        <dt>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费</dt>
                        <dd>￥0.00 <a href="" class="red">&nbsp;&nbsp;配送说明</a></dd>
                    </dl>
                </div>
                <!--dapei begin -->
                <div class="dapei">
                    <div class="dapei_l">热门推荐</div>
                    <div class="dapei_r">
                        <ul>
                            <c:forEach var="book" items="${heatRanking}" begin="2" end="6" step="2">
                                <li>
                                    <input type="hidden" value="${book.book_id}">
                                    <div class="dapei_rli1"><img src="${book.book_img}" width="72" height="86"/></div>
                                    <div class="dapei_rli2"><a
                                            href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">${book.book_name}</a>
                                    </div>
                                    <div class="dapei_rli3"><input name="checkbox1" type="checkbox" value=""
                                                                   class="check1"/>￥${book.book_discountprice}</div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!--dapei end -->
                <div class="book_but">
                    <div class="book_but1"><a href="#" id="btn_purchase">立即购买</a></div>
                    <div class="book_but2"><a href="#" id="btn_addShopping"><i></i>加入购物车</a></div>
                </div>
            </div>
            <!-- xinxi end -->
        </div>
        <!--book end -->
        <!--book 详情 begin -->
        <div class="book_xq">
            <div class="book_xq_t">商品详情</div>
            <div class="book_xq_b">
                ${bookDetail.book_details}
            </div>
        </div>
        <!--book 详情 end -->
        <!--pinglun begin -->
        <div class="evaluate">

            <div class="evaluate_2">
                <%--                <span class="more"><a href="">查看全部评论>></a></span>--%>
                <ul class="tabbtn_3" id="normaltab_3">
                    <li class="current"><a href="">全部(${fn:length(bookDetail.commentList)})</a></li>
                </ul><!--tabbtn end-->
                <div class="tabcon_3" id="normalcon_3">
                    <div class="sublist_3">
                        <ul style="padding-bottom:20px;">
                            <c:forEach var="comment" items="${bookDetail.commentList}">
                                <li>
                                    <div class="people_pic">
                                        <c:if test="${comment.user_img==null}">
                                            <img src="images/xq_pep.jpg">
                                        </c:if>
                                        <c:if test="${comment.user_img!=null}">
                                            <img src="${comment.user_img}">
                                        </c:if>
                                        <p>${comment.user_nickname}</p>
                                    </div>
                                    <div class="pl_txt">
                                        <div class="pl_txt_1"><img src="images/star5.jpg" width="68" height="13"/></div>
                                        <div class="pl_txt_2">
                                            <p>心得：<b>${comment.comment_content}</b></p>
                                            <p style="text-indent:3em;">${comment.comment_date}</p>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div><!--tabcon end-->
                </div><!--tabbox end-->
            </div>
            <script type="text/javascript"
                    src="${pageContext.request.contextPath}/reception/js/jquery.tabso_yeso.js"></script>
            <script type="text/javascript">
                $(document).ready(function ($) {
                    //默认选项卡切换
                    $("#normaltab_3").tabso({
                        cntSelect: "#normalcon_3",
                        tabEvent: "mouseover",
                        tabStyle: "normal"
                    });

                });
            </script>
        </div>
        <!--pinglun end -->
    </div>
    <!--left end -->

    <!--right begin -->
    <div class="xq_right">
        <!--hot begin -->
        <div class="hot_books">
            <div class="hot_books_t">热销排行</div>
            <div class="hot_books_b">
                <ul>
                    <c:forEach var="book" items="${heatRanking}">
                        <li>
                            <a href="${pageContext.request.contextPath}/ShowBookDetail?bookid=${book.book_id}">
                                <div class="p-img"><img src="${book.book_img}" width="100" height="100"/></div>
                                <div class="p-name">${book.book_name}</div>
                                <div class="p-price">
                                    <strong>￥${book.book_discountprice}</strong>
                                    <span class="zhe">[${book.book_discount*10}折]</span>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <!--hot end -->
    </div>
    <!--right end -->
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
                <li><a href="">购物流程</a></li>
                <li><a href="">发票制度</a></li>
                <li><a href="">账户管理</a></li>
                <li><a href="">会员优惠</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb2">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="">货到付款</a></li>
                <li><a href="">网上支付</a></li>
                <li><a href="">银行转账</a></li>
                <li><a href="">账户余额</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb3">
            <span class="f_title">支付方式</span>
            <ul>
                <li><a href="">订单状态说明</a></li>
                <li><a href="">订单取消操作</a></li>
                <li><a href="">订单配送说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb4">
            <span class="f_title">配送方式</span>
            <ul>
                <li><a href="">配送时间及运费</a></li>
                <li><a href="">验货与签收</a></li>
                <li><a href="">订单配送查询</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb5">
            <span class="f_title">退换货</span>
            <ul>
                <li><a href="">退换货政策</a></li>
                <li><a href="">退换货流程</a></li>
                <li><a href="">退换货申请</a></li>
                <li><a href="">退款说明</a></li>
            </ul>
        </div>
        <div class="footer_b1 tb6">
            <span class="f_title">商家服务</span>
            <ul>
                <li><a href="">常见问题</a></li>
                <li><a href="">找回密码</a></li>
                <li><a href="">汇款单招领</a></li>
                <li><a href="">联系客服</a></li>
            </ul>
        </div>
    </div>
    <div class="footer_m">
        <div class="footer_nav">
            <a href="">关于我们</a>|
            <a href="">联系我们</a>|
            <a href="">人才招聘</a>|
            <a href="">广告服务</a>|
            <a href="">友情链接</a>|
            <a href="">销售联盟</a>|
            <a href="">公司简介</a>
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
        if (${bookDetail.book_stock==0}) {
            alert("抱歉,此商品已经售空！");
        }
        $(".btn-add").click(function () {
            var i = $("#buy-num").val();
            if (${bookDetail.book_stock}>i)
            {
                i++;
                $("#buy-num").val(i);
            }
        });
        $(".btn-reduce").click(function () {
            var i = $("#buy-num").val();
            if (i > 1) {
                i--;
                $("#buy-num").val(i);
            }
        });
        //加入购物车
        $("#btn_addShopping").click(function () {
            if ($("#buy-num").val() >${bookDetail.book_stock}) {
                alert("加入购物车失败！库存不足！")
            } else {
                <%--$.ajax({--%>
                <%--    type: "POST",--%>
                <%--    url: "${pageContext.request.contextPath}/AddShopping",--%>
                <%--    data: {--%>
                <%--        "bookid": "${bookDetail.book_id}",--%>
                <%--        "book_img": "${bookDetail.book_img}",--%>
                <%--        "book_name": "${bookDetail.book_name}",--%>
                <%--        "book_discountprice": "${bookDetail.book_discountprice}",--%>
                <%--        "book_count": $("#buy-num").val()--%>
                <%--    },--%>
                <%--    success: function (data) {--%>
                <%--        alert("已成功加入购物车！");--%>
                <%--    },--%>
                <%--    error: function () {--%>
                <%--        alert("加入购物车失败！");--%>
                <%--    }--%>
                <%--});--%>
                var arr=new Array();
                arr.push({
                    "book_id": "${bookDetail.book_id}",
                    "book_img": "${bookDetail.book_img}",
                    "book_name": "${bookDetail.book_name}",
                    "book_discountprice": "${bookDetail.book_discountprice}",
                    "book_count": $("#buy-num").val()
                });
                $("input[name='checkbox1']").each(function () {
                    if ($(this).is(":checked")){
                        arr.push({
                            "book_id":$(this).parent().parent().find("input[type='hidden']").val(),
                            "book_img": $(this).parent().parent().find(".dapei_rli1>img").attr("src"),
                            "book_name": $(this).parent().parent().find(".dapei_rli2>a").text(),
                            "book_discountprice": $(this).parent().text().substring(1)
                        });
                    }
                });
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/AddShopping",
                    traditional:true,
                    data:{
                        "data":JSON.stringify(arr)
                    },
                    success: function (data) {
                        alert("已成功加入购物车！");
                    },
                    error:function () {
                        alert("加入购物车失败！");
                    }
                });

            }
        });
        //立即购买按钮
        $("#btn_purchase").click(function () {
            if ($("#buy-num").val() >${bookDetail.book_stock}) {
                alert("购买失败！库存不足！")
            } else {
                var arr=new Array();
                arr.push({
                    "book_id": "${bookDetail.book_id}",
                    "book_img": "${bookDetail.book_img}",
                    "book_name": "${bookDetail.book_name}",
                    "book_discountprice": "${bookDetail.book_discountprice}",
                    "book_count": $("#buy-num").val()
                });
                <%--arr.push("{book_id:${bookDetail.book_id},book_img:${bookDetail.book_img},book_name:${bookDetail.book_name},book_discountprice:${bookDetail.book_discountprice},book_count:"+$("#buy-num").val()+"}");--%>
                $("input[name='checkbox1']").each(function () {
                    if ($(this).is(":checked")){
                       arr.push({
                           "book_id":$(this).parent().parent().find("input[type='hidden']").val(),
                           "book_img": $(this).parent().parent().find(".dapei_rli1>img").attr("src"),
                           "book_name": $(this).parent().parent().find(".dapei_rli2>a").text(),
                           "book_discountprice": $(this).parent().text().substring(1)
                       });
                    }
                });
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/NewOrder",
                    traditional:true,
                    data:{
                        "data":JSON.stringify(arr),
                        "operation":"bookDetailBtn"
                    },
                    success: function (data) {
                        window.location="${pageContext.request.contextPath}/ShowSubmissionOrder";
                    }
                });
            }
        });

    });
</script>
