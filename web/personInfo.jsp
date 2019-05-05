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
    
    <title>用户的个人信息</title>
      <link rel="stylesheet" href="./assets/layui/css/layui.css">
      <link rel="stylesheet" href="./assets/css/chat.css">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <style type="text/css">
      div{
          padding: 10px;
          margin: 10px;
      }.main{
           margin: auto;
           width: 1200px;
           background-color:rgba(255,255,255,0.5);
       }.per-list{
            float: left;
            padding: 0;
            margin-left:0 ;
            width: 41px;
            height:  400px;
            background-color: cornflowerblue;
        }.main2{
             float: left;
         }
      ul{
          padding: 0px 0px;
      }
      li{

          list-style: none;
      }

      li a{
          display: block;
          width: 25px;
          padding:8px ;
          background:  #4F4F4F;
          color:#fff;
          text-decoration:none;
          border-top:1px solid #000;
          writing-mode: tb;
      }
      li a:hover{
          background:#146C9C;
          color:#fff;
          text-decoration:none;
          border-top:1px solid #000;
      }
      li a img{
          height: 16px;
          width: 16px;
      }
      iframe{
          height: 800px;
          width: 800px;
      }.formchat{
           height: 4px;
           width: 400px;
           border: #0000FF;
       }
  </style>
  <script type="text/javascript">
      var src;
      function goto(htm){
          document.getElementById('info1').src=htm;
          src=htm;
      }
  </script>

  <body style="background: url(body1.jpg)">
  <div class="main">
      <h1 align="center">用户的个人空间</h1>
      <div class="per-list">
          <ul>
              <li class="">
                  <a  onclick="goto('user.jsp')" ><img class="logo" src="img/person.png" >个人信息</a>
              </li>
              <li class="">
              <li class="">
                  <a onclick="goto('changeuser.jsp')"><img src="img/update.png">修改信息</a>
              </li>
              <li class=""><li class="">
              <a onclick="goto('chat.html')"><img src="img/shoppingcar.png">联系管理员</a>
          </li>
              <li class=""><li class="">
              <a  onclick="goto('addshopInfo.jsp')" ><img src="img/Sell.png">我要卖东西</a>
          </li>
              </li>
              <li class=""><li class="">
              <a  onclick="goto('seller.jsp')" ><img src="img/Sell.png">上架中物品</a>
          </li>
              </li>
              <li class=""><li class="">
              <a  href="main.jsp"><img src="img/Sell.png">返回主页</a>
          </li>


          </ul>
      </div>
      <div class="main2">
          <iframe id="info1" src="<%= session.getAttribute("jsp") %>">

          </iframe>
      </div><div class="layui-layer layui-layer-iframe layui-layer-border" id="layui-layer1" type="iframe" times="1" showtime="0" contype="string" style="float: " ><iframe id="layui-layer-iframe1" name="layui-layer-iframe1" onload="this.className='';" class="" frameborder="0" src="box.html" style="width: 260px">

  </iframe>
  </div>
  </div>
  </body>