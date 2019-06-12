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

      <link rel="stylesheet" href="assets/css/goodslist.css">
  </head>
<style>
    input::-ms-input-placeholder{
        text-align: center;
    }
    input::-webkit-input-placeholder{
        text-align: center;
    }
</style>
  <body style="height: 400px;width: 400px;" >
   <div class="main" style="width: 700px;">
<ul>


    <div id="pricing-table" class="clear">
        <%
            int userid = (int)session.getAttribute("uid");
            UserDao  userdao  = new UserDao();
            List<Seller> list  =  userdao.queryseller(userid);
            for(Seller seller:list){
                User user= userdao.queryUser(userid);
        %>
    <div class="plan">
        <h3><%=seller.getShopname() %><span>上架中</span></h3>

        <a class="signup" href="deleteshop.jsp?sid=<%=seller.getSid()  %> " >删除商品</a>
        <ul >
            <li>商品名称 <b><%=seller.getShopname() %></b></li>
            <li>联系电话 <b><%=user.getTel() %></b></li>
            <li>价格<b><%=seller.getPrice() %></b></li>
            <a class="signup" href="shopInfo.jsp?sid=<%=seller.getSid()  %> " >详细商品</a>
        </ul>
    </div>
        <%
            }
        %>

    <%--<form action="personInfoServletoption=addshop" method="post"  id="form1">--%>


        <%--<div class="plan">--%>
            <%--<h3><input id="shopname" name="shopname" type="text" placeholder="商品名称" style="border: none;"><span>准备上架</span></h3>--%>
            <%--<a class="signup" onclick="document.getElementById('form1').submit();" >上架</a>--%>
            <%--<ul >--%>
                <%--<li> <b> <input id="price" name="price" type="text" placeholder="商品价格" style="border: none;"></b></li>--%>
                <%--<li> <b><select name="shoptypename">--%>
                    <%--<option value="1">生活类</option>--%>
                    <%--<option value="2">学习类</option>--%>
                    <%--<option value="3">办公类</option>--%>
                <%--</select></b></li>--%>
                <%--<li> <b><input id="phonenum" name="phonenum" type="" placeholder="联系电话" style="border: none;"></b></li>--%>
                <%--<li><input id="adress" name="adress" type="text" placeholder="联系地址" style="border: none;"> <b></b></li>--%>
            <%--</ul>--%>
        <%--</div>--%>

    <%--</form>--%>
    </div>
</ul>
   </div>
  </body>
</html>

