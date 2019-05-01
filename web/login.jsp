<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>欢迎登入</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    </head>

  <style>
	  div {
		  margin: 0 auto;
		  padding: 5px;
	  }.wall-warp {
		   position: absolute;
		   left: 50%;
		   top: 50%;
		   margin-top: -285px;
		   margin-left: -150px;
		   background-color: rgba(255,255,255,0.5);
	   }.signin-misc-wrap {
			width: 300px;
			height: 20px;
			margin: 10px auto 0;
			position: relative;
		}
	  label.signin-misc-wrap .remember-btn {
		  line-height: 20px;
		  height: 20px;
		  font-size: 14px;
		  color: #9798A9;
		  padding-left: 6px;
		  cursor: pointer;
	  }.fl {
		   float: left;
		   display: inline;
	   }
	  ul, menu, dir {
		  display: block;
		  list-style-type: disc;
		  -webkit-margin-before: 1em;
		  -webkit-margin-after: 1em;
		  -webkit-margin-start: 0px;
		  -webkit-margin-end: 0px;
		  -webkit-padding-start: 10px;
	  }
	  ul.switch-wrap.active, .studentID-list.active, .phoneMumber-list.active, .teacherID-list.active, .switch-nav.active, .teachId-wrap.active, .registerNum-wrap.active {
		  display: block;
	  }.studentID-list, .phoneMumber-list, .teacherID-list, .new-switch-wall {
		   display: none;
		   list-style: none;
	   }.wall-form-ipt-list {
			margin: 20px auto 0;
			width: 300px;
		}
	  .wall-form-ipt-list li input {
		  background: #fff;
		  width: 300px;
		  padding-left: 44px;
		  height: 44px;
		  line-height: 44px;
		  font-size: 14px;
		  color: #3D4059;
		  border: 1px solid #DDDDDD;
		  border-radius: 22px;
		  box-sizing: border-box;
	  }
	  span.wall-sub-btn {
		  display: block;
		  margin: 28px auto 0;
		  width: 300px;
		  height: 44px;
		  line-height: 44px;
		  background:  aquamarine;
		  font-size: 20px;
		  color: #fff;
		  text-align: center;
		  cursor: pointer;
		  border-radius: 22px;

	  }a.tijiao{
		   text-decoration: none;y
	   }
  </style>

  <body  style="background: url(body1.jpg)">
  <div class="wall-warp">
	  <h3 align="center">集美二手交易网</h3>
	  <div class="wall-main">


		  <!--登录-->
		  <form action="loginServlet" method="post" id="DR">
			  <div class="switch-wrap switch-wrap-signin active">
				  <!--手机号-->
				  <ul class="phoneMumber-list wall-form-ipt-list active">
					  <li>


						  <input type="text" placeholder="请输入用户名" value="" name="username" id="userid">


					  </li><br />
					  <li class="clearPassword-ico">
						  <input type="password" placeholder="请输入密码" value="" name="password" id="password">


					  </li>

				  </ul>
				  <!--手机号-->

				  <span class="wall-sub-btn" onclick="document.getElementById('DR').submit();">登&nbsp;&nbsp;录</span>
				  <a class="tijiao" href="adduser.jsp"><span class="wall-sub-btn">注&nbsp;&nbsp;册</span></a>



			  </div>
		  </form>

	  </div>
  </div>
  </body>
</html>
