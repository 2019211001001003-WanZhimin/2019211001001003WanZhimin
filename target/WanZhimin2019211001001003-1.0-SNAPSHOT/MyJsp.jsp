<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/3/16
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="index.jsp">go to ecjtu</a>
<form method="post">
    Name :<input type="text" name="name"><br/>
    ID :<input type="text" name="id"><br/>
    <input type="submit" value="Send data to server"/>
</form>
</body>
</html>
-->

<%String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
</head>
<body>
<%@include file="header.jsp" %>
This is my JSP page. <br/>
<%@include file="footer.jsp" %>
</body>
</html>
