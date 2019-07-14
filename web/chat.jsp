<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<base href="<%=basePath%>">
<link rel="stylesheet" href="./assets/layui/css/layui.css">
<link rel="stylesheet" href="./assets/css/chat.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>

</style>

<div class="layui-container chat-body">
	<div class="layui-row"  style="text-align: right;">
		<div class="layui-col-md12 chat-content" id="message" style="text-align: right;">
		</div>
	</div>
	<hr class="layui-bg-gray chat-toolbar-hr">
	<div class="layui-row chat-tolbar-container">
		<div class="layui-col-md12 chat-toolbar">
			<i class="layui-icon layui-icon-face-smile-fine chat-toolbar-icon"></i>
			<i class="layui-icon layui-icon-picture-fine chat-toolbar-icon"></i>
			<i class="layui-icon layui-icon-file chat-toolbar-icon"></i>
			<i class="layui-icon layui-icon-voice chat-toolbar-icon"></i>
			<i class="layui-icon layui-icon-video chat-toolbar-icon"></i>
			<i class="layui-icon layui-icon-fonts-code chat-toolbar-icon"></i>
			<i class="layui-icon layui-icon-log chat-toolbar-icon"></i>
		</div>
	</div>

	<div class="layui-row chat-toolbar-chatmain">
		<div class="layui-col-md12">
			<textarea name="chat-text" id="chat-text" rows="4" autofocus="true"></textarea>
			<button class="layui-btn layui-btn layui-btn-normal chat-btn layui-btn-sm layui-layer-btn0"    onclick="send()" > 发送 </button>
			<button class="layui-btn layui-btn layui-btn-normal chat-btn layui-btn-sm layui-layer-btn0" onclick="closeWebSocket()" >关闭</button>

		</div>
	</div>
</div>
<script type="text/javascript">
	var websocket = null;
	//判断当前浏览器是否支持WebSocket
	var userno=<%=session.getAttribute("uid")%>;

	if ('WebSocket' in window) {
		websocket = new WebSocket("ws://localhost:8080/websocket");
	}
	else {
		alert('当前浏览器 Not support websocket')
	}

	//连接发生错误的回调方法
	websocket.onerror = function () {
		setMessageInnerHTML("WebSocket连接发生错误");
	};

	//连接成功建立的回调方法
	websocket.onopen = function () {
		//	setMessageInnerHTML("WebSocket连接成功");
	}

	//接收到消息的回调方法
	websocket.onmessage = function (event) {
		var mess=event.data;
		var messbyid= mess.substring(mess.length-2);
		<%--var uid=<%=(int)session.getAttribute("bid") %>;--%>
		var messbyid4=mess.substring(mess.length-4,mess.length-2);
		var truedata=mess.substring(0,mess.length-5);
		var uid=<%=session.getAttribute("uid")%>;
		var buid=<%=session.getAttribute("uid")%>;
		if(messbyid==uid||messbyid4==buid){
			setMessageInnerHTML(truedata);
		}
	}
	//连接关闭的回调方法
	websocket.onclose = function () {
		setMessageInnerHTML("WebSocket连接关闭");
	}

	//监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
	window.onbeforeunload = function () {
		closeWebSocket();
	}

	//将消息显示在网页上
	function setMessageInnerHTML(innerHTML) {

		document.getElementById('message').innerHTML += innerHTML + '<br/>';
	}

	//关闭WebSocket连接
	function closeWebSocket() {
		websocket.close();
	}
	document.onkeydown=function() {

		if(event.keyCode==13) {

			send();

			$('#ff_login').submit();
		}
	}

	//发送消息
	function send() {
		var message = document.getElementById('chat-text').value;//要发送的消息内容
		var now=getNowFormatDate();//获取当前时间

		document.getElementById('message').style.color="black";/* document.getElementById('message').innerHTML += (now+"发送人："+userno+'<br/>'+"-") + '<br/>';*/
		var ToSendUserno="1420";//接收人编号：1420
		message=message+"|"+ToSendUserno//将要发送的信息和内容拼起来，以便于服务端知道消息要发给谁

		websocket.send((now+"发送人："+userno) + '<br/>'+message);//send函数发送
		document.getElementById('chat-text').value="";
	}
	//获取当前时间
	function getNowFormatDate() {
		var date = new Date();
		var seperator1 = "-";
		var seperator2 = ":";
		var month = date.getMonth() + 1;
		var strDate = date.getDate();
		if (month >= 1 && month <= 9) {
			month = "0" + month;
		}
		if (strDate >= 0 && strDate <= 9) {
			strDate = "0" + strDate;
		}
		var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
				+ " " + date.getHours() + seperator2 + date.getMinutes()
				+ seperator2 + date.getSeconds();
		return currentdate;
	}
</script>
<body>

</body>
