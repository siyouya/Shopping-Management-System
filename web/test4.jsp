<%@ page language="java" contentType="text/html; charset=GB2312"
         pageEncoding="GB2312"%>
<%@ page import="com.etc.dao.*" %>
<%@ page import="com.etc.entity.*" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">



<head><meta charset="GB2312">
    <title>֧������</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>
</title><meta http-equiv="X-UA-Compatible" content="ie=edge" /><meta name="keywords" content="������Ϸ����ƽ̨,���ν���ƽ̨,�㿨��ֵ,��Ϸװ��,�ʺŽ���,��Ϸ�ҽ���" /><meta name="description" content="������Ϸ������uu898��һ��������Ϸ����ƽ̨�����Ϊ�������ṩ���Ρ���Ϸ�ҡ���Ϸ�˺š��㿨��װ�������Ԫ������Ϸ�����Ƚ��׷�����Ϸ���׾���uu898.com��" /><meta http-equiv="Cache-Control" content="no-transform" /><meta http-equiv="Cache-Control" content="no-siteapp" /><meta name="applicable-device" content="pc" />
    <script src="/js/jquery-1.11.1.min.js"></script>
    <script src="/js/newPay.js?v=z53fde96v"></script><script src="//www.uu898.com/js/alertDiv.js?v=z53fde96v"></script>
    <script type="text/javascript" src="//user.uu898.com/js/PopUpLayer.js"></script>
    <script type="text/javascript" src="//imglist.img898.com/baidu/www.js"></script>
    <link rel="stylesheet" href="//s.img898.com/www/css/productDetails.css?v=z53fde96v" /><link rel="stylesheet" href="//s.img898.com/www/css/bigImgPopupLayer.css?v=z53fde96v" /><link rel="stylesheet" href="//dzimg.img898.com/www1/uu661/css/add.css?v=z53fde96v" /><link rel="stylesheet" href="//dzimg.img898.com/www1/uu661/css/base.css?v=z53fde96v" /><link rel="stylesheet" href="//www.uu898.com/css/base.css?v=z53fde96v" /><link rel="stylesheet" href="//s.img898.com/public/js/artDialog.css?v=z53fde96v" /><script src="//s.img898.com/public/js/artDialog.js?v=z53fde96v"></script><script src="//s.img898.com/www/js/checkuserauth.js?v=z53fde96v"></script>
    <style>
        #popupBackGround {
            display: none;
            align-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index: 1001;
            -moz-opacity: 0.7;
            -khtml-opacity: 0.8;
            opacity: .7;
            filter: alpha(opacity=70);
        }

        .showDialog {
            display: none;
            position: fixed;
            top: 15%;
            left: 30%;
            right: 30%;
            width: 535PX;
            margin: 0px;
            border: 0px solid #E8E9F7#000000;
            background-color: white;
            z-index: 1002;
        }

        .dialog_custom_sy_con_tit {
            width: auto;
        }
        /*   ֧����ͨ����    */
        .loading-img-pay{position: absolute;left: 0;top: 0;width: 180px;height: 180px;background: #000;color: #fff;}
        .loading-img-pay span{color: #fff;font-size: 14px;padding-top: 60px;line-height: 180%;}
        #yeepay P{text-align: center;padding: 80px 0 40px 0;font-size: 16px;}
        #yeepay P strong{color: #00b0ff;}
        #yeepay_go{background: #00b0ff;color: #fff;padding: 8px 20px;border-radius: 3px;}
    </style>
    <script>
        window.history.forward(1);
        $(function () {
            //
            initPage();
            //��ʾ�����ز�����
            jQuery.dshow = function (Abtn, showD) {
                $(showD).hide();
                $(Abtn).click(function () {
                    $(showD).toggle("slow");
                    return false;
                });
            };
            $.dshow(".order-tab", ".checkstand-detail");

            if ("False" == "True") {
                changePayType($("#liAliPayNewTab"), 22);
                $(".checkstand-payStyle").show();//changePayType�¼��У���u�꣬����֧����ʽ���أ���һ�μ���ʱ��Ҫչʾ�����Դ˴��ٴ�����Ϊ��ʾ״̬
            }

        });
        function closeBind() {
            CloseLayer();
            location.href = location.href;
        }
    </script>
</head>
<body style="background: #f9f9f9">

<%
    ShopDao shopdao=new ShopDao();
    OrderDao orderDao=new OrderDao();
    UserDao userDao=new UserDao();
    int uid=(int)session.getAttribute("uid");
     int bid=(int)session.getAttribute("bid");

    Shop shop =shopdao.queryidShop(bid);
    Order order=orderDao.findorder(bid);
    User user=userDao.queryAllUserAndType4(uid);
%>

    <div class="aspNetHidden">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value=" />
    </div>

    <div class="aspNetHidden">

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A207D628" />
    </div>
    <div class="top clearfix" style="background: #fff">

        <div class="logo_ss" style="width: 1000px;">
            <ul class="logo">
                <li>
                    <a href="main.jsp" target="_blank">
                        <img src="logo.PNG" alt="logo" /></a>
                    <span class="fb-right">����̨</span>
                </li>
            </ul>
            <p class=" checkstand-process2"></p>
        </div>
    </div>
    <div class="blue-bord3" style="background: #fff"></div>
    <!--����λ��-->


    <div class="wid-full">
        <div class="w1000 clearfix">
            <div class="w1000">
                <!--��һ����-->
                <div class="checkstand-tit clearfix">
                    <p class="fl">
                        <i></i>
                        �����ύ�ɹ�������һ���������İ�����Ʒ�����֧����~
                    </p>
                    <p class="fr">
                            <span>�������
                                <em>&yen;&nbsp;
                            <label id="lblOrderPayAmount"><%=shop.getPrice()%></label>
                                    <label id="lblPayUnit"></label>
                                </em>
                            </span>
                        <span>
                                <label id="lblOrderRemark"></label>
                            </span>
                    </p>
                </div>
                <div id="pnlDetailSingle">

                    <div class="checkstand-detail">
                        <p id="pOrderInfo"><span>��������ţ�</span><strong class="red"><%=order.getDid()%></strong><br /><span>����ҵ�ַ��</span><%=user.getAddress()%><br /><div style='margin-bottom:-18px;'>��<div id="unionServer1_divBox" class="divBox">
                        <span id="unionServer1_lblServer">��ע�����Ķ�����ţ����ֻ�����</span><br />
                        <span id="unionServer1_lblServerList" title=""></span>
                    </div>
                        <style>
                            .divBox{
                                background:#E8F7FD;
                                border:1px solid #AEDFF4;
                                min-height:50px;
                                display:inline-block;
                                padding:5px 5px 5px 5px;
                            }
                            .divBox span{
                                font-size:12px;
                                color:#666666;
                            }
                            .divBox .span_tag{
                                background:#F7536E;
                                border-radius:8px;
                                width:60px;
                                text-align:center;
                                color:#fff;
                                display:inline-block;
                            }
                        </style></div><br /><span>����Ʒ���ƣ�</span><span id='commtitle'><%=shop.getShopname()%></span><br /><span>����Ʒ������</span>1<br /><span>���ջ��˵绰��</span><%=user.getTel()%><br /></p>
                        <p>
                            <span id="lblOrderSingleRemark1"></span>
                        </p>
                        <p>
                            <span id="lblOrderSingleRemark2"></span>
                        </p>
                    </div>


                </div>




                <div id="pnlNotOnlyUseUZ">

                    <div id="divOtherPayment" class="zf_box_wide checkstand-topBord">

                        <!-- ֧�� ��ʽ -->
                        <div id="tabbox" class="zf_card checkstand-card clearfix">
                            <ul class="tabs clearfix" id="tabs">

                                <li id="liAliPayTab" onclick="changePayType(this,2)" class="thistab"><i></i><a href="javascript:void(0);">֧����ͨ��һ</a></li>

                            </ul>
                            <div class="tab-pay-box">
                                <ul class="tab_conbox reheight270 checkstand-rebord clearfix" id="tab_conbox">
                                    <!--֧����֧��-->
                                    <li id="alipayItem" class="tab_con clearfix">
                                        <div class="alipay_ewm">

                                            <div>
                                                <img id="imgAliQrCode" src="timg.jpg    " class="fl img0" />
                                            </div>
                                            <span class="paymoney">&yen;<em id="lblZFBPay"></em>
                                                </span>
                                        </div>
                                        <div class="fl alipay_right">
                                            <p>
                                                <i></i><em>���ֻ�֧����<br />
                                                ɨһɨ���֧��</em>
                                            </p>
                                            <a href="javascript:void(0)" onmouseover="return showORHideDemo();" onmouseout="return showORHideDemo();" class="cxys_a">�鿴������ʾ&gt;&gt;</a>
                                            <div class="zfb_ts_d">
                                                <img src="//s.img898.com/www/png/images/zfb_ts.png" />
                                            </div>
                                        </div>
                                    </li>

                                            <div class="price clearfix">
                                                <span class="fontblack">֧����</span>
                                                <span class="fontnum">

                                                        <span id="lblEBankPay" class="paymoney"><%=shop.getPrice()%></span>
                                                    </span>
                                            </div>
                                    </li>

                                    <ul>
                                <div id="ect" class="zf_box_pad clearfix"  >

                                    <a href="MainServlet?option=order">֧�����</a>

                                </div>


                            </div>

                        </div>


                    </div>

                </div>

            </div>

        </div>
        <div style="clear: both">

        </div>
    </div>

</body>
</html>



