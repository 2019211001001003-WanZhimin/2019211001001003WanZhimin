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

<%
    if(!(request.getAttribute("message") == null)){
        out.println("<h3>"+request.getAttribute("message")+"</h3>");
    }
%>

<%
    Cookie[] allCookies = request.getCookies();
    String username="", password="", rememberValue="";
    if(allCookies!=null){
        for(Cookie c:allCookies){
            if(c.getName().equals("cUsername")){
                username=c.getValue();
            }
            if(c.getName().equals("cPassword")) {
                password = c.getValue();
            }
            if(c.getName().equals("cRememberMe")) {
                rememberValue= c.getValue();
            }
        }
    }
%>

<form method="post" action="${pageContext.request.contextPath}/login">
    <p>Username:<input type="text" name="username" value="<%=username%>"></p>
    <p>Password:<input type="password" name="password" value="<%=password%>"></p>
    <input type="checkbox" name="rememberMe" value="1"<%=rememberValue.equals("1")?"checked":""%>checked/>RememberMe<br/>
    <input type="submit" value="Login">
</form>
<%@include file="footer.jsp" %>
</body>
</html>
