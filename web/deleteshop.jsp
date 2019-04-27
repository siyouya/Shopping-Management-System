<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.ShopDao" %>
<%@ page import="com.etc.dao.UserDao" %>
<%@ page import="com.etc.entity.Seller" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '个人用户界面' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <%
        String sid  = request.getParameter("sid");

        UserDao userDao=new UserDao();
        Seller seller= userDao.findbid(sid);
        int shop=seller.getBid();
        String shopname=seller.getShopname();

        out.print(shopname);
        ShopDao shopDao=new ShopDao();
        userDao.deleteShop(sid);
        shopDao.deleteShop(shop);
        request.getRequestDispatcher("seller.jsp").forward(request, response);
     %>
  </body>
</html>
