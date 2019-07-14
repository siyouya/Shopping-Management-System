<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 导包 -->
<%@ page import="com.etc.dao.ShopDao" %>
<%@ page import="com.etc.dao.UserDao" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<link rel="stylesheet" href="./assets/layui/css/layui.css">
<link rel="stylesheet" href="./assets/css/box.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/layui/layui.all.js"></script>

<div class="layui-container box-body" style="overflow:-Scroll;overflow-y:hidden">
    <div class="layui-row">
        <div class="layui-col-xs12 box-title-msg box-line-1">
            这个人很懒什么也没写
        </div>
    </div>
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title layui-row box-btn-list">
            <li class="box-btn-list-li layui-this layui-col-xs4"><i class="layui-icon layui-icon-friends"></i> </li>
            <li class="box-btn-list-li layui-col-xs4"><i class="layui-icon layui-icon-group"></i></li>
            <li class="box-btn-list-li layui-col-xs4"><i class="layui-icon layui-icon-reply-fill"></i></li>
        </ul>
        <div class="layui-tab-content">
            <div class="box-btn-content layui-tab-item layui-show">
                <div class="layui-collapse">
                    <div class="layui-colla-item">
                        <h2 class="layui-colla-title"><i class="layui-icon layui-icon-right"></i>我的好友</h2>
                        <div class="layui-colla-content">
                            <!-- 好友列表 -->

                            <div class="layui-row box-my-list" id="d1" >
                                <div class="layui-col-xs2" onclick="getinfo('d1')" >
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg" >
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name" id="1">
                                            14
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            这个人很懒什么也没写
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list" id="d2">
                                <div class="layui-col-xs2" onclick="getinfo('d2')">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            20
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            这个人很懒什么也没写
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list" id="d3">
                                <div class="layui-col-xs2" onclick="getinfo('d3')">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            user
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            这个人很懒什么也没写
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="layui-colla-item">
                        <h2 class="layui-colla-title"><i class="layui-icon layui-icon-right"></i>陌生人</h2>
                        <div class="layui-colla-content ">
                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list">
                                <div class="layui-col-xs2">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            user
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            这个人很懒什么也没写
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list">
                                <div class="layui-col-xs2">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            user
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            <这个人很懒什么也没写></这个人很懒什么也没写>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list">
                                <div class="layui-col-xs2">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            路飞
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            我是要成为海贼王的男人，我是要成为海贼王的男人，我是要成为海贼王的男人
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="layui-colla-item">
                        <h2 class="layui-colla-title"><i class="layui-icon layui-icon-right"></i>黑名单</h2>
                        <div class="layui-colla-content ">
                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list">
                                <div class="layui-col-xs2">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            路飞
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            我是要成为海贼王的男人，我是要成为海贼王的男人，我是要成为海贼王的男人
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list">
                                <div class="layui-col-xs2">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            路飞
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            我是要成为海贼王的男人，我是要成为海贼王的男人，我是要成为海贼王的男人
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 好友列表 -->
                            <div class="layui-row box-my-list">
                                <div class="layui-col-xs2">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12">
                                            <img class="box-my-pic" src="assets/images/lufei.jpeg">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-col-xs10">
                                    <div class="layui-row">
                                        <div class="layui-col-xs12 box-my-name">
                                            路飞
                                        </div>
                                        <div class="layui-col-xs12 box-my-signal box-line-1">
                                            我是要成为海贼王的男人，我是要成为海贼王的男人，我是要成为海贼王的男人
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="box-btn-content layui-tab-item">内容2</div>
        <div class="box-btn-content layui-tab-item">内容3</div>
    </div>

    <div class="box-bottom-toolbar">
        <i class="layui-icon layui-icon-speaker"></i>
        <i class="layui-icon layui-icon-search"></i>
        <i class="layui-icon layui-icon-add-circle"></i>
        <i class="layui-icon layui-icon-set"></i>
        <i class="layui-icon layui-icon-about"></i>
    </div>

</div>
<input type="text" style="display: none" id="trans" value="">



<script type="text/javascript">
    function getinfo(){
        var a=document.getElementById(id).innerHTML;
        document.getElementById('trans').value=a;

    }
    layui.use('element', function(){
        var element = layui.element;
        $('.layui-colla-title').click(function(){
            var theContent = $(this).next('.layui-colla-content');
            if (theContent.hasClass('layui-show')) {
                theContent.removeClass('layui-show');
            } else {
                theContent.addClass('layui-show');
            }
        });
        $('.box-btn-list-li').click(function(){
            var index = $(this).index();
            $('.box-btn-content').removeClass('layui-show').eq(index).addClass('layui-show');
        });
        // 在父页面打开聊天窗口
        // console.log(parent.layer)

        $('.box-my-list').click(function(){
            parent.createWindow();
        });
    });
</script>

