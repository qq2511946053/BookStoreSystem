<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: 25119
  Date: 2019/12/26
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购书网-购物车</title>
</head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/reception/css/style.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/reception/js/jquery.min.js"></script>
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
                    <li><a href="javascript:void(0);">购物车</a></li>
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
    <div class="list_banner"><a href=""><img src="images/list_banner.jpg" width="1100" height="92"/></a></div>
    <!--1begin -->
    <div class="buy_one">

        <div class="buy_one_t">
            <div class="buy_one_t1"><input name="allsele" type="checkbox" value="" class="sele"/>全选</div>
            <div class="buy_one_t2">商品名称</div>
            <div class="buy_one_t3">单价</div>
            <div class="buy_one_t4">数量</div>
            <div class="buy_one_t5">小计</div>
            <div class="buy_one_t6">操作</div>
        </div>

        <div class="buy_one_c">
            <ul>
                <c:forEach var="book" items="${cartList}">
                    <li>
                        <input type="hidden" value="${book.value.book_id}">
                        <div class="buy_one_c1"><input name="sele" type="checkbox" value="" class="sele"/></div>
                        <div class="buy_one_c2">
                            <div class="buy_one_c2l"><a href=""><img src="${book.value.book_img}" width="38" height="54"/></a>
                            </div>
                            <div class="buy_one_c2r">${book.value.book_name}</div>
                        </div>
                        <div class="buy_one_c3"><b class="pr1">￥${book.value.book_discountprice}</b></div>
                        <div class="buy_one_c4">
                            <div class="wrap-input2">
                                <a class="btn-reduce2">减少数量</a>
                                <a class="btn-add2">增加数量</a>
                                <input value="${book.value.book_count}" id="buy-num" class="text2">
                            </div>
                        </div>
                        <div class="buy_one_c5"><b class="pr2">￥<fmt:formatNumber value="${book.value.book_discountprice*book.value.book_count}" maxFractionDigits="2"></fmt:formatNumber></b></div>
                        <div class="buy_one_c6">
                            <div class="buy_one_c61"><a href="javascript:void(0);" class="collection">收藏</a></div>
                            <div class="buy_one_c61"><a href="javascript:void(0);" class="detele">删除</a></div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <div class="buy_one_b">
            <div class="buy_one_bleft">
                <div id="J_leftBar">

                    <a href="#" class="mr15" id="J_removeAllBtn">批量删除</a>
                </div>
            </div>
            <div class="buy_one_bright">
                <p>
                      <span class="cartsum">
                          <span id="J_totalProductCount">0</span>
                          件商品金额总计：
                      </span>
                    <span style="font-family: Arial; font-size: 14px;">&yen;</span>
                    <span class="price">0.0</span>
                </p>
                <p class="subtotal">
                    <span class="cartsum">应付总额(不含运费)：</span>
                    <span style="color: #C30; font-size: 18px; font-weight: bold; font-family: Arial;">&yen;</span>
                    <span class="price" style="width: 35px">0.0</span>
                </p>
                <p><a href="javascript:void(0);" class="ch_bt" id="ch_bt"></a></p>
            </div>
        </div>
    </div>
    <!--1end -->
    <!--hot begin -->
    <div class="buy_hot">
        <div class="buy_hot_t">热卖商品</div>
        <div class="today_b">
            <ul>
                <li>
                    <a href="javascript:void(0);">
                        <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                        <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                        <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span
                                class="yhj">优惠价<b>￥112.3</b></span></div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                        <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                        <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span
                                class="yhj">优惠价<b>￥112.3</b></span></div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                        <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                        <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span
                                class="yhj">优惠价<b>￥112.3</b></span></div>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                        <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                        <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span
                                class="yhj">优惠价<b>￥112.3</b></span></div>
                    </a>
                </li>
                <li class="last">
                    <a href="javascript:void(0);">
                        <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                        <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                        <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span
                                class="yhj">优惠价<b>￥112.3</b></span></div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!--hot end -->
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
        $('.nav_left').mouseover(function () {
            $('.category_ho').show();
        }).mouseout(function () {
            $('.category_ho').hide();
        });

        //全选按钮及反选
        $("input[name='allsele']").click(function () {
            $("input[name='sele']").prop("checked",this.checked);
            totalBookCount();
            totalBookPrice();
        });
        //单选按钮
        $("input[name='sele']").change(function () {
            var cbox=document.getElementsByName("sele");
            var sum=0;
            for(var i=0;i<cbox.length;i++){
                if(cbox[i].checked==true){
                    sum++;
                }
            }
            if (cbox.length==sum){
                $("input[name='allsele']").prop("checked",true);
            }
            else{
                $("input[name='allsele']").prop("checked",false);
            }
            totalBookCount();
            totalBookPrice();
        });
        //计算商品总数
        function totalBookCount(){
            var count=0;
            $(".text2").each(function () {
                if ($(this).parent().parent().parent().find("input[name='sele']").is(":checked")){
                    count+=parseInt($(this).val());
                }
            });
            $("#J_totalProductCount").text(count);
        }
        //计算商品总价格
        function totalBookPrice(){
            var price=0;
            $(".pr2").each(function () {
                if ($(this).parent().parent().find("input[name='sele']").is(":checked")){
                    price+=parseFloat($(this).text().substring(1));
                }
            })
            $(".price").text(price.toFixed(1));
        }
        //+按钮
        $(".btn-add2").click(function () {
            var obj=$(this);
            var bookId = $(this).parent().parent().parent().find("input[type='hidden']").val();
            $.ajax({
                type: "POST",
                dataType:"json",
                url: "${pageContext.request.contextPath}/CartOperation",
                data: {
                    "book_id": bookId,
                    "operation": "add"
                },
                success: function (data) {
                    obj.parent().find("#buy-num").val(data.num);
                    var price = obj.parent().parent().prev().find(".pr1").text().substring(1);
                    obj.parent().parent().next().find(".pr2").text("￥"+(data.num*price).toFixed(1));
                    totalBookCount();
                    totalBookPrice();
                }
            });
        });
        //-按钮
        $(".btn-reduce2").click(function () {
            var obj=$(this);
            if (obj.parent().find("#buy-num").val()>1){
                var bookId = $(this).parent().parent().parent().find("input[type='hidden']").val();
                $.ajax({
                    type: "POST",
                    dataType:"json",
                    url: "${pageContext.request.contextPath}/CartOperation",
                    data: {
                        "book_id": bookId,
                        "operation": "reduce"
                    },
                    success: function (data) {
                        obj.parent().find("#buy-num").val(data.num);
                        var price = obj.parent().parent().prev().find(".pr1").text().substring(1);
                        obj.parent().parent().next().find(".pr2").text("￥"+(data.num*price).toFixed(1));
                        totalBookCount();
                        totalBookPrice();
                    }
                });
            }
        });
        //删除按钮
        $(".detele").click(function () {
            var obj=$(this);
            var bookId = obj.parent().parent().parent().find("input[type='hidden']").val();
            $.ajax({
                type: "POST",
                dataType:"json",
                url: "${pageContext.request.contextPath}/CartOperation",
                data: {
                    "book_id": bookId,
                    "operation": "delete"
                },
                success: function (data) {
                    alert(data.result);
                    obj.parent().parent().parent().remove();
                    totalBookCount();
                    totalBookPrice();
                }
            });
        });
        //批量删除
        $("#J_removeAllBtn").click(function () {
            var arr=new Array();
            $("input[name='sele']").each(function () {
                if ($(this).is(":checked")){
                    arr.push($(this).parent().parent().find("input[type='hidden']").val());
                }
            });
            if (arr.length==0){
                alert("未选择需要删除的商品!");
            }
            else{
                $.ajax({
                    type: "POST",
                    dataType:"json",
                    url: "${pageContext.request.contextPath}/CartOperation",
                    traditional:true,
                    data: {
                        "book_id": arr,
                        "operation": "deleteAll"
                    },
                    success: function (data) {
                        $("input[name='sele']").each(function () {
                            if ($(this).is(":checked")){
                                $(this).parent().parent().remove();
                            }
                        });
                        alert(data.result);
                        totalBookCount();
                        totalBookPrice();
                    }
                });
            }
        });
        //收藏按钮
        $(".collection").click(function () {
            var obj=$(this);
            var bookId = obj.parent().parent().parent().find("input[type='hidden']").val();
            $.ajax({
                type: "POST",
                dataType:"json",
                url: "${pageContext.request.contextPath}/CartOperation",
                data: {
                    "book_id": bookId,
                    "operation": "collection"
                },
                success: function (data) {
                    alert(data.result);
                }
            });
        });
        $("#ch_bt").click(function () {
            var arr=new Array();
            $("input[name='sele']").each(function () {
                if ($(this).is(":checked")){
                    arr.push($(this).parent().parent().find("input[type='hidden']").val());
                }
            });
            if (arr.length==0){
                alert("结算失败!,未选中任何商品!");
            }
            else{
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/NewOrder",
                    traditional:true,
                    data: {
                        "data": arr,
                        "operation":"bookCartBtn"
                    },
                    success: function (data) {
                        window.location="${pageContext.request.contextPath}/ShowSubmissionOrder";
                    }
                });
            }
        });
        $("input[name='search_bt']").click(function () {
            var fuzzyField = $(this).prev().val();
            if (fuzzyField != "输入你要搜索的书籍名称") {
                window.location = "${pageContext.request.contextPath}/ShowBookList?fuzzyField=" + fuzzyField;
            }
        });
    });
</script>