<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.*" %>
<%@ page import="com.etc.entity.*" %>
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
    
    <title>My JSP 'douserAdd.jsp' starting page</title>
    
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
      String name  = request.getParameter("username");
      String password =request.getParameter("password");
      int tel =Integer.parseInt(request.getParameter("tel"));
      int age=Integer.valueOf(request.getParameter("age"));
      String address =request.getParameter("address");
      UserDao userdao  = new UserDao();
      User user=new User();
      user.setName(name);
      user.setPassword(password);
      user.setTel(tel);
      user.setAge(age);
      user.setAddress(address);
      userdao.addUserez(name,password,tel,age ,address);
      JOptionPane.showMessageDialog(null,"注册成功","通知",JOptionPane.INFORMATION_MESSAGE);
      request.getRequestDispatcher("login.jsp").forward(request, response);

     %>
    
    
    
    
  </body>
</html>