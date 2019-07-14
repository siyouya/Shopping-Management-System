<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.*" %>
<%@ page import="com.etc.entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <base href="<%=basePath%>">

    <title>My JSP 'user1.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/carts.css">
</head>

<body style="height: 400px;width: 400px;" >
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">

            <li class="list_amount">订单编号</li>
            <li class="list_con">商品信息</li>
            <li class="list_sum">金额</li>


            <li class="list_op">操作</li>
        </ul>
    </div>


    <div class="order_content">
        <%
            int userid = (int)session.getAttribute("uid");
            OrderDao orderDao=new OrderDao();
            List<Order> list  =  orderDao.findOrder(userid);
            for(Order order:list){
                ShopDao shopDao=new ShopDao();
                int shopid=order.getSid();
                Shop shop=shopDao.queryidShop(shopid);
        %>
        <ul class="order_lists">

            <li class="list_amount">
                <div class="amount_box">
                    <%=order.getDid() %>
                </div>
            </li>
            <li class="list_con">
                <div class="list_img"><a href="javascript:;"><img src="<%=shop.getPicture() %>" alt="" style="width: 60px;height: 60px;"></a></div>
                <div class="list_text"><a href="javascript:;"><%=shop.getShopname()%></a></div>
            </li>
            <li class="list_sum">
                <p class="sum_price"><%=shop.getPrice()%></p>
            </li>



            <li class="list_op">
                <p class="del"><a href="confirmOederServlet?sid=<%=shopid %>&option=confirm" class="delBtn">确认收获</a></p>
                <p class="del"><a href="delOederServlet?sid=<%=shopid %>" class="delBtn">退款</a></p>
            </li>
        </ul>
        <%
            }
        %>
    </div>
    </div>
    <!--底部-->


    </div>
</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/carts.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">


</div>
<%--<div class="main" style="width: 700px;">
    <ul>


        <div id="pricing-table" class="clear">
            <%
                int userid = (int)session.getAttribute("uid");
                OrderDao orderDao=new OrderDao();
                List<Order> list  =  orderDao.findOrder(userid);
                for(Order order:list){
                    //User user= userdao.queryUser(userid);
                    ShopDao shopDao=new ShopDao();
                    int shopid=order.getSid();
                    Shop shop=shopDao.queryidShop(shopid);
            %>
            <div class="plan">
                <h3><%=order.getDid() %><span>订单编码</span></h3>

                <a class="signup" href="deleteshop.jsp?sid=<%=shopid  %> " >确认收货</a>
                <ul >
                    <li>商品名称 <b><%=shop.getShopname() %></b></li>
                    <li>价格 <b><%=shop.getPrice() %></b></li>
                    <li>状态<b>出货中</b></li>
                    <%--<a class="signup" href="shopInfo.jsp?sid=<%=seller.getSid()  %> " ></a>
                </ul>
            </div>
            <%
                }
            %>
        </div>
    </ul>
</div>--%>
</body>
</html>

