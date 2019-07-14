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

  <body style="height: 400px;width: 400px;" >
   <div class="main" style="width: 700px;">
<ul>
   <%
       int userid = (int)session.getAttribute("uid");
       UserDao  userdao  = new UserDao();
       //调用查询方法
      List<User> list  =  userdao.queryUserbyid(userid);
    //遍历列表信息

    for(User user:list){

     %>
    <!-- 图书的具体信息 HTML代码 -->

    <li class="userinfo">用户id：<%=user.getUid() %></li>
	<li class="userinfo">用户名：<%=user.getName() %></li>
	<li class="userinfo">年龄：<%=user.getAge() %></li>
	<li class="userinfo">电话：<%=user.getTel() %></li>
    <li class="userinfo">地址：<%=user.getAddress() %></li>





	</tr>
    <%
    }
     %>
</ul>
   </div>
  </body>
</html>

