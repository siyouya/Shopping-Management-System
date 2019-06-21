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
      <link href="css/style.css" rel="stylesheet">
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

      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->


  </head>


  <body background="body1.jpg">
  <!-- HEADER -->
  <%
      int userid=(int)session.getAttribute("uid");
      ShopDao shopdao=new ShopDao();
      List<Shop> list=shopdao.queryShop();
  %>
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
<form     action="">
                  <!-- SEARCH BAR -->
                  <div class="col-md-6">
                      <div class="header-search">
                          <form action="doSellerServlet"   id="form1">
                              <select class="input-select">
                                  <option value="1">生活类</option>
                                  <option value="2">学习类</option>
                                  <option value="3">办公类</option>
                              </select>
                              <input class="input"   name="shopname"  placeholder="Search here">
                              <button class="search-btn" onclick="document.getElementById('form1').submit();" >搜索</button>
                          </form>
                      </div>
                  </div>
                  <form action="searchbypriceServlet.java" id="form2">
                  <div class="prices " >

                      <ul class="hl1">
                          <li>
                              <input class="hl" placeholder="¥" id="lowprice" type="text" value="" aria-label="价格最小值">
                          </li>
                          <li class="sep">-</li>
                          <li>
                              <input class="hl" placeholder="¥" type="text"  id="highprice" value="" aria-label="价格最大值">
                          </li>
                          <li class="submit">
                              <button class="searchbt bordernon" type="button"   onclick="document.getElementById('form2').submit();">搜索</button>
                          </li>
                      </ul>




                  </div>
                  </form>
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
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="MainServlet?option=user">个人信息</a></li>
                  <li><a href="MainServlet?option=changeuser">修改信息</a></li>
                  <li><a href="MainServlet?option=chat">联系管理员</a></li>
                  <li><a href="MainServlet?option=seller">我要卖东西</a></li>
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
  <div class="section">
      <!-- container -->
      <div class="container">
          <!-- row -->
          <div class="row">
              <!-- shop -->
              <div class="col-md-4 col-xs-6">
                  <div class="shop">
                      <div class="shop-img">
                          <img src="/img/shop01.png" alt="">
                      </div>
                      <div class="shop-body">
                          <h3>生活类<br>点这里！</h3>
                          <a href="typeServlet?option=life" class="cta-btn">点击前往！<i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
              </div>
              <!-- /shop -->

              <!-- shop -->
              <div class="col-md-4 col-xs-6">
                  <div class="shop">
                      <div class="shop-img">
                          <img src="./img/shop03.png" alt="">
                      </div>
                      <div class="shop-body">
                          <h3>学习类<br>这里！这里！</h3>
                          <a href="typeServlet?option=study" class="cta-btn">点击前往！<i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
              </div>
              <!-- /shop -->

              <!-- shop -->
              <div class="col-md-4 col-xs-6">
                  <div class="shop">
                      <div class="shop-img">
                          <img src="./img/shop02.png" alt="">
                      </div>
                      <div class="shop-body">
                          <h3>办公类<br>帮手在这里</h3>
                          <a href="typeServlet?option=word" class="cta-btn">点击前往！<i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
              </div>
              <!-- /shop -->
          </div>
          <!-- /row -->
      </div>
      <!-- /container -->
  </div>
  <!-- /SECTION -->

  <!-- SECTION -->
  <div class="section">
      <!-- container -->
      <div class="container">
          <!-- row -->
          <div class="row">

              <!-- section title -->
              <div class="col-md-12">
                  <div class="section-title">
                      <h3 class="title">新品</h3>
                      <div class="section-nav">
                          <ul class="section-tab-nav tab-nav">
                              <li class="active"><a data-toggle="tab" href="#tab1">更多</a></li>
                              <!--<li><a data-toggle="tab" href="#tab1">Smartphones</a></li>-->
                              <!--<li><a data-toggle="tab" href="#tab1">Cameras</a></li>-->
                              <!--<li><a data-toggle="tab" href="#tab1">Accessories</a></li>-->
                          </ul>
                      </div>
                  </div>
              </div>
              <!-- /section title -->

              <!-- Products tab & slick -->
              <div class="col-md-12">
                  <div class="row">
                      <div class="products-tabs">
                          <!-- tab -->
                          <div id="tab1" class="tab-pane active">
                              <div class="products-slick " data-nav="#slick-nav-1">
                                  <!-- product -->

                                <%
                                    for(Shop shop: list){
                                        int state=shop.getState();
                                       if(state==1||state==3){
                                           continue;
                                       }else {
                                %>
                                  <div class="product" style="height:357px;">
                                      <div class="product-img">
                                          <img src="<%=shop.getPicture() %>" style="width: 263px;height: 263px" alt="图片加载失败" >
                                          <div class="product-label">

                                              <span class="new">NEW</span>
                                          </div>
                                      </div>
                                      <div class="product-body">
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
                              <div id="slick-nav-1" class="products-slick-nav"></div>
                          </div>
                          <!-- /tab -->
                      </div>
                  </div>
              </div>
              <!-- Products tab & slick -->
          </div>
          <!-- /row -->
      </div>
      <!-- /container -->
  </div>
  <!-- /SECTION -->

  <!-- HOT DEAL SECTION -->

  <!-- /NEWSLETTER -->

  <!-- FOOTER -->

  <!-- /FOOTER -->

  <!-- jQuery Plugins -->
  <script src="js2/jquery.min.js"></script>
  <script src="js2/bootstrap.min.js"></script>
  <script src="js2/slick.min.js"></script>
  <script src="js2/nouislider.min.js"></script>
  <script src="js2/jquery.zoom.min.js"></script>
  <script src="js2/main.js"></script>

  </body>
  <script type="text/javascript">

      $(function(){
          $("#confirm").click(function(){
              //链接地址
              location.href="doSellerServlet?op=querybyprice&lowprice="+$("#lowprice").val()+"&lowprice="
                  +$("#lowprice").val()+"&highprice="+$("#highprice").val()+"&typeid="+$("#typeid").val();
          });

      });
  </script>
</html>
