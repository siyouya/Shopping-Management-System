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
          label{
              position: relative;
          }
          #fileLable{
              position: relative;
          }


      </style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

<body>
  <div class="layui-container">

      <div class="parent" style="margin-top: 50px">
          <div class="side">
              <div class="layui-carousel" id="test1">
                  <div carousel-item>
                      <%--<div><img id="imgPre" src="" width="400" height = "400" /></div>--%>
                      <div> <img src="${path}"   width="400" height = "400" ></div><%session.setAttribute("path",path);%>
                      <%--<div>条目3</div>--%>
                      <%--<div>条目4</div>--%>
                      <%--<div>条目5</div>--%>
                  </div>
              </div>
          </div>


          <div class="main">
                <%
                        String picture =(String)request.getAttribute("path");
                        session.setAttribute("picture",picture);
                        int uid =(int)session.getAttribute("uid");
                        UserDao userDao=new UserDao();
                        User user =userDao.queryAllUserAndType4(uid);


                %>
              <div class="layui-form" style="margin-left: -2  0px">
                  <%--<div class="layui-form-item">
                      <%--<label class="layui-form-label">&nbsp;&nbsp;商品名</label>--%>
                      <%--<input class="layui-form-label" style="width: 150px" type="text"  name="shopname" id="shopname" %>--%>
                  <%--</div>--%>
              <%--</div>--%>
                  <%--<div class="layui-card-body" style="font-size: 10px;color: red">--%>
                      <%--已经是凉了</div>--%>
                  <%--<div class="layui-card-body">--%>
                      <form class="layui-form" action="personInfoServlet?option=addshop" method="post"    id="form1" style="margin-left: -20px">
                          <div class="layui-form-item">
                              <label class="layui-form-label"    >&nbsp;&nbsp;商品名</label>
                              <input class="layui-form-label"   style="width: 150px" type="text"  name="shopname"  id="shopname" >
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">价&nbsp;&nbsp;&nbsp;&nbsp;格</label>
                              <div class="layui-input-block">
                                  <input class="layui-form-label" style="width: 150px" type="text"  name="price" id="price" %>
                              </div>
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">所在地</label>
                              <input class="layui-form-label" style="width: 150px" type="text" name="adress" value="<%=user.getAddress() %>">
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">商品类型</label>
                              <div class="layui-input-block">
                              <select name="shoptypename">
                                  <option class="layui-btn layui-btn-sm layui-bg-red" value="1">生活类</option>
                                  <option class="layui-btn layui-btn-sm layui-bg-orange" value="2">学习类</option>
                                  <option class="layui-btn layui-btn-sm layui-bg-blue"value="3" >办公类</option>
                                  </select>
                              </div>
                          </div>
                      </form>
                  </div>
                  <div class="layui-card-body">
                      <form method="post" action="UploadServlet" enctype="multipart/form-data">
                          <input class="layui-btn layui-bg-blue" type="submit" value="上传图片" />
                          <br/><br/>

                          <input type="file" name="uploadFile" id="imgUp" onchange="preImg(this.id,'imgPre');" />
                          </label>
                      </form>
                      <a> <input type="hidden"></a>
                      <a class="layui-btn layui-bg-red" onclick="document.getElementById('form1').submit();" >上架</a>

              </div>
          </div>
      </div>
      <div class="layui-tab" style="margin-top: 50px">
          <ul class="layui-tab-title">
              <li class="layui-this">商品介绍</li>
              <li>规格参数</li>
              <li>包装售后</li>
              <li>评价查看</li>
          </ul>
          <div class="layui-tab-content">
              <div class="layui-tab-item layui-show" ><textarea cols="100" rows="13" name="detail"  id="detail"></textarea></div>
              <div class="layui-tab-item" ><textarea cols="100" rows="13" name="size"  id="size"></textarea></div>
              <div class="layui-tab-item"></div>
              <div class="layui-tab-item">内容4</div>
              <div class="layui-tab-item">内容5</div>
          </div>
      </div>
  </div>

  </body>

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
      function getFileUrl(sourceId) {
          var url;
          if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE
              url = document.getElementById(sourceId).value;
          } else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox
              url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
          } else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome
              url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
          }
          return url;
      }

      function preImg(sourceId, targetId) {
          var url = getFileUrl(sourceId);
          var imgPre = document.getElementById(targetId);
          imgPre.src = url;
      }



  </script>
  </body>
</html>