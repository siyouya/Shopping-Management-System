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
              <a href="MainServlet?option=user"  ><img class="logo" src="img/person.png" >&nbsp;&nbsp;个人信息</a>
          </li>
          <li class="">
          <li class="">
              <a href="MainServlet?option=changeuser"  ><img src="img/update.png">&nbsp;&nbsp;修改信息</a>
          </li>
          <li class=""><li class="">
              <a href="MainServlet?option=chat" ><img src="img/shoppingcar.png">&nbsp;&nbsp;联系管理员</a>
          </li>
          <li class=""><li class="">
              <a href="MainServlet?option=seller" ><img src="img/Sell.png">&nbsp;&nbsp;我要卖东西</a>
          </li>
          <li class=""></ul><br />
      <div id="main">
          <div class="layer-inner clearfix">
              <div class="tbh-discover-goods clearfix">
                  <h3 class="mod-hd com-hd"><em>热门商品</em></h3>
                  <ul class="goods-list">
                      <a href="shopInfo.jsp?option=1" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img src="//img.alicdn.com/imgextra/i1/30586343/O1CN01bF8OL81wj8kUFnDQY_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0" >新罗技G403有线电竞游戏机械鼠标</h4><p>九成新可退换</p>

                          </div>
                      </a>
                      <a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img src="//img.alicdn.com/imgextra/i3/127638968/TB2_2JihlsmBKNjSZFsXXaXSVXa_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0">Razer/雷蛇狂蛇精英版RGB台式电脑有线游戏鼠标</h4>
                              <p>八成新可退换</p>

                          </div>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i1/109114723/O1CN01xV6rkS1klB6Rb0CZN_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">达尔优牧马人鼠标EM915有线</h4>
                          <p>九成新可退换</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i2/116959060/O1CN01mqf1b42GnWqWXfRlf_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">SENNHEISER/森海塞尔 MX 375手机运动重低音入耳式音乐耳机</h4>
                          <p>七成新可退换</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i3/48737069/O1CN01NCCcpE225eIEUwjUB_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">小米 红米Redmi AirDots真无线蓝牙耳机运动迷你运动入耳式双耳</h4>
                          <p>九成新不可退还</p>

                      </div>
                  </a>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i4/176560072/O1CN01DTEoxG1CP0zxG1IwD_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">Haier/海尔 EG7012B29W 7公斤 变频全自动</h4>
                          <p>七成新可退换</p>

                      </div>
                  </a>
                  </ul>
              </div>
              <div class="tbh-discover-goods clearfix">
                  <h3 class="mod-hd com-hd"><em>全部商品</em></h3><a id="more" href="*">更多 </a>
                  <ul class="goods-list">
                      <a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img src="//img.alicdn.com/imgextra/i3/130354382/O1CN010M5MVN1iF05DnNbSk_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0">Midea/美的 MB55V30 5.5公斤KG迷你全自动波轮洗衣机宿舍小型家用</h4>
                              <p>六成新可退换</p>

                          </div>
                      </a>
                      <a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                          <div class="img-wrapper">
                              <img src="//img.alicdn.com/imgextra/i2/31195952/O1CN01qeSz0O1tq3u24xmwF_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                          </div>
                          <div class="info">
                              <h4 class="a-all" id="dg-item-tl-0">美的电风扇落地扇家用立式遥控静音宿舍台式台扇智能电扇</h4>
                              <p>九成新可退换</p>

                          </div>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i3/40278794/O1CN01fNVUNB2EphWl8J6F3_!!0-saturn_solar.jpg_220x220.jpg_.webp" data-spm-anchor-id="a2e15.8261149.07626516002.i0.4d1c29b4hV0xu4">
                      </div>
                      <div class="info">
                          <h4 class="a-all" id="dg-item-tl-0">艾美特电风扇落地扇落地遥控家用风扇落地扇台立式静音</h4>
                          <p>八成新可退换</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i4/128799332/O1CN01FW15Dp2Io6bnw2Xut_!!0-saturn_solar.jpg_220x220.jpg_.webp">
                      </div>
                      <div class="info">
                          <h4 class="a-all" style="text-decoration: underline">美的电风扇壁扇挂壁式家用壁挂式挂墙壁摇头工业遥控商用台式电扇</h4>
                          <p>八成新可退换</p>

                      </div>
                  </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i4/10198224/O1CN01K6EQQo2AcdiidHJRL_!!0-saturn_solar.jpg_220x220.jpg_.webp">

                      </div>
                      <div class="info">
                          <h4 class="a-all">希诺双层玻璃杯男加厚隔热泡茶杯家用透明水晶保温杯商务便携水杯</h4>
                          <p>九成新</p>

                      </div>
                  </a>
                      </a>					<a href="//www.taobao.com/markets/tbhome/yhh-detail?contentId=2500000200348015010&amp;scm=1007.12846.65991.0&amp;pvid=3ab9700c-1a31-4efe-b7f2-6ba229cc5a1c" role="listitem" aria-posinset="0" aria-setsize="6" class="">
                      <div class="img-wrapper">
                          <img src="//img.alicdn.com/imgextra/i4/44719097/O1CN01QQEn3l2H4TVsnLa1U_!!0-saturn_solar.jpg_220x220.jpg_.webp">

                      </div>
                      <div class="info">
                          <h4 class="a-all" >富光玻璃杯双层便携水杯男女大容量家用泡茶杯子透明带盖过滤茶杯</h4>
                          <p>九成新</p>

                      </div>
                  </a>
                  </ul>
              </div>
          </div>
      </div>
  </div>
  </body>

