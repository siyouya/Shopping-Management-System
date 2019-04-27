<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.*" %>
<%@ page import="com.etc.entity.*" %>
<%@ page import="com.etc.entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dochangeuser.jsp' starting page</title>
    
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
    int userid =(int)session.getAttribute("uid");
    String name  = request.getParameter("name");
    String password =request.getParameter("password");
    int age =Integer.valueOf(request.getParameter("age"));
    int tel =Integer.valueOf(request.getParameter("tel"));   
    String address = request.getParameter("address");
    UserDao userdao= new UserDao();
    userdao.changeuser(name,password,age,tel,address,userid);
    request.getRequestDispatcher("changeuser.jsp").forward(request,response);
	%>
  </body>
</html>
