<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    </head>

  <style type="text/css">
	  div{
		  margin: 20px;
		  padding: 20px;
		  font-family: "Microsoft Yahei"
	  }.wall-warp {
		   position: absolute;
		   left: 50%;
		   top: 50%;
		   margin-top: -285px;
		   margin-left: -150px;
		   background-color: rgba(255,255,255,0.5);

	   }.wall-body .switch-nav-wrap {
			width: 300px;
			height: 40px;
			margin-top: 40px;
			text-align: center;
			display: block;
		}
	  form{
		  display: block;
		  margin: 0;
		  padding: 0;
		  font-family: "微软雅黑";
	  }
	  ul{
		  padding: 0;
		  font-family: "微软雅黑";
	  }.wall-body .wall-form-ipt-list {
		   margin: 20px auto 0;
		   width: 300px;
	   }.wall-body .wall-form-ipt-list li input {
			background: #fff;
			width: 300px;
			padding-left: 55px;
			height: 40px;
			line-height: 40px;
			font-size: 14px;
			color: #3D4059;
			border: 1px solid #DDDDDD;
			border-radius: 22px;
			box-sizing: border-box;
		}
	  li {
		  list-style: none;
		  vertical-align: bottom;
		  list-style-type: none;
	  }

	  li input{
		  background: #fff;
		  width: 300px;
		  padding-left: 55px;
		  height: 40px;
		  line-height: 40px;
		  font-size: 14px;
		  color: #3D4059;
		  border: 1px solid #DDDDDD;
		  border-radius: 22px;
		  box-sizing: border-box;
	  }
	  span#j-btn-register.wall-sub-btn.wall-sub-btn-signup{
		  display: block;
		  margin: 28px auto 0;
		  width: 300px;
		  height: 44px;
		  line-height: 44px;
		  background:  aquamarine;
		  font-size: 26px;
		  color: #fff;
		  text-align: center;
		  cursor: pointer;
		  border-radius: 22px;
	  }

  </style>
  </head>
  <body  style="background: url(body1.jpg)">
  <div class="wall-warp">
	  <h3 align="center">注册</h3>
	  <form id="sign_up" action="douserAdd.jsp" method="post">
		  <input id="j-token" type="hidden" name="csrf" >
		  <ul class="wall-form-ipt-list">
			  <li>
				  <input type="text"  name="username" maxlength="128"   request="request" placeholder="请输入用户名">


			  </li>
			  <br />
			  <li>
				  <input id="j-password" name="password2" type="hidden">

				  <input id="j-password_hide" name="password" type="password"  request="request" placeholder="请输入密码">



			  </li><br />
			  <li>
				  <input id="" name="tel2" type="hidden">

				  <input id="phonenum" name="tel" type="text" request="request" placeholder="手机号码">

			  </li></br>
			  <li>
				  <input id="2" name="age2" type="hidden">

				  <input id="age" name="age" type="test" request="request" placeholder="请输入年龄">

			  </li><br />
			  <li>
				  <input id="3" name="address2" type="hidden">

				  <input id="address" name="address" type="address"  request="request" placeholder="请输入地址">



			  </li><br />


		  </ul>
	  </form>
	  <span id="j-btn-register" class="wall-sub-btn wall-sub-btn-signup" onclick="document.getElementById('sign_up').submit();">注册</span>


  </div>
  </body>
</html>