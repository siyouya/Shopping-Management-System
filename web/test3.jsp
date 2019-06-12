

<%@ page language="java" contentType="text/html; charset=GB2312"
         pageEncoding="GB2312"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="GB2312">
    <title>Insert title here</title>
</head>
<script type="text/javascript">
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
<body>
二维码
<form action="test2.jsp" method="post">
    <input type="submit"  value="支付完成" >

</form>
</body>



