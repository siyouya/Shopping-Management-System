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

  </head>
  
  <body>
    <table border=1 align="center">
    	<tr>
    	    <td>用户id</td>
    	    <td>用户昵称</td>
    	    <td>用户密码</td>
    	    <td>用户年龄</td>
    	    <td>用户电话</td>
<%    //实例化一个BookDao 对象
       UserDao  userdao  = new UserDao();
       //调用查询方法
      List<User> list  =  userdao.queryAllUserAndType();
    //遍历列表信息
    for(User user:list){
     %>
    <!-- 图书的具体信息 HTML代码 -->
       <tr>
    	    <td><%=user.getUid() %></td>
    	    <td><%=user.getName() %></td>
    	    <td><%=user.getPassword() %></td>
    	    <td><%=user.getAge() %></td>
    	    <td><%=user.getTel() %></td>
    	
    	    <td><a href="deleteuser.jsp?userId=<%=user.getUid()%>" >删除用户</a></td>
    	    <td><a href="changeuser.jsp?userId=<%=user.getUid()%>" >修改信息</a></td>
	</tr>
    <%
    }
     %>
    
    </table>
  </body>
</html>

