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
          }.payment-time{
	display: inline-block;
	overflow: hidden;
	line-height: 20px;
	vertical-align: middle;
	background-color: #2E2E2E;
	padding: 1px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 7px;
	color: #c1c1c1;
	padding: 7px;
}
.payment-time em{
	color: #fff;
	background-color: #2B8C25;
	padding: 0 3px;
	margin: 0 2px;
	-webkit-border-radius: 1px;
	-moz-border-radius: 1px;
	border-radius: 5px;
	font-style: normal;
}
.center{
    text-align: center;
}

      </style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>


  <ul class="layui-nav">
      <li class="layui-nav-item">
          <a href="">控制台<span class="layui-badge">9</span></a>
      </li>
      <li class="layui-nav-item">
          <a href="">个人中心<span class="layui-badge-dot"></span></a>
      </li>
      <li class="layui-nav-item">
          <a href=""><img src="https://southseast.cc/images/avatar.gif" class="layui-nav-img">我</a>
          <dl class="layui-nav-child">
              <dd><a href="javascript:;">修改信息</a></dd>
              <dd><a href="javascript:;">安全管理</a></dd>
              <dd><a href="javascript:;">退出</a></dd>
          </dl>
      </li>
  </ul>
  <div class="layui-container">

      <div class="parent" style="margin-top: 50px">
          <div class="side">
              <div class="layui-carousel" id="test1">
                  <div carousel-item>
                      <div><img src="//img.alicdn.com/imgextra/i2/14681333/O1CN01bPNGct1LiYRaSh68m_!!0-saturn_solar.jpg_220x220.jpg_.webp"   width="400" height = "400" ></div>
                      
                  </div>
              </div>
          </div>


          <div class="main">
                
              <div class="layui-card" style="width: 730px; box-shadow: 0 0 0 0;">
                  <div class="layui-card-body">
                      新罗技G403有线电竞游戏机械鼠标</div>
                  <div class="layui-card-body" style="font-size: 10px;color: red">
                      【五一假期提前放价，抢券立减400元】更多活动请点击！</div>
                  <div class="layui-card-body">
                      <form class="layui-form" action="" style="margin-left: -50px">
                          <div class="layui-form-item">
                              <label class="layui-form-label">箱&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                              <div class="layui-input-block">
                                  <font size="3" color="#B22222" >16号
                           </font>
                              </div>
                          </div>
                          <div class="layui-form-item">
                          	
                              <label class="layui-form-label">押&nbsp;&nbsp;&nbsp;&nbsp;金</label>
                              <div class="layui-input-block">
                                  <input type="text" name="title" required lay-verify="required" value="80" autocomplete="off" class="layui-input" disabled style="border: none">
                              </div>
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">时&nbsp;&nbsp;&nbsp;&nbsp;薪</label>
                              <div class="layui-input-block">
                                  <font size="6" color="red" >2</font>
                              </div>
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">模&nbsp;&nbsp;&nbsp;&nbsp;式</label>
                              <div class="layui-input-block">

                                  
                                  <button class="layui-btn layui-btn-sm layui-bg-cyan">租赁</button>
                              </div>
                          </div>
                          <div class="layui-form-item">
                              <label class="layui-form-label">状&nbsp;&nbsp;&nbsp;&nbsp;态</label>
                              <div class="layui-input-block">
                                  <font size="6" color="red" >已租出
                           </font>
                              </div>
                          </div>
                          
                      </form>
                  </div>
                  <div class="layui-card-body">
                      <a  class="layui-btn layui-bg-red" href="test4.jsp"  >确认租赁</a>
                      
                      <a  class="layui-btn layui-bg-black" href="chat.html"  >联系卖家</a></div>
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
              <div class="layui-tab-item layui-show">产品名称：Shinco/新科 A6品牌: Shinco/新科型号: A6耳机材质: 塑料耳机售后服务: 店铺三包颜色分类: 经典款黑色（送电池） 经典款黑色（送电池）+带麦音频线 经典款黑色（送电池）+带麦音频线+收纳包 经典款白色（送电池） 经典款白色（送电池）+带麦音频线 经典款白色（送电池）+带麦音频线+收纳包 蓝牙款（可充电）白色 蓝牙款（可充电）黑色 蓝牙款（可充电）白色+收纳包 蓝牙款（可充电）黑色+收纳包 蓝牙款（可充电）黑色+带麦音频线 蓝牙款（可充电）白色+带麦音频线 蓝牙款（可充电）黑色+带麦音频线+收纳包 蓝牙款（可充电）白色+带麦音频线+收纳包套餐类型: 官方标配生产企业: 深圳市摩利奥科技有限公司耳机类别: 无线耳机 翻译耳机佩戴方式: 头戴护耳式耳机类型: 无线是否线控: 否

              </div>
              <div class="layui-tab-item"></div>
              <div class="layui-tab-item">内容3</div>
              <div class="layui-tab-item">内容4</div>
              <div class="layui-tab-item">内容5</div>
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