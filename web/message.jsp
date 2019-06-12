<%--
  Created by IntelliJ IDEA.
  User: south
  Date: 2019-05-08
  Time: 09:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<center>
    <h2>${message}</h2>
    <img src="${path}">
    <%   String path =(String)request.getAttribute("path"); %>
    <%    session.setAttribute("path",path);%>
</center>
</body>
</html>