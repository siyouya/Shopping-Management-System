<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.ShopDao" %>
<%@ page import="com.etc.entity.Shop" %>
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

    <title>集美二手交易网</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">


    <!-- Google font -->
    <!--<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">-->
    <link href="css/fontset.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">


    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="./assets/layui/css/layui.css">
    <link rel="stylesheet" href="./assets/css/chat.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style type="text/css">
    .getpage{
        margin-left: 10px;
        background: rgba(255,255,255,0.5);
        border-radius: 5px;
        padding: 15px;
        font-size: large;
        float: left;
    }
</style>

<body background="dance.jpg">
<%
    //int userid=(int)session.getAttribute("uid");
    ShopDao shopdao=new ShopDao();
    int totalcount=shopdao.findcount();
    List<Shop> list =(List<Shop>)request.getAttribute("shop");
    int start=(int)request.getAttribute("start");

%>
<div>
    <ul class="layui-nav">
        <li class="layui-nav-item">
            <a href="main.jsp">控制台<span class="layui-badge">9</span></a>
        </li>
        <li class="layui-nav-item">
            <a href="personInfo.jsp">个人中心<span class="layui-badge-dot"></span></a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:void(0)"><img src="https://southseast.cc/images/avatar.gif" class="layui-nav-img">我</a>
            <dl class="layui-nav-child">
                <dd><a href="personInfo.jsp">修改信息</a></dd>
                <dd><a href="personInfo.jsp">安全管理</a></dd>
                <dd><a href="login.jsp">退出</a></dd>
            </dl>
        </li>
    </ul></div>
<header>
    <!-- TOP HEADER -->

    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="#" class="logo">
                            <img src="./img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->
                <form  action="doSellerServlet"  id="form1">
                    <!-- SEARCH BAR -->
                    <div class="col-md-6">
                        <div class="header-search">
                            <%--<form action="doSellerServlet"   id="form1">--%>

                            <select class="input-select" name="shoptype" value="0" style=" margin-right: -4px;border-radius: 40px 0px 0px 40px;">
                                <option value="0">全部</option>
                                <option value="1">生活类</option>
                                <option value="2">学习类</option>
                                <option value="3">办公类</option>
                            </select>
                            <%--<input class="input"  type="hidden" name="shopname"  value="二手书">--%>
                            <input class="input"  style=" width: calc(100% - 260px);margin-right: -4px;color: darkgray;margin-top: 1px" value="" onfocus="valuechange(this)" onblur="valuechangeback(this)" name="shopname"  placeholder="Search here">

                            <button class="search-btn" style="height: 40px;
  width: 100px;
  background: #D10024;
  color: #FFF;
  font-weight: 700;
  border: none;
  border-radius: 0px 40px 40px 0px;" onclick="submits()" >搜索</button>
                            <%--</form>--%>
                        </div>
                    </div>
                    <%--<form >--%>
                    <div class="prices " >

                        <ul class="hl1">

                            <li>
                                <%--<input class="hl" placeholder="¥"  type="hidden" name="lowprice" value="0" aria-label="价格最小值">--%>
                                <input class="hl" placeholder="¥" style="color: darkgray" name="lowprice" value="0" onfocus="valuechange(this)" onblur="valuechangeback(this)" type="text" aria-label="价格最小值">
                            </li>
                            <li class="sep" style="color: white">-</li>
                            <li>
                                <%--<input class="hl" placeholder="¥" type="hidden"   name="highprice" value="99999" aria-label="价格最大值">--%>
                                <input class="hl" placeholder="¥" style="color: darkgray" type="text" value="9999" onfocus="valuechange(this)" onblur="valuechangeback(this)"  name="highprice"   aria-label="价格最大值">

                            </li>

                        </ul>
                        <font color="#f0f8ff" style="margin-left: -170px">价格¥</font>
                    </div>
                    <%--</form>--%>
                </form>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->

                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="active"><a href="main.jsp">Home</a></li>
                <li><a href="MainServlet?option=changeuser">修改信息</a></li>
                <li><a href="MainServlet?option=addshop">我要卖东西</a></li>
                <li><a href="MainServlet?option=seller">上架中的商品</a></li>
                <li><a href="MainServlet?option=order" >我的订单</a></li>

            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->
<!-- SECTION -->
<div class="section" style="height:1281px;">

    <!-- product -->

    <%
        for(Shop shop: list){
            int state=shop.getState();
            if(state==1||state==3){
                continue;
            }else {
    %>
    <div class="befpro product" style="width: 263px;height: 357px;float: left;margin: 50px 0px 30px 169px;">
        <div class="product-img">
            <img src="<%=shop.getPicture() %>" style="width: 263px;height: 263px" alt="图片加载失败" >
            <div class="product-label">

                <span class="new">NEW</span>
            </div>
        </div>
        <div class="product-body" style="height: 94px">
            <p class="product-category"></p>
            <h3 class="product-name"><a href="#"><%=shop.getShopname() %></a></h3>
            <h4 class="product-price"><%=shop.getPrice() %></h4>


        </div>
        <div class="add-to-cart">
            <button class="add-to-cart-btn"><a href="shopInfo.jsp?bid=<%=shop.getBid() %>"><i class="fa fa-shopping-cart"></i> add to cart</a></button>
        </div>
    </div>
    <!-- /product -->
    <% }%>
    <% } %>
</div>
<!-- /SECTION -->


        </div>
        <!-- /row -->
    </div>
<div align="center" style="padding: 50px">
    <!--<a value="首页" onclick="fistpage()">首页</a>
    <a value="上一页" onclick="pageup()">上一页</a>
    <a value="下一页" onclick="pagedown()">下一个</a>
    <a value="尾页" onclick="lastpage()">尾页</a>-->


    <input class="getpage" style="margin-left: 700px" type="button" value="首页" onclick="fistpage()">
    <input class="getpage" type="button" value="上一页" onclick="pageup()">
    <input class="getpage" type="button" value="下一页" onclick="pagedown()">
    <input class="getpage" type="button" value="尾页" onclick="lastpage()">
    <font color="#00ffff" size="x-large" >第<%=(start/12)+1%>页</font>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- HOT DEAL SECTION -->

<!-- /NEWSLETTER -->

<!-- FOOTER -->

<!-- /FOOTER -->

<!-- jQuery Plugins -->




<script>


    //首页
    function fistpage() {

        location="FirstPage"

    }
    //尾页
    function lastpage() {

        location="changepageServlet?start=<%=((int)totalcount/12)*12+12%>"

    }

    //上一页
    function pageup() {

        location="changepageServlet?start=<%=start-12%>"

    }
    //下一页
    function pagedown() {

        location="changepageServlet?start=<%=start+12%>"

    }



</script>

</body>

</html>
