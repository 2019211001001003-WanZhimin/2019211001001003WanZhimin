<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/3/16
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<%@include file="header.jsp" %>
        <form method="post" action="register">
             New User Registration<br/>
            Username<input type="text" name="username" ><br/>
            Password<input type="password" name="password"><br/>
            Email<input type="email" name="email"><br/>
            Gender<input type="text" name="gender"><br/>
            Date of birth(yyyy-mm-dd)<input type="date"name="birthDate"pattern="yyyy-mm-dd"><br/><br/>
            <input type="submit" value="register">
        </form>
<%@include file="footer.jsp" %>
</body>
</html>
