<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>My JSP 'deleteuser.jsp' starting page</title>
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
    <!-- 显示图书信息 -->
   <!-- 图书的删除 -->
    
    <%
    
    
    String userid  = request.getParameter("userId");
    UserDao userdao  = new UserDao();
    userdao.deleteUser(userid);
    request.getRequestDispatcher("user1.jsp").forward(request, response);
    
    
    
     %>
    
    
    
  </body>
</html>
