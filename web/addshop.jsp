<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addbook.jsp' starting page</title>
    
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
           请添加一本图书信息：
   <!-- 添加图书名称和图书类型名称 -->   
   <!-- 表单 -->
   <form action="doAdd.jsp" method="post">
   图书名称:<input type="text" name="shopname">
   <!-- 图书类型名称  下拉列表 -->
   <select name="shopTypeName">
   		<option value="1">买家</option>
   		<option value="2">卖家</option>
   		<option value="3">管理员</option>
   </select>
   <input type="submit" value="增加商品">
   </form>
  </body>
</html>
