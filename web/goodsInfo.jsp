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
<link rel="stylesheet" href="assets/css/info.css">
  </head>

  <body background="img/body1.jpg" onload="imagchange1()">
  <div class="main">
      <div class="goodinfo">
          <div class="goodsimg">
              <ul>
                  <li id="img01"><img src="img/person.png" /></li>

              </ul>
          </div>
          <div class="goodsintro">
              商品介绍：这是一个来自意大利的p
              <br />
              预估价：<font style="color: red; font-size: xx-large;">100</font>
          </div>
          <div id="chat" class="goodsintro2">
              卖家：<p>金还</p><br />
              联系电话：<p>123456</p><br />
              联系QQ：<p>123456</p><br />
          </div>
      </div>
  </div>
  </body>
</html>

