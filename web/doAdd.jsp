<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.ShopDao" %>
<%@ page import="com.etc.entity.Shop" %>
<%@ page import="com.etc.entity.ShopType" %>
<%@ page import="com.etc.dao.UserDao" %>
<%@ page import="sun.awt.SunHints" %>
<%@ page import="com.etc.entity.User" %>
<%@ page import="javax.swing.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
    
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int uid=(int)session.getAttribute("uid");
        String shopname  = request.getParameter("shopname");
        int shoptypename  = Integer.valueOf(request.getParameter("shoptypename"));
        int price= Integer.valueOf(request.getParameter("price"));
        session.setAttribute("shopname",shopname);
        session.setAttribute("shoptypename",shoptypename);
        session.setAttribute("price",price);
        ShopDao shopDao =new ShopDao();
        shopDao.addShop(shopname,price,shoptypename,uid);
        request.getRequestDispatcher("doAddseller.jsp").forward(request, response);

     %>

  </body>
</html>
