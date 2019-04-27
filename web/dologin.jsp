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
    
    <title>My JSP 'dologin.jsp' starting page</title>
    
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
        String name =request.getParameter("username");
        String password =request.getParameter("password");
        UserDao userdao= new UserDao();
        userdao.checkLogin(name,password);
        if(name!=null && password!=null && name.length()>0 && password.length()>0)
        {

            int uid  =  userdao.checkLogin(name, password);
            if(uid>0){

                session.setAttribute("uid", uid);

                request.getRequestDispatcher("main.jsp").forward(request, response);
            }
            else{
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }

        else{
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

	%>
  </body>
</html>

