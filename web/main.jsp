<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.ShopDao" %>
<%@ page import="com.etc.entity.Shop" %>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <style>



      #more {
          margin-left: 14px;
          color: inherit;
      }
      body a {
          color: #3C3C3C;
      }

      div.layer{width:1190px;margin:0 auto;background-color: rgba(255,255,255,0.5);}.tbh-discover-goods,.tbh-shopping{width:1190px;float:left
                                                                                        height:658px}.layer-inner {
                                                                                                         margin-top: 10px;
                                                                                                     }.img-wrapper {
                                                                                                          background: #4f4f4f;
                                                                                                      }.goods-list a .info {
                                                                                                           overflow: hidden;
                                                                                                           padding: 0 4px 0 6px;
                                                                                                       }.personinfo{

                                                                                                        }.clearfix {
                                                                                                             zoom: 1;
                                                                                                         }.J_Module {
                                                                                                              min-height: 0;
                                                                                                              background-color: #FFF;
                                                                                                          }
      ul{margin:0;padding:0}.goods-list {
                                overflow: hidden;
                                padding-left: 21px;
                            }.goods-list a {
                                 display: block;
                                 float: left;
                                 width: 180px;
                                 overflow: hidden;
                                 margin: 0 4px 17px 0;
                             }.list235 {
                                  float: left;
                                  width: 150px;
                                  height: 150px;
                                  position: absolute;
                                  left: 0px;
                                  top: 0px;
                                  z-index: 10;
                                  background-color: rgba(255,255,255,0.2);
                              }.clearfix {
                                   zoom: 1;
                               }	ul, menu, dir {
                                        display: block;
                                        list-style-type: disc;
                                        -webkit-margin-before: 1em;
                                        -webkit-margin-after: 1em;
                                        -webkit-margin-start: 0px;
                                        -webkit-margin-end: 0px;
                                        -webkit-padding-start: 40px;
                                    }
      .have-fun, .tbh-discover-goods, .tbh-helper, .tbh-live {
          position: relative;
      }
      h3.com-hd {
          padding-left: 20px;
          margin-top: 20px;
          margin-bottom: 20px;
      }
      h4 {
          display: block;
          -webkit-margin-before: 1.33em;
          -webkit-margin-after: 1.33em;
          -webkit-margin-start: 0px;
          -webkit-margin-end: 0px;
          font-weight: bold;
      }.a-all {
           -webkit-transition: all .2s;
           -moz-transition: all .2s;
           -o-transition: all .2s;
           transition: all .2s;
       }

      .mod-hd {
          position: relative;
      }


      h1, h2, h3, h4, h5, h6 {
          font-size: 100%;
      }li {
           list-style: none;
       }
      #menu {
          font:12px verdana, arial, sans-serif;
      }
      #menu, #menu li {
          list-style:none;
          padding:0;
          margin:0;
      }
      #menu li {
          float:left;
      }
      #menu li a {
          display:block;
          /* 如果是中英文混排的文字，建议用固定宽度
          width:150px;
          height:30px;
          line-height:30px;
          text-align:center;
          */
          padding:8px 50px;
          background:  #4F4F4F;
          color:#fff;
          text-decoration:none;
          border-right:1px solid #000;
      }
      #menu li a:hover {
          background:#146C9C;
          color:#fff;
          text-decoration:none;
          border-right:1px solid #000;
      }
      #menu li a.last {
          border-right:0; /* 去掉左侧边框 */
      }
      #menu li a img{
          height: 16px;
          width: 16px;
      }


  </style>
  <body style="background: url(body1.jpg)">


  <div class="layer">
      <ul  id="menu"><div><h4 style="text-align: center;font-size: 2em;"><em>欢迎来到集美二手交易网</em></h4></div>
          <li class="">
              <a href="personInfo.jsp" option="user"  ><img class="logo" src="img/person.png" >&nbsp;&nbsp;个人信息</a>
          </li>
          <li class="">
          <li class="">
              <a href="personInfo.jsp"option="changeuser"  ><img src="img/update.png">&nbsp;&nbsp;修改信息</a>
          </li>
          <li class=""><li class="">
              <a href="personInfo.jsp" option="chat" ><img src="img/shoppingcar.png">&nbsp;&nbsp;联系管理员</a>
          </li>
          <li class=""><li class="">
              <a href="personInfo.jsp"option="seller" ><img src="img/Sell.png">&nbsp;&nbsp;我要卖东西</a>
          </li>
          <li class=""></ul><br />
      <div id="main">
          <div class="layer-inner clearfix">
              <div class="tbh-discover-goods clearfix">
                  <h3 class="mod-hd com-hd"><em>热门商品</em></h3>
                  <ul class="goods-list">
                      <a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4><p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                          </div>
                      </a>
                      <a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                              <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                          </div>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>
                  </ul>
              </div>
              <div class="tbh-discover-goods clearfix">
                  <h3 class="mod-hd com-hd"><em>全部商品</em></h3><a id="more" href="*">更多 </a>
                  <ul class="goods-list">
                      <a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                              <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                          </div>
                      </a>
                      <a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                              <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                          </div>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img class="a-all" src="//img.alicdn.com/imgextra/i1/3107144874/TB2i9NXbwkLL1JjSZFpXXa7nFXa_!!3107144874-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp" aria-labelledby="dg-item-tl-0">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">max破产都要买的口红</h4>
                          <p>《破产姐妹》max最爱Tarte哑光口红笔</p>

                      </div>
                  </a>
                  </ul>
              </div>
          </div>
      </div>
  </div>
  </body>

