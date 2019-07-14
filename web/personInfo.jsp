<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.ShopDao" %>
<%@ page import="com.etc.entity.Shop" %>
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
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/layui/layui.all.js"></script>
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
          /*padding: 10px;*/
          /*margin: 10px;*/
      }.main{
            position: center;
           width: 850px;
          height: 900px;
          margin: 60px auto;
           background-color:rgba(255,255,255,0.5);
       }.per-list{
            float: left;
            padding: 0;
            margin-left:0 ;
            width: 41px;
            height:  400px;
            background-color: cornflowerblue;
        }.main2{
             float: left;
         }
      ul{
          padding: 0px 0px;
      }
      li{

          list-style: none;
      }

      li a{
          display: block;
          width: 25px;
          padding:8px ;
          background:  #4F4F4F;
          color:#fff;
          text-decoration:none;
          border-top:1px solid #000;
          writing-mode: tb;
      }
      li a:hover{
          background:#146C9C;
          color:#fff;
          text-decoration:none;
          border-top:1px solid #000;
      }
      li a img{
          height: 16px;
          width: 16px;
      }
      iframe{
          height: 800px;
          width: 800px;
      }.formchat{
           height: 4px;
           width: 400px;
           border: #0000FF;
       }
  </style>
  <script type="text/javascript">
      var src;
      function goto(htm){
          document.getElementById('info1').src=htm;
          src=htm;
      }
  </script>

  <body style="background: url(body1.jpg)">
  <script>
      var title_style = 'height:80px;line-height:80px;';
      var title_content = '<div class="title-container"><div class="title-name">user</div><span class="title-msg">对方正在输入...</span></div>';



      var title_box_style = 'height:40px;line-height:40px;border:none;';
      var title_box_content = '<div class="box-title-container"><div class="box-title-name">user<span class="layui-bg-green layui-badge-dot"></span></div></div>';
      var chat_box_index = layer.open({
          type: 2,
          closeBtn: 1,
          offset: 'rb',
          title: [
              title_box_content,
              title_box_style,
          ],
          maxmin: true,
          shade: 0,
          shadeClose: false, //点击遮罩关闭层
          area: ['260px', '890px'],
          content: 'box.jsp',
          resize: false,
          scrollbar: false,
          cancel: function(index, layero){ // 点击关闭时执行最小化
              layer.min(chat_box_index)
              return false;
          }

      });

      function createWindow() {
          layer.open({
              type: 2,
              title: [
                  title_content,
                  title_style,
              ],
              maxmin: true,
              shade: 0,
              shadeClose: false,
              area: ['600px', '520px'],
              content: 'chat.jsp',
              scrollbar: false

          });
      }
  </script>

  <div class="main" >

      <div style="background: rgba(255,255,255,0.5);">
      <div class="per-list">
          <ul>
              <!--<li class="">
                   <a  onclick="goto('user.jsp')" ><img class="logo" src="img/person.png" >个人信息</a>
               </li></li>-->
               <li class="">
               <li class="">
                   <a onclick="goto('changeuser.jsp')"><img src="img/update.png">修改信息</a>
               </li>
              <!-- <li class=""><li class="">
               <a onclick="goto('chat.html')"><img src="img/shoppingcar.png">联系管理员</a>
           </li>-->
              <li class=""><li class="">
              <a  onclick="goto('addshopInfo.jsp')" ><img src="img/Sell.png">我要卖东西</a>
          </li>
              </li>
              <li class=""><li class="">
              <a  onclick="goto('seller.jsp')" ><img src="img/Sell.png">上架中物品</a>
          </li>
              <li class=""><li class="">
              <a  onclick="goto('order.jsp')" ><img src="img/Sell.png">我的订单</a>
          </li>
              </li>
              <li class=""><li class="">
              <a  href="main.jsp"><img src="img/Sell.png">返回主页</a>
          </li>


          </ul>
      </div>
      </div>
      <div class="main2">
          <iframe id="info1" src="<%= session.getAttribute("jsp") %>">

          <%--</iframe>--%>
      <%--&lt;%&ndash;</div><div class="layui-layer layui-layer-iframe layui-layer-border" id="layui-layer1" type="iframe" times="1" showtime="0" contype="string"  ><iframe id="layui-layer-iframe1" name="layui-layer-iframe1" onload="this.className='';" class="" frameborder="0" src="box.html" style="width: 260px">&ndash;%&gt;--%>

              <%--<script>--%>
                  <%--var title_style = 'height:80px;line-height:80px;';--%>
                  <%--var title_content = '<img src="assets/images/lufei.jpeg"><div class="title-container"><div class="title-name">超超</div><span class="title-msg">对方正在输入...</span></div>';--%>



                  <%--var title_box_style = 'height:40px;line-height:80px;border:none;';--%>
                  <%--var title_box_content = '<div class="box-title-container"><div class="box-title-name">超超<span class="layui-bg-green layui-badge-dot"></span></div></div>';--%>
                  <%--var chat_box_index = layer.open({--%>
                      <%--type: 2,--%>
                      <%--closeBtn: 1,--%>
                      <%--offset: 'rb',--%>
                      <%--title: [--%>
                          <%--title_box_content,--%>
                          <%--title_box_style,--%>
                      <%--],--%>
                      <%--maxmin: true,--%>
                      <%--shade: 0,--%>
                      <%--shadeClose: false, //点击遮罩关闭层--%>
                      <%--area: ['260px', '520px'],--%>
                      <%--content: 'box.html',--%>
                      <%--resize: false,--%>
                      <%--scrollbar: false,--%>
                      <%--cancel: function(index, layero){ // 点击关闭时执行最小化--%>
                          <%--layer.min(chat_box_index)--%>
                          <%--return false;--%>
                      <%--}--%>

                  <%--});--%>

                  <%--function createWindow() {--%>
                      <%--layer.open({--%>
                          <%--type: 2,--%>
                          <%--title: [--%>
                              <%--title_content,--%>
                              <%--title_style,--%>
                          <%--],--%>
                          <%--maxmin: true,--%>
                          <%--shade: 0,--%>
                          <%--shadeClose: false,--%>
                          <%--area: ['600px', '520px'],--%>
                          <%--content: 'chat.html',--%>
                          <%--scrollbar: false--%>

                      <%--});--%>
                  <%--}--%>
              <%--</script>--%>
    <%--</iframe>--%>
    </div>
  </div>
  </body>
