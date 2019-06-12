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
    
    <title>My JSP 'changeuser.jsp' starting page</title>
    
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
  <%
	    int userid = (int)session.getAttribute("uid");
		UserDao userdao =new UserDao();
		List<User> list =userdao.queryUserAndType(userid);
		for(User user:list){

  %>
  <!-- 图书的具体信息 HTML代码 -->


  <body>
  <div class="main" style="width: 750px">
  <form action="personInfoServlet?option=dochangeuser"   method="post">
	  <ul class="wall-form-ipt-list">
		  <li>
			  用户ID： <input type="text"  name="userid" maxlength="128"  request="request" value="<%=userid %>">
		  </li><br />
		  <li>
			 用户名： <input type="text"  name="name" maxlength="128"  value="<%=user.getName() %> ">

		  </li>
		  <br />
		  <li>
			  <input id="j-password" name="password2" maxlength="128"  type="hidden">

			新密码：  <input id="j-password_hide" name="password"  maxlength="128"  type="password" placeholder="请输入密码" value="<%=user.getPassword() %>">



		  </li><br />
		  <li>
			  <input id="num" name="phonenumber2" type="hidden" maxlength="128" >

			 新电话： <input id="phonenum" name="tel" maxlength="128"  type="number" placeholder="手机号码" value="<%=user.getTel() %>">


		  </li><br />
		  <li>
			  <input id="age2" name="age2" type="hidden" maxlength="128" >

			  设年龄： <input id="age" name="age" maxlength="128"  type="test" placeholder="年龄" value="<%=user.getAge() %>">


		  </li><br />
		  <li>
			  <input id="address2" name="address2" type="hidden" maxlength="128" >

			  新地址： <input id="address" name="address" maxlength="128"  type="text" placeholder="地址" value="<%=user.getAddress() %>">


		  </li><br />
		  <li>
			   <input id="submit" name="submit2" maxlength="128" type="hidden" maxlength="128" >

			   <input  name="submit"  maxlength="128"  type="submit" style="margin-left: 5em;padding-left: 45px; background: #fff;" align="center" value="保存">


		  </li>
	  </ul>
      </form>
	  <%
		  }
	  %>
  </div>

  </body>
</html>
