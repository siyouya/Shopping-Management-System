

<%@ page language="java" contentType="text/html; charset=GB2312"
         pageEncoding="GB2312"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GB2312">
    <title>Insert title here</title>
</head>
<script>

</script>
<body>

<<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>
    ������Ϸ������uu898.com-������Ϸ����ƽ̨�����Ρ���Ϸ�˺š���Ϸ�ҡ�װ�����㿨��ֵ��
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
<form method="post" action="/newPayb.aspx" id="frmPayment" class="jqtransform" target="_blank">
    <div class="aspNetHidden">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTM2OTk1MDY1OQ9kFgICAQ9kFhZmDxYCHgdWaXNpYmxlaGQCAg8WAh4JaW5uZXJodG1sBQUxOS43MGQCAw8WAh8BZWQCBA8WAh8BZWQCBg9kFgQCAQ8WAh8BBbANPHNwYW4+44CA6K6i5Y2V57yW5Y+377yaPC9zcGFuPjxzdHJvbmcgY2xhc3M9InJlZCI+MTU4NTMyMzA1OTwvc3Ryb25nPjxiciAvPjxzcGFuPuOAgOa4uOaIj+WMuuacje+8mjwvc3Bhbj7pu5HpvpnmsZ/ljLov6buR6b6Z5rGfMeWMujxiciAvPjxkaXYgc3R5bGU9J21hcmdpbi1ib3R0b206LTE4cHg7Jz7jgIA8ZGl2IGlkPSJ1bmlvblNlcnZlcjFfZGl2Qm94IiBjbGFzcz0iZGl2Qm94Ij4NCiAgICA8c3BhbiBpZD0idW5pb25TZXJ2ZXIxX2xibFNlcnZlciI+44CQ6buR6b6Z5rGf5Yy6L+m7kem+meaxnzHljLrjgJHlkozku6XkuIvljLrmnI3muLjmiI/lrpjmlrnmlbDmja7kupLpgJrvvIzkupLpgJrljLrmnI3llYblk4Hlj6/ov5vooYzkuqTmmJM8L3NwYW4+PGJyIC8+DQogICAgPHNwYW4gaWQ9InVuaW9uU2VydmVyMV9sYmxUYWciIGNsYXNzPSJzcGFuX3RhZyI+5pWw5o2u5LqS6YCaPC9zcGFuPg0KICAgIDxzcGFuIGlkPSJ1bmlvblNlcnZlcjFfbGJsU2VydmVyTGlzdCIgdGl0bGU9IuOAkOWNjuWMl+WMui/ljY7ljJcx5Yy644CR44CQ5Y2O5YyX5Yy6L+WNjuWMlzLljLrjgJHjgJDljY7ljJfljLov5Y2O5YyXM+WMuuOAkeOAkOays+WMl+WMui/msrPljJcx5Yy644CR44CQ5Lic5YyX5Yy6L+S4nOWMlzHljLrjgJHjgJDkuJzljJfljLov5Lic5YyXMuWMuuOAkeOAkOS4nOWMl+WMui/kuJzljJcz77yPN+WMuuOAkeOAkOWMl+S6rOWMui/ljJfkuqwx5Yy644CR44CQ5YyX5Lqs5Yy6L+WMl+S6rDLvvI805Yy644CR44CQ6L695a6B5Yy6L+i+veWugTHljLrjgJHjgJDlkInmnpfljLov5ZCJ5p6XMe+8jzLljLrjgJHjgJDmsrPljZfljLov5rKz5Y2XMeWMuuOAkeOAkOays+WNl+WMui/msrPljZcy5Yy644CR44CQ5bGx5Lic5Yy6L+WxseS4nDHljLrjgJHjgJDlsbHkuJzljLov5bGx5LicMu+8jzfljLrjgJHjgJDlsbHopb/ljLov5bGx6KW/MeWMuuOAkSI+44CQ5Y2O5YyX5Yy6L+WNjuWMlzHljLrjgJHjgJDljY7ljJfljLov5Y2O5YyXMuWMuuOAkeOAkOWNjuWMl+WMui/ljY7ljJczLi4uPC9zcGFuPg0KPC9kaXY+DQo8c3R5bGU+DQogICAgLmRpdkJveHsNCiAgICAgICAgYmFja2dyb3VuZDojRThGN0ZEOw0KICAgICAgICBib3JkZXI6MXB4IHNvbGlkICNBRURGRjQ7DQogICAgICAgIG1pbi1oZWlnaHQ6NTBweDsNCiAgICAgICAgZGlzcGxheTppbmxpbmUtYmxvY2s7DQogICAgICAgIHBhZGRpbmc6NXB4IDVweCA1cHggNXB4Ow0KICAgIH0NCiAgICAuZGl2Qm94IHNwYW57DQogICAgICAgIGZvbnQtc2l6ZToxMnB4Ow0KICAgICAgICBjb2xvcjojNjY2NjY2Ow0KICAgIH0NCiAgICAuZGl2Qm94IC5zcGFuX3RhZ3sNCiAgICAgICAgYmFja2dyb3VuZDojRjc1MzZFOw0KICAgICAgICBib3JkZXItcmFkaXVzOjhweDsNCiAgICAgICAgd2lkdGg6NjBweDsNCiAgICAgICAgdGV4dC1hbGlnbjpjZW50ZXI7DQogICAgICAgIGNvbG9yOiNmZmY7DQogICAgICAgIGRpc3BsYXk6aW5saW5lLWJsb2NrOw0KICAgIH0NCjwvc3R5bGU+PC9kaXY+PGJyIC8+PHNwYW4+44CA5ZWG5ZOB5ZCN56ew77yaPC9zcGFuPjxzcGFuIGlkPSdjb21tdGl0bGUnPuOAkOaLjeWNluS6pOaYk+OAkTE5LjflhYM9ODM45LiH6YeR4piF5omL5bel5omT6YCg77yM5a6J5YWo5Y+v6Z2g4piFPC9zcGFuPjxiciAvPjxzcGFuPuOAgOWVhuWTgeS7tuaVsO+8mjwvc3Bhbj4xPGJyIC8+PHNwYW4+44CA5pS26LSn6KeS6Imy5ZCN77yaPC9zcGFuPjE8YnIgLz5kAgcPFgIfAQVE44CQ5ouN5Y2W5Lqk5piT44CRMTkuN+WFgz04MzjkuIfph5HimIXmiYvlt6XmiZPpgKDvvIzlronlhajlj6/pnaDimIVkAgcPDxYCHwBoZGQCCA8PFgIfAGhkZAIJD2QWImYPZBYCAgMPDxYCHgRUZXh0BQQwLjQwZGQCAQ8WAh8AaBYCAgMPEGRkFgBkAgIPFgIfAGhkAgMPFgIfAGgWBGYPEA8WBB8CBQ7kvb/nlKhVVeeZveadoR4HRW5hYmxlZGhkZGRkAgEPDxYCHwIFATBkZAIEDxYCHgVzdHlsZQUNZGlzcGxheTpub25lO2QCBQ8WAh8EBQ1kaXNwbGF5Om5vbmU7ZAIGDxYCHwQFDWRpc3BsYXk6bm9uZTtkAgcPFgIfBAUNZGlzcGxheTpub25lO2QCCA9kFgICAQ8PFgIfAgUFMTkuNzBkZAIODxYCHwBoZAIRD2QWAgIBDxYCHwEFBTE5LjcwZAISD2QWAgIBDxYCHwEFBTE5LjcwZAITD2QWAgIBDxYCHwEFBTE5LjcwZAIUD2QWAgIBDxYCHwEFBTE5LjcwZAIVDxYCHwBoFgICAQ8WAh8BBQUxOS43MGQCFg8WAh8AaBYCAgEPFgIfAQUFMTkuNzBkAhgPDxYCHwIFJOaXoOazleaJq+egge+8n+eZu+W9leaUr+S7mOWuneS7mOasvmRkAg8PD2QWAh4HT25DbGljawUbcmV0dXJuIGVudGVySW52YWxpZChldmVudCk7ZAIQD2QWAmYPFgIfAGgWCGYPZBYCZg8PFgIfAgUEMC40MGRkAgEPFgIfAGgWAgIBDxBkZBYAZAICDxYCHwBoFgICAQ8PFgIfAgUBMGRkAgMPFgIfAGgWAmYPDxYCHwIFATBkZAIlDw8WAh8CBSflnLDkuIvln47kuI7li4flo6sv5rKz5YyX5Yy6L+ays+WMlzHljLpkZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQUNY2tiVXNlQmFsYW5jZZTXu+fUgJ2uO1v3vR2zyjp6NUPq" />
    </div>

    <div class="aspNetHidden">

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A207D628" />
    </div>
    <div class="top clearfix" style="background: #fff">

        <div class="logo_ss" style="width: 1000px;">
            <ul class="logo">
                <li>
                    <a href="//www.uu898.com/" target="_blank">
                        <img src="download.jpg" alt="logo" /></a>
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
                            <label id="lblOrderPayAmount">160.0</label>
                                    <label id="lblPayUnit"></label>
                                </em>
                            </span>
                        <span>
                                <label id="lblOrderRemark"></label>
                                <a href="javascript:void(0)" id="lnlOrderRemark" class="order-tab">��������<i></i></a>
                            </span>
                    </p>
                </div>
                <div id="pnlDetailSingle">

                    <div class="checkstand-detail">
                        <p id="pOrderInfo"><span>��������ţ�</span><strong class="red">1585323059</strong><br /><span>����ҵ�ַ��</span>����ѧԺ1������<br /><div style='margin-bottom:-18px;'>��<div id="unionServer1_divBox" class="divBox">
                        <span id="unionServer1_lblServer">��ע�����Ķ�����ţ����ֻ�����</span><br />
                        <span id="unionServer1_lblTag" class="span_tag">���ɶ���</span>
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
                        </style></div><br /><span>����Ʒ���ƣ�</span><span id='commtitle'>���޼�G403���ߵ羺��Ϸ��е���</span><br /><span>����Ʒ������</span>1<br /><span>���ջ��˵绰��</span>13215926160<br /></p>
                        <p>
                            <span id="lblOrderSingleRemark1"></span>
                        </p>
                        <p>
                            <span id="lblOrderSingleRemark2"></span>
                        </p>
                    </div>
                    <span id="commTitle" style="display: none">���޼�G403���ߵ羺��Ϸ��е���</span>

                </div>
                <!--��������-->

                <div class="btip" style="display:none;padding: 15px 0;text-align: left;">
                    <span class="tg-tip"><a class="tg-ques">?<i class="tg-ques-pop">���������������û��׵�����200���<br>1.11��19��֮��ע������û�<br>2.�ױ�DNF��������ʹ��֧����֧��</i></a></span>
                </div>
                <script>
                    $(function(){
                        if(location.href.indexOf('istg')>=0 && "".length>0){
                            $(".btip").show();
                        }else{
                            $(".btip").hide();
                        }
                    })
                </script>



                <div id="pnlNotOnlyUseUZ">

                    <div id="divOtherPayment" class="zf_box_wide checkstand-topBord">
                        <ul class="checkstand-payStyle">
                            <li id="liUUBalance" class="list_01">
                                <input id="ckbUseBalance" type="checkbox" name="ckbUseBalance" /><label for="ckbUseBalance">ʹ�ð˺ŵ�������</label>
                                <em>����ǰ��</em>
                                <span>&yen;</span>
                                <span id="lblUUBalance">20.0</span>
                                <em>��</em>
                            </li>



                            <li class="list_02">
                                <div id="divBalPayMsg" style="display:none;">
                                    <em>UU898���֧��</em><span>&yen;</span>
                                    <span id="lblUseUUBalance">0</span>
                                </div>
                                <div id="divDjqPayMsg" style="display:none;">
                                    <em>����ȯ֧��</em><span>&yen;</span>
                                    <span id="lblUseDJQCount">0</span>
                                </div>
                                <div id="divUZPayMsg" style="display:none;">
                                    <em>U��֧��</em><span>&yen;</span>
                                    <span id="lblUseUZCount">0</span>
                                </div>
                                <div id="divBTPayMsg" style="display:none;">
                                    <em>����֧��</em><span>&yen;</span>
                                    <span id="lblUseBaiTiao">-1</span>
                                </div>
                                <div id="divOtherPayMsg" style="display: inline-block">
                                    <em>����֧��</em><span class="red">&yen;</span>
                                    <span class="red">
                                            <span id="lblOtherCount">160.0</span>
                                        </span>
                                </div>
                            </li>
                        </ul>
                        <!-- ֧�� ��ʽ -->
                        <div id="tabbox" class="zf_card checkstand-card clearfix">
                            <ul class="tabs clearfix" id="tabs">

                                <li id="liAliPayTab" onclick="changePayType(this,2)" class="thistab"><i></i><a href="javascript:void(0);">֧����ͨ��һ</a></li>
                                <!--<li id="liWYPayTab" onclick="changePayType(this,1)"><a href="javascript:void(0);">����֧��</a></li>
                                <li id="liXYKPayTab" onclick="changePayType(this,5)"><a href="javascript:void(0);">���ÿ�</a></li>-->
                                <li id="liCFTPayTab" onclick="changePayType(this,3)" style="display: none"><a href="javascript:void(0);">�Ƹ�ͨ</a></li>

                                <li id="liWXPayTab" onclick="changePayType(this,15)"><a href="javascript:void(0);">΢��ͨ��һ</a></li>
                                <li id="liYeepay" onclick="changePayType(this,27)" style="display:none;"><a href="javascript:void(0);">���п�֧��</a></li>
                            </ul>
                            <div class="tab-pay-box">
                                <ul class="tab_conbox reheight270 checkstand-rebord clearfix" id="tab_conbox">
                                    <!--֧����֧��-->
                                    <li id="alipayItem" class="tab_con clearfix">
                                        <div class="alipay_ewm">

                                            <div>
                                                <img id="imgAliQrCode" src="timg.jpg    " class="fl img0" />
                                            </div>
                                            <span class="paymoney">&yen;<em id="lblZFBPay">160.0</em>
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
                                    <!--����֧��-->
                                    <!--���ÿ�֧��-->
                                    <li id="eBankItem" class="tab_con clearfix" style="display: none">
                                        <div class="bankchoose">
                                            <div class="bankchoose">
                                                <div id="banklist_CreditAccount" class="clearfix">
                                                    <label class="hover_sel">
                                                        <span onclick="selectBank('ICBC',this);" class="bank-icbc" title="�й���������">�й���������</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('CMB',this);" class="bank-cmb" title="��������">��������</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('CCB',this)" class="bank-ccb" title="�й���������">�й���������</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('ABC',this);" class="bank-abc" title="�й�ũҵ����">�й�ũҵ����</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('BOC',this);" class="bank-boc" title="�й�����">�й�����</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('SPDB',this);" class="bank-spdb" title="�Ϻ��ֶ���չ����">�Ϻ��ֶ���չ����</span>
                                                    </label>

                                                    <label>
                                                        <span onclick="selectBank('CIB',this);" class="bank-cib" title="��ҵ����">��ҵ����</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('BOB',this);" class="bank-bob" title="��������">��������</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('CEB',this);" class="bank-cebb" title="�й��������">�й��������</span>
                                                    </label>
                                                    <label>
                                                        <span onclick="selectBank('COMM',this);" class="bank-boco" title="��ͨ����">��ͨ����</span>
                                                    </label>


                                                    <label>
                                                        <span onclick="selectBank('GDB',this);" class="bank-gdb" title="�㷢����">�㷢����</span></label>
                                                    <label>
                                                        <span onclick="selectBank('1028',this);" class="bank-psbc" title="�й���������">�й���������</span></label>
                                                </div>
                                            </div>
                                            <div class="price clearfix">
                                                <span class="fontblack">֧����</span>
                                                <span class="fontnum">
                                                        <span class="paymoney">&yen;</span>
                                                        <span id="lblEBankPay" class="paymoney">160.0</span>
                                                    </span>
                                            </div>
                                        </div>
                                    </li>
                                    <!--�Ƹ�֧ͨ��-->
                                    <li id="tenpayItem" class="tab_con" style="display: none">
                                        <div class="cft">
                                            <div class="cftzf">
                                                <span class="fontblack">֧��������</span>
                                                <span class="zficon">
                                                        <img src="//s.img898.com/user/png/images/cftlogo.png" />
                                                    </span>
                                                <span class="fontgray">�Ƹ�֧ͨ�����������ܿ�ݡ�����Ŀͻ����飡</span>
                                            </div>
                                            <p class="clearfix"></p>
                                            <div class="price">
                                                <span class="fontblack">֧����</span>
                                                <span class="fontnum">
                                                        <span class="paymoney">&yen;</span>
                                                        <span id="lblCFTPay" class="paymoney">160.0</span>
                                                    </span>
                                            </div>
                                            <p class="clearfix"></p>
                                            <div class="remfont">
                                                �Ƹ�ͨ����Ѷ��˾������й����ȵ�����֧��ƽ̨��������Ϊ�������û�����ҵ�ṩ��ȫ����ݡ�רҵ������֧������
                                            </div>
                                        </div>
                                    </li>
                                    <!--΢��֧��-->
                                    <li id="wechatItem" class="tab_con clearfix" style="display: none">
                                        <div class="wechat_ewm">

                                            <div>
                                                <img id="imgwechatCode" src="" class="fl img0" />
                                            </div>
                                            <span class="paymoney" style="display: block; text-align: center; font-size: 22px; color: #666;">&yen;<em id="wechat">19.70</em>
                                                </span>
                                        </div>
                                        <div style="width: 210px; height: 18px; margin-left: 130px; color: green; text-align: center;">΢��֧����0��������</div>
                                        <div class="fl alipay_right">
                                            <p>
                                                <i></i><em>���ֻ�΢��<br />
                                                ɨһɨ���֧��</em>
                                            </p>
                                            <a href="javascript:void(0)" onmouseover="return showORHideDemo();" onmouseout="return showORHideDemo();" class="cxys_a">�鿴������ʾ&gt;&gt;</a>
                                            <div class="zfb_ts_d">
                                                <img src="//s.img898.com/www/png/images/wx_ts.png" />
                                            </div>
                                        </div>
                                    </li>
                                    <!--֧����ͨ����֧��-->

                                    <!--΢��ͨ����֧��-->

                                    <li id="yeepay" class="tab_con clearfix" style="display: none">
                                        <p>������ת�� <strong>�ױ�֧��</strong> ��ɸ���</p>
                                        <a href="test2.jsp" >֧�����</a>
                                    </li>
                                </ul>
                                <div class="h40-pay"></div>
                                <div id="ect" class="zf_box_pad clearfix"  >
                                    <a href="main.jsp">֧�����</a>

                                </div>
                            </div>

                        </div>


                    </div>

                </div>

            </div>

        </div>
        <div style="clear: both"></div>

        <!--ʹ�����֧������-->
        <div id="divPayNowDlg" class="showDialog" style="display: none">
            <div class="dialog_custom_sy_box">
                <div class="dialog_custom_sy_con">
                    <h1 class="clearfix">
                        <a href="javascript:closePayNowDlg()" style="float: right">
                            <img src="//s.img898.com/www/png/images/wym_0a.png" />
                        </a>
                        <label>ȷ�ϸ���</label>
                    </h1>
                    <div class="con_pay clearfix">
                        <p>ȷ��ʹ��:</p>
                        <span id="divBalPayMsg2">
                                <em>���֧��</em><span>&yen;</span>
                                <span id="lblUseUUBalance2">0</span>
                            </span>
                        <span id="divDjqPayMsg2">
                                <em>����ȯ֧��</em><span>&yen;</span>
                                <span id="lblUseDJQCount2">0</span>
                            </span>
                        <span id="divUZPayMsg2">
                                <em>U��֧��</em><span>&yen;</span>
                                <span id="lblUseUZCount2">0</span>
                            </span>
                        <span id="divBTPayMsg2">
                                <em>����֧��</em><span>&yen;</span>
                                <span id="lblUseBaiTiao2">0</span>
                            </span>
                        <p>��֧��<em>��</em><em id="lblPayAmount2">000</em></p>
                    </div>
                    <div class="dialog_custom_sy_btn clearfix">
                        <div class="dialog-zhifu-btn">
                            <button type="button" id="btnCancel" onclick="closePayNowDlg();" class="margr20 gray-btn">ȡ��</button>
                            <input type="submit" name="btnPayNow" value="����֧��" onclick="return enterInvalid(event);" id="btnPayNow" class="blue-btn" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--DNF�ƹ�֧��������ʾ-->
        <div id="divSuccessDlg" class="generalize-dlg" style="display: none;">
            <div class="title">��ܰ��ʾ<a class="genner-close" href="//www.uu898.com/newTrade-95-c-3-2339-s25084/">X</a></div>
            <div class="content">
                    <span class="gener-title success-title">
                        <i class="success-icon genner-icon"></i>
                        ����ɹ���ȷ���ջ���Ϣ
                    </span>
                <ul class="success-ul">
                    <li><span class="label">�ջ���ɫ����</span><span class="label-con" id="spanSuccessRollName"></span></li>
                    <li><span class="label">��ɫ������</span><span class="label-con" id="spanSuccessAreaServerName"> </span></li>
                    <li><span class="label">Ԥ�Ʒ���ʱ�䣺</span><span class="label-con" id="spanSuccessSendTime">3��31��14��42ǰ�������</span></li>
                </ul>
                <div style="margin: 20px 0">
                    <a href="//www.uu898.com/newTrade-95-c-3-2339-s25084/" class="dlg-btn">ȷ�������뷢��</a>
                </div>
                <div style="font-size: 14px;"><span class="tip" style="padding-right: 15px;">�ٷ�QQȺ��668523921</span>���ྫ�ʻ��Ⱥ��ѯ����Ա</div>
            </div>
        </div>
        <div id="divFailDlg" class="generalize-dlg" style="display: none;">
            <div class="title">��ܰ��ʾ<a class="genner-close" href="//www.uu898.com/newTrade-95-c-3-2339-s25084/">X</a></div>
            <div class="content" style="padding: 40px 0 15px 0;">
                    <span class="gener-title fail-title" id="spanErrorMsg">
                        <i class="fail-icon genner-icon"></i>
                        �ǳ���Ǹ���Ѿ�������˻
                    </span>
                <div style="margin: 20px 0">
                    <a href="//user.uu898.com" class="fail-btn" style="background: #00b0ff;">�鿴�ҵ����</a>
                    <a href="//www.uu898.com/newTrade-95-c-3-2339-s25084/" class="fail-btn" style="background: red;">�鿴������Ϸ����Ʒ</a>
                </div>
            </div>
        </div>
        <!--DNF�ƹ�֧������js-->
        <script type="text/javascript">
            function SuccessModel() {   //  �����ɹ�
                $('#popupBackGround,#divSuccessDlg').show()
            }
            function FailModel() {    //   ����ʧ��
                $('#popupBackGround,#divFailDlg').show()
            }
        </script>
        <div id="popupBackGround"></div>
        <!--���š�΢�š���̬���֧������ ��֤-->
        <div id="divVerifyDlg" class="showDialog" style="display: none">
            <div class="dialog_custom_sy_box">
                <div class="dialog_custom_sy_con">
                    <h1 class="clearfix">
                        <a href="javascript:closePopup()" style="float: right">
                            <img src="//s.img898.com/www/png/images/wym_0a.png" />
                        </a>
                        <label id="lblVerifyDlgTitle">ʹ��UU898���֧��</label>
                    </h1>



                    <div class="dialog_custom_sy_con_tit clearfix">
                        <h3><span id="verifyName">΢����֤��</span></h3>
                        <em>
                                <span id="lblCloseVerifyDlgMsg">
                                    <label>��3�����</label><a href="javascript:closePopup()">�ر���֤����</a>
                                </span>
                            <!--���»�ȡ ����-->
                            <label id="lblMobileSendedMsg" class="ts"></label>
                            <a id="btnGetPhoneVCodeAgain" class="blue-btn" href="javascript:void(0)">���»�ȡ<span></span></a>
                            <!--���»�ȡ ΢��-->
                            <label id="lblWechatSendedMsg" class="ts"></label>
                            <a id="btnGetWechatVCodeAgain" class="blue-btn" href="javascript:void(0)">���»�ȡ<span></span></a>
                        </em>
                    </div>
                    <div id="divVerifyContent" class="dialog_custom_sy_con_info clearfix">
                        <div class="pass_input pos clearfix">
                            <input id="txtVerifyCode" class="pub_txt_in" type="text" value="" maxlength="6" autocomplete="off" onkeydown="onKeyDown();" onkeyup="checkVerifyCode();" />
                            <a id="btnToVerifyCode" class="newpay_sure" href="javascript:toCheckVerifyCode()">ȷ<br />
                                ��</a>
                            <input type="text" style="display: none" />
                            <input id="txtVerifyPwd" class="txt20" type="password" value="" maxlength="20" autocomplete="off" onkeydown="onKeyDown();" />
                            <input type="text" style="display: none" />
                        </div>
                        <span id="verifyMsg">��֤�� ������ȷ��</span>
                    </div>
                    <div id="divIsVerifing" class="dialog_custom_sy_con_info clearfix">
                        <span class="wz">��֤��...</span>
                    </div>
                    <script>
                        $(function () {
                            $(".kq_lab input").click(function () {
                                if ($(this).get(0).checked) {
                                    $(".control_div").show()
                                } else {
                                    $(".control_div").hide()
                                }
                            })
                            $(".kq_lab").click(function () {
                                if ($(this).find("input")[0].checked) {
                                    $(this).find("font").html("����֧����֤ͨ������")
                                } else {
                                    $(this).find("font").html("��ǰδ����")
                                }
                            })
                        })
                    </script>
                    <!-- update -->
                    <div class="free_validate clearfix">
                            <span class="control_check0704">
                                <script>
                                    $(function () {


                                    })

                                </script>
                                <label class="kq_lab">
                                    <input type="checkbox" id="chkOpenNoVali" />
                                    ��������֤����(<font>��ǰδ����</font>)</label>
                            </span>
                        <div class="control_div">
                                <span>������
                            <select id="novali">
                                <option>δ����</option>
                                <option>1Сʱ</option>
                                <option>2Сʱ</option>
                                <option>3Сʱ</option>
                                <option>4Сʱ</option>
                                <option>5Сʱ</option>
                                <option>6Сʱ</option>
                                <option>7Сʱ</option>
                                <option>8Сʱ</option>
                                <option>9Сʱ</option>
                                <option>10Сʱ</option>
                                <option>11Сʱ</option>
                                <option>12Сʱ</option>
                            </select>
                                    ���ڱ�����ʹ�ý�������֤,ͬ����ȫ���ӱ��~
                                </span>
                        </div>
                    </div>
                    <div id="free_validate_hide" style="display: none">
                        ����ǰ����������֤������������֤ͨ�������¿�����
                    </div>

                    <!--֧������-->
                    <div id="divPayPwd" class="dialog_custom_sy_btn clearfix">
                        <div class="dialog-zhifu-btn">
                            <a href="/ReFindPassword/ReFindPyPwdbyemail.aspx" target="_blank" class="margr20 blue-btn">����֧�����룿</a>
                            <a href="javascript:toCheckVerifyCode()" class="red-btn">ȷ��</a>
                        </div>
                    </div>
                    <!--������֤��-->
                    <div id="divMobileVerify" class="dialog_custom_sy_btn clearfix">
                        <div class="dialog-other-style">
                            <em>������ʽ��֤</em>
                            <div></div>
                        </div>
                        <div class="dialog-btn-group clearfix">
                                <span id="divToBindWeChat1" class="wx-unlogin pos_l" style="display: none;"
                                      onmouseover="changeToElemOnFocus('mobileChangeToWechat');" onmouseout="changeToElemOnMouseOut('mobileChangeToWechat')">
                                    <em></em>����û�а�΢��&nbsp;<a href="/BindWeChat.aspx" target="_blank">��˰�</a>
                                    <span style="cursor: pointer" onclick="closeNotBindMsg('divToBindWeChat1')">��</span>
                                </span>
                            <span id="divToBindUUDync1" class="wx-unlogin pos_r" style="display: none;"
                                  onmouseover="changeToElemOnFocus('mobileChangeToUUDync');" onmouseout="changeToElemOnMouseOut('mobileChangeToUUDync')">
                                    <em></em>����û�а�UU����&nbsp;<a href="/BindMobileMiLing.aspx" target="_blank">��˰�</a>
                                    <span style="cursor: pointer" onclick="closeNotBindMsg('divToBindUUDync1')">��</span>
                                </span>
                            <a id="mobileChangeToWechat" onmouseover="changeToElemOnFocus('mobileChangeToWechat');" onmouseout="changeToElemOnMouseOut('mobileChangeToWechat')"
                               href="javascript:checkVerifyType(3);" class="obtn margr20 blue-btn">
                                <i class="wx-ico"></i>
                                <span>�л���΢����֤</span>
                            </a>
                            <a id="mobileChangeToUUDync" onmouseover="changeToElemOnFocus('mobileChangeToUUDync');" onmouseout="changeToElemOnMouseOut('mobileChangeToUUDync')"
                               href="javascript:checkVerifyType(6);" class="obtn blue-btn">
                                <i class="uu-ico"></i>
                                <span>�л���UU������֤</span>
                            </a>
                        </div>
                    </div>
                    <!--΢����֤��-->
                    <div id="divWechatVerity" class="dialog_custom_sy_btn clearfix">
                        <div class="dialog-other-style">
                            <em>������ʽ��֤</em>
                            <div></div>
                        </div>
                        <div class="dialog-btn-group clearfix">
                                <span id="divToBindMobile1" class="wx-unlogin pos_l" style="display: none;"
                                      onmouseover="changeToElemOnFocus('wechatChangeToMobile');" onmouseout="changeToElemOnMouseOut('wechatChangeToMobile')">
                                    <em></em>����û�а��ֻ�&nbsp;<a href="/BindMobile.aspx" target="_blank">��˰�</a>
                                    <span style="cursor: pointer" onclick="closeNotBindMsg('divToBindMobile1')">��</span>
                                </span>
                            <span id="divToBindUUDync2" class="wx-unlogin pos_r" style="display: none;"
                                  onmouseover="changeToElemOnFocus('wechatChangeToUUDync');" onmouseout="changeToElemOnMouseOut('wechatChangeToUUDync')">
                                    <em></em>����û�а�UU����&nbsp;<a href="/BindMobileMiLing.aspx" target="_blank">��˰�</a>
                                    <span style="cursor: pointer" onclick="closeNotBindMsg('divToBindUUDync2')">��</span>
                                </span>
                            <a id="wechatChangeToMobile" onmouseover="changeToElemOnFocus('wechatChangeToMobile');" onmouseout="changeToElemOnMouseOut('wechatChangeToMobile')"
                               href="javascript:checkVerifyType(2);" class="obtn margr20 blue-btn">
                                <i class="dx-ico"></i>
                                <span>�л���������֤</span>
                            </a>
                            <a id="wechatChangeToUUDync" onmouseover="changeToElemOnFocus('wechatChangeToUUDync');" onmouseout="changeToElemOnMouseOut('wechatChangeToUUDync')"
                               href="javascript:checkVerifyType(6);" class="obtn blue-btn">
                                <i class="uu-ico"></i>
                                <span>�л���UU������֤</span>
                            </a>
                        </div>
                    </div>
                    <!--��̬������-->
                    <div id="divUUDyncVerity" style="display:none" class="dialog_custom_sy_btn clearfix">
                        <div class="dialog-other-style">
                            <em>������ʽ��֤</em>
                            <div></div>
                        </div>
                        <div class="dialog-btn-group clearfix">
                                <span id="divToBindWeChat2" class="wx-unlogin pos_l" style="display: none"
                                      onmouseover="changeToElemOnFocus('uuDyncChangeToWechat');" onmouseout="changeToElemOnMouseOut('uuDyncChangeToWechat')">
                                    <em></em>����û�а�΢��&nbsp;<a href="/BindWeChat.aspx" target="_blank">��˰�</a>
                                    <span style="cursor: pointer" onclick="closeNotBindMsg('divToBindWeChat2')">��</span>
                                </span>
                            <span id="divToBindMobile2" class="wx-unlogin pos_r" style="display: none"
                                  onmouseover="changeToElemOnFocus('uuDyncChangeToMobile');" onmouseout="changeToElemOnMouseOut('uuDyncChangeToMobile')">
                                    <em></em>����û�а��ֻ�&nbsp;<a href="/BindMobile.aspx" target="_blank">��˰�</a>
                                    <span style="cursor: pointer" onclick="closeNotBindMsg('divToBindMobile2')">��</span>
                                </span>
                            <a id="uuDyncChangeToWechat" onmouseover="changeToElemOnFocus('uuDyncChangeToWechat');" onmouseout="changeToElemOnMouseOut('uuDyncChangeToWechat')"
                               href="javascript:checkVerifyType(3);" class="obtn margr20 gray-btn">
                                <i class="wx-ico"></i>
                                <span>�л���΢����֤</span>
                            </a>
                            <a id="uuDyncChangeToMobile" onmouseover="changeToElemOnFocus('uuDyncChangeToMobile');" onmouseout="changeToElemOnMouseOut('uuDyncChangeToMobile')"
                               href="javascript:checkVerifyType(2);" class="obtn blue-btn">
                                <i class="dx-ico"></i>
                                <span>�л���������֤</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="divWaitForOtherPay" class="showDialog" style="display: none; width: 460px;">
            <div class="dialog_custom_sy_box">
                <div class="dialog_custom_sy_con">
                    <h1 class="clearfix">
                        <a href="javascript:checkOrderStatus('')" style="float: right">
                            <img src="//s.img898.com/www/png/images/wym_0a.png" />
                        </a>
                        <label id="spWaitForTitle">��¼��������֧��</label>
                    </h1>
                    <div class="diag_wy">
                        <p id="spWaitForMsg">�������´򿪵���������ҳ�����֧����֧�����ǰ�벻Ҫ�رոô���</p>
                        <div class="diag_wy_pay bot-line">
                            <img src="//s.img898.com/www/png/images/syt_ico.png" />
                            <span>���Ѿ��ɹ�֧����������</span>
                            <a href="javascript:checkOrderStatus('');">�Ѿ����֧��</a>
                        </div>
                        <div class="diag_wy_pay">
                            <img src="//s.img898.com/www/png/images/syt_ico2.png" />
                            <span>�縶���������⣬����ԣ�</span>
                            <a href="//service.uu898.com/ask-list.aspx?key=%u5145%u503C" target="_blank" onclick="checkOrderStatus('');" class="bg">����鿴����</a>
                        </div>
                        <div id="payTypeAdvice" class="diag_wy_pay">
                            <span>������ѡ��</span>
                            <a id="aSelectAliPay" href="javascript:checkOrderStatus('aSelectAliPay');">֧����֧��</a>
                            <span>����</span>
                            <a href="javascript:checkOrderStatus('');" class="no">ѡ������֧����ʽ</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="divWaitForRedirect" class="showDialog" style="display: none; width: 460px;">
            <div class="dialog_custom_sy_box">
                <div class="dialog_custom_sy_con">
                    <h1 class="clearfix">
                        <a href="javascript:closeWaitForRedirectDlg();" style="float: right">
                            <img src="//s.img898.com/www/png/images/wym_0a.png" />
                        </a>
                        <label>��ʾ</label>
                    </h1>
                    <div class="state_b">
                        <p id="spPayResult" class="blue">�ȴ�֧��...</p>
                        <span id="spRedirectCountDown">3</span><span>���</span>
                        <a id="aRedirectMsg" href="javascript:closeWaitForRedirectDlg();">�رյ���</a>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <input type="hidden" name="hidPayType" id="hidPayType" value="2" />

    <input type="hidden" name="hidSelBank" id="hidSelBank" />

    <input type="hidden" name="hidVerifySucceed" id="hidVerifySucceed" value="0" />

    <input type="hidden" name="hidVerifyCode" id="hidVerifyCode" />

    <input type="hidden" name="hidVerifyType" id="hidVerifyType" value="2" />

    <input type="hidden" name="hidOrderType" id="hidOrderType" value="1" />

    <input type="hidden" name="hidOrderNo" id="hidOrderNo" value="1585323059" />

    <input type="hidden" name="hidUserID" id="hidUserID" value="13215926160" />

    <input type="hidden" name="hidIsBindMobile" id="hidIsBindMobile" value="1" />

    <input type="hidden" name="hidIsBindWechat" id="hidIsBindWechat" value="0" />

    <input type="hidden" name="hidIsBindUUDync" id="hidIsBindUUDync" value="0" />

    <input type="hidden" name="hidUseUZuan" id="hidUseUZuan" value="0" />

    <input type="hidden" name="hidUZPrice" id="hidUZPrice" value="nan" />

    <input type="hidden" name="hidSelVouch" id="hidSelVouch" value="0" />

    <input type="hidden" name="hidBindMobile" id="hidBindMobile" value="1" />

    <input type="hidden" name="hidNoValidate" id="hidNoValidate" value="0" />

    <input type="hidden" name="hidNoValiMoney" id="hidNoValiMoney" value="2000" />

    <input type="hidden" name="hidYEBMoney" id="hidYEBMoney" value="0" />

    <input type="hidden" name="hidUsedBankPayAmount" id="hidUsedBankPayAmount" value="0" />
    <input type="hidden" name="hidBankPayChargeLine" id="hidBankPayChargeLine" value="0" />

    <div id="PopUpLayer" style="display: none"></div>
    <div id="divMallScaleRemind" class="showDialog" style="display: none; width: 540px;">
        <div class="dialog_custom_sy_box">
            <div class="dialog_custom_sy_con">
                <h1 class="clearfix"><a href="javascript:closeMallScaleRemind();" style="float: right">
                    <img src="//s.img898.com/user/png/images/wym_0a.png">
                </a>
                    <label>��ܰ��ʾ</label>
                </h1>
                <div class="free_validate_tip">
                    <p>�����޸�����Ʒ��������ȷ�����Ƿ�֧��</p>
                    <span class="clearfix">
                            <label>��Ʒ������</label>
                            <em id="mallScale" class="normal_style">1Ԫ=1.99�� 1��=0.11Ԫ</em></span>
                    <span class="clearfix">
                            <label>����������</label>
                            <em id="mallCoinCount" class="normal_style fc-gray">9991��</em></span>
                    <span class="clearfix">
                            <label>֧����</label>
                            <em id="mallPrice">100.00Ԫ</em></span>
                </div>
                <div class="pop-grounp-btn07"><a href="javascript:closeMallScaleRemind();" class="pop-btn07 white-btn07">ȡ��</a> <a href="javascript:closeMallScaleRemind();" class="pop-btn07 blue-btn07">����֧��</a> </div>
            </div>
        </div>
    </div>

    <div id="divNoValidate" class="showDialog" style="display: none; width: 460px;">
        <div class="dialog_custom_sy_box">
            <div class="dialog_custom_sy_con">
                <h1 class="clearfix"><a href="javascript:closeNoValidateDlg();" style="float: right">
                    <img src="//s.img898.com/user/png/images/wym_0a.png">
                </a>
                    <label>��ܰ��ʾ</label>
                    <a href="/userchooseconfig.aspx" class="h1_tit" target="_blank">��ιر�����֤����</a> </h1>
                <div class="free_validate_tip short-form-label">
                    <p>����ǰ�ѿ�������֤���񣬱���֧�����������֤</p>
                    <p>������<em id="lblOrderPayAmountNv" style="color: red">�� 0</em></p>
                    <span id="divUserBalanceNv" class="clearfix">
                            <label>
                                <input id="chkUserBalanceNv" type="checkbox" onclick="UserBalanceNv()" />
                                ʹ����</label>
                            <em>(��ǰ��<strong id="lblUserBalanceNv"></strong>)</em></span>
                    <span id="divUzuanNv" class="clearfix">
                            <label>
                                <input id="chkUzuanNv" type="checkbox" onclick="UzuanNv()" />
                                &nbsp;ʹ��U�꣺</label>
                            <em>(��ǰU�꣺<strong id="lblUzuanNv"></strong>)</em></span>
                    <span id="divOnlyUzuanNv" class="clearfix" style="display: none">
                            <label>
                                &nbsp;ʹ��U�꣺</label>
                            <em>(��ǰU�꣺<strong id="lblOnlyUzuanNv"></strong>)</em></span>
                    <span id="divUserBaiTiaoNv" class="clearfix">
                            <label>
                                <input id="chkUserBaiTiaoNv" type="checkbox" onclick="UserBaiTiaoNv()" />
                                ʹ�ð�����</label>
                            <em>(��ǰ������<strong id="lblUserBaiTiaoNv"></strong>)</em></span>
                    <span id="divTotalPayNv" class="clearfix">

                            <label>ʹ����� ��U�깲֧����</label>
                            <em id="lblTotalPayNv" class="f-orange"></em></span>
                    <span id="divOtherPayNv" class="clearfix">
                            <label>����֧����</label>
                            <em id="lblOtherPayNv" class="f-orange">�� 55</em></span>
                </div>
                <style>
                    .short-form-label label {
                        width: 194px !important;
                        font-size: 12px !important;
                    }

                    .short-form-label span em {
                        font-size: 12px;
                        color: #747474;
                        font-weight: normal;
                    }

                    .short-form-label span strong {
                        color: red;
                    }
                </style>
                <div class="pop-grounp-btn07"><a href="javascript:closeNoValidateDlg();" class="pop-btn07 white-btn07">ȡ��</a> <a href="javascript:novalidatePay()" class="pop-btn07 blue-btn07">ȷ��</a> </div>
            </div>
        </div>
    </div>
    <div id="wrongServerWarn" class="showDialog" style="display: none; width: 540px;">
        <div class="dialog_custom_sy_box">
            <div class="dialog_custom_sy_con">
                <h1 class="clearfix"><a href="javascript:closewarnSever();" style="float: right">
                    <img src="//s.img898.com/user/png/images/wym_0a.png">
                </a>
                    <label>����ȷ��</label>
                </h1>
                <div class="free_validate_tip" style="font-weight: bold;">
                    <span>����ǰ�������Ʒ����Ϊ��</span>
                    <span class="clearfix">
                            <span id="lblServer">���³�����ʿ/�ӱ���/�ӱ�1��</span>
                        </span>
                    <span class="clearfix">
                            <font style="color: #FF6600;">������ϸ�˶ԣ��������������</font></span>
                </div>
                <div class="pop-grounp-btn07">
                    <a href="javascript:closewarnSever();" class="pop-btn07 white-btn07" style="background: #00b0ff; color: #fff; font-size: 16px;">ȷ�����󡢼�������</a>
                </div>
            </div>
        </div>
    </div>
    <div id="wrongCardCharge" class="showDialog" style="display: none; width: 540px;">
        <div class="dialog_custom_sy_box">
            <div class="dialog_custom_sy_con">
                <h1 class="clearfix"><a href="javascript:closewarnCharge();" style="float: right">
                    <img src="//s.img898.com/user/png/images/wym_0a.png">
                </a>
                    <label>��Ϣȷ��</label>
                </h1>
                <div class="free_validate_tip" style="font-weight: bold;">
                    <span id="cardChargeAccount"></span>
                    <span class="clearfix"></span>
                    <span id="cardChargeServer">����</span>
                    <span class="clearfix"></span>
                    <span id="cardChargeJsm">��ɫ��</span>
                    <span class="clearfix"></span>
                    <span id="cardChargeNum">��ȯ3000</span>
                    <span class="clearfix"></span>
                    <span id="cardChargePrice">��30Ԫ</span>
                    <span class="clearfix"></span>
                    <span class="clearfix">
                            <font style="color: #FF6600;">������ϸ�˶ԣ�������</font></span>
                </div>
                <div class="pop-grounp-btn07">
                    <a href="javascript:closewarnCharge();" class="pop-btn07 white-btn07" style="background: #00b0ff; color: #fff; font-size: 16px;">ȷ�����󡢼�������</a>
                </div>
            </div>
        </div>
    </div>
</form>
<div class="floatTip" style="display: none;">
    <i>��</i>
    ������ɺ�,���κ�����Ҫ�ؽ�ҵĶ���ƭ��
</div>
<!--kefu-->
<script>
    NTKF_PARAM = {
        siteid: "kf_9725",
        settingid: "kf_9725_1421659802125",
        uid: "",
        uname: ""
    };
    var yebPayName = "����";
    function NtalkerKefu(type) {
        try { NTKF.im_openInPageChat(); }
        catch (er) { }
    }
    //�˷������������õ���ȷ�ĳ˷����
    //˵����javascript�ĳ˷������������������������˵�ʱ���Ƚ����ԡ�����������ؽ�Ϊ��ȷ�ĳ˷������
    //���ã�accMul(arg1,arg2)
    //����ֵ��arg1����arg2�ľ�ȷ���
    function accMul(arg1, arg2) {
        var m = 0,
            s1 = arg1.toString(),
            s2 = arg2.toString();
        try {
            m += s1.split(".")[1].length
        } catch(e) {}
        try {
            m += s2.split(".")[1].length
        } catch(e) {}
        return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m)
    }
    $(function () {
        try {
            var gmid = 95;
            var cid = -3;
            var areaId = 2339;
            var serverId = 25084;
            var _generalizeOrderTradeListUrl = "http://www.uu898.com/newTrade-{0}-c{1}-{2}-s{3}/";


            var orderno = "1585323059";
            $.ajax({
                url: "/inc/checkOrderStatus.ashx",
                type: "post",
                async: false,
                data: { gmid: gmid, cid: cid, orderno: orderno },
                success: function (msg) {

                }
            })


            // ���顢��Ϸ��
            if (gmid == 162 && cid == -3) {
                $(".floatTip").show();
            }


        } catch (e) {

        }
        try {

            if ("2339" != "-2" &&"25084" != "-2") {
                var orderno = "1585323059";
                $.ajax({
                    url: "/inc/ifWarnWrongServer.ashx",
                    type: "post",
                    async: false,
                    data: { orderNo: orderno },
                    success: function (msg) {
                        if (msg == "1" &&"" != "1") {
                            if ($('#divMallScaleRemind').css("display") != "block"){
                                $("#popupBackGround").css("display", "block");
                                $('#wrongServerWarn').css('display', 'block');
                            }

                        }
                    }
                });
            }
        }
        catch (e) {

        }
        if ($("#hidOrderNo").val().indexOf("NCD") > -1){
            $.ajax({
                url:'//card.uu898.com/api/Order/GetOrderInfoJsonp?orderNo='+$("#hidOrderNo").val(),
                type:'GET',
                dataType:"JSONP",
                jsonp: 'callback',
                xhrFields: {withCredentials: true},
                success: function(res) {
                    if (res.gameAccountNum > 0){
                        $("#cardChargeAccount").text("����ǰҪΪ"+res.gameAccountNum+"���˺ų�ֵ");
                    } else{
                        $("#cardChargeAccount").text("����ǰҪΪ�˺ţ�"+res.gameAccount);
                    }
                    if(res.type==2){
                        $("#cardChargeAccount").text("����ǰҪ����ƻ����ֵ��");
                    }
                    $("#cardChargeServer").text(res.gameName+'/'+res.areaName+'/'+res.serverName);
                    if(res.type==2){
                        $("#cardChargeServer").remove();
                    }
                    $("#cardChargeJsm").text(res.roleName);
//				  var _newNum = accMul(res.newCardNum,res.number);
                    $("#cardChargeNum").text(res.title);
                    var _Price = accMul(res.price,res.number);
                    $("#cardChargePrice").html("��<em style='color: red;float: none;display: inline;'>"+_Price+"</em>Ԫ");
                    $("#popupBackGround").css("display", "block");
                    $('#wrongCardCharge').css('display', 'block');
                }
            })
        }

        $(".floatTip i").click(function () {
            $(".floatTip").hide();
        })
        $("#chkOpenNoVali").click(function () {
            if (this.checked) {
                $("#novali")[0].selectedIndex = 2;
            }
            else {
                $("#novali")[0].selectedIndex = 0;
            }
        });
    })

    //�ر�֧����ת��ʾ����
    function closeMallScaleRemind() {
        $("#popupBackGround").css("display", "none");
        $("#divMallScaleRemind").css("display", "none");
    };
    function closewarnSever() {
        $("#popupBackGround").css("display", "none");
        $("#wrongServerWarn").css("display", "none");
    };
    // �ر���Ϸ��ֵȷ�ϵ���
    function closewarnCharge() {
        $("#popupBackGround").css("display", "none");
        $("#wrongCardCharge").css("display", "none");
    }
</script>
<script type="text/javascript" src="//s.img898.com/js/NTalker.js" charset="utf-8"></script>
<!--�İ淴��-->
<div class="fkdc Wfont">
    <p>
        <a href="//www.uu898.com/wikipedia.aspx?ID=1585323059&order=1" target="_blank">��<br />
            ��<br />
            ��<br />
            ��</a>
    </p>

</div>
</body>
</html>
</body>


