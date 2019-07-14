
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.etc.entity.Shop" %>


<html>
<head>
    <title></title>
</head>
<body>
<%
    List<Shop> list=(List<Shop>)request.getAttribute("shop");

    int start=(int)request.getAttribute("start");


    for (Shop shop :list){


%>


    bid:<%=shop.getBid()%>
    shopname:<%=shop.getShopname()%>



     <br>


<%
    }
%>

<input type="button" value="下一页" onclick="pagedown()">
<input type="button" value="上一页" onclick="pageup()">
第<%=(start/4)+1%>页

<script>


    //首页
    function pagedown() {

        location="FirstPage"

    }
    //尾页
    function pagedown() {

        location="changepageServlet?start=<%=start+4%>"

    }

    //上一页
    function pageup() {

        location="changepageServlet?start=<%=start-4%>"

    }
    //下一页
    function pagedown() {

        location="changepageServlet?start=<%=start+4%>"

    }



</script>




</body>
</html>
