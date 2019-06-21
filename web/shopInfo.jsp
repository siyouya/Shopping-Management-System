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
    
    <title>用户的个人信息</title>
      <link rel="stylesheet" href="./assets/layui/css/layui.css">
      <link rel="stylesheet" href="./assets/css/chat.css">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
      <style>
          .parent {
              display: flex;
              flex-flow: row;
          }

          .side {
              width: 400px;
          }

          .main {
              flex: 1;
              margin-left: 10px;
          }

      </style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
              <%
                  int bid=Integer.valueOf(request.getParameter("bid"));
                  ShopDao shopdao=new ShopDao();
                  Shop shop=shopdao.queryidShop(bid);
                  session.setAttribute("bid",bid);

              %>
  <ul class="layui-nav">
      <li class="layui-nav-item">
          <a href="main.jsp">控制台<span class="layui-badge">9</span></a>
      </li>
      <li class="layui-nav-item">
          <a href="personInfo.jsp">个人中心<span class="layui-badge-dot"></span></a>
      </li>
      <li class="layui-nav-item">
          <a href=""><img src="https://southseast.cc/images/avatar.gif" class="layui-nav-img">我</a>
          <dl class="layui-nav-child">
              <dd><a href="personInfo.jsp">修改信息</a></dd>
              <dd><a href="personInfo.jsp">安全管理</a></dd>
              <dd><a href="login.jsp">退出</a></dd>
          </dl>
      </li>
  </ul>
  <div class="layui-container">

      <div class="parent" style="margin-top: 50px">
          <div class="side">
              <div class="layui-carousel" id="test1">
                  <div carousel-item>
                      <div><img src="<%=shop.getPicture()%>"   width="400" height = "400" ></div>
                      <%--<div>条目2</div>--%>
                      <%--<div>条目3</div>--%>
                      <%--<div>条目4</div>--%>
                      <%--<div>条目5</div>--%>
                  </div>
              </div>
          </div>


          <div class="main">

              <div class="layui-card" style="width: 730px; box-shadow: 0 0 0 0;">
                  <div class="layui-card-body" >
                      <%=shop.getShopname()%></div>
                  <div class="layui-card-body" style="font-size: 10px;color: red">
                      【五一假期提前放价，抢券立减400元】小屏经典iPhone7仅售3099元，iPhoneXR低至4799元！更多活动请点击！</div>
                  <div class="layui-card-body">
                      <form class="layui-form" action="OederServlet"   id="form2"  style="margin-left: -50px">
                          <div class="layui-form-item">
                              <label class="layui-form-label">价&nbsp;&nbsp;&nbsp;&nbsp;格</label>
                              <div class="layui-input-block">
                                  <input type="text" name="tillte" required lay-verify="required" value="<%=shop.getPrice()%>" autocomplete="off" class="layui-input" disabled style="border: none">
                              </div>
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">配送至</label>
                              <div class="layui-input-block" style="width: 100px">
                                  <select name="city" lay-verify="required">
                                      <option value="addresss"></option>
                                      <option value="0">1号宿舍</option>
                                      <option value="1">2号宿舍</option>
                                      <option value="2">3号宿舍</option>
                                      <option value="3">4号宿舍</option>
                                      <option value="4">5号宿舍</option>
                                  </select>
                              </div>
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">颜&nbsp;&nbsp;&nbsp;&nbsp;色</label>
                              <div class="layui-input-block">

                                  <%--<button class="layui-btn layui-btn-sm layui-bg-red">红色</button>--%>
                                  <%--<button class="layui-btn layui-btn-sm layui-bg-orange">橘色</button>--%>
                                  <%--<button class="layui-btn layui-btn-sm layui-bg-blue">蓝色</button>--%>
                                  <button class="layui-btn layui-btn-sm layui-bg-cyan">黑色</button>
                              </div>
                          </div>
                          <div class="layui-card-body">
                              <a class="layui-btn layui-bg-red" onclick="document.getElementById('form2').submit();" >购买</a>
                              <a  class="layui-btn layui-bg-black" href="chat.html"  >联系卖家</a></div>
                          <div class="layui-tab" style="margin-top: 150px;margin-left: -300px">
                              <ul class="layui-tab-title">
                                  <li class="layui-this">商品介绍</li>
                                  <li>规格参数</li>
                                  <li>包装售后</li>
                                  <li>评价查看</li>
                              </ul>
                              <div class="layui-tab-content">
                                  <div class="layui-tab-item layui-show"><%=shop.getDetail()%></div>
                                  <div class="layui-tab-item"><%=shop.getSize()%></div>
                                  <div class="layui-tab-item">内容3</div>
                                  <div class="layui-tab-item">内容4</div>
                                  <div class="layui-tab-item">内容5</div>
                              </div>
                          </div>
                      </form>
                  </div>

              </div>
          </div>
      </div>


  </div>

  <!-- 你的HTML代码 -->

  <script src=" assets/layui/layui.all.js"> </script>
  <script>
      layui.use(['layer', 'form', 'carousel'], function() {
          var carousel = layui.carousel,
              layer = layui.layer,
              form = layui.form;
          //建造实例
          carousel.render({
              elem: '#test1',
              width: '400px', //设置容器宽度
              height: '400px',
              arrow: 'always' //始终显示箭头
              //,anim: 'updown' //切换动画方式
          });
      });

  </script>
  </body>
</html>