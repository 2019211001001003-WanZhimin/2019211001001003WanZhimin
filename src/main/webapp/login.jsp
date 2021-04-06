<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/4/6
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<%@include file="header.jsp" %>
<h1>Login<br/> </h1>
<form method="post" action="${pageContext.request.contextPath}/login">
    <p>Username:<input type="text" name="name"/></p>
    <p>Password:<input type="password" name="password"/></p>
    <input type="submit" value="Login"/>
</form>
<%@include file="footer.jsp" %>
</body>
</html>
