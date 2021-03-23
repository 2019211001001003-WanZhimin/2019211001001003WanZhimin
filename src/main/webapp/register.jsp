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
    <title>Title</title>
</head>
<body>
    <form method="post" action="register">
        New User Registration<br/><br/>
        Username<input type="text" name="name" required="true"><br/><br/>
        Password<input type="password" name="pwd" required="true" minlength="8"><br/><br/>
        email<input type="email" name="email" required="true"><br/><br/>
        email<input type="text" name="email" required="true"><br/><br/>
        Gender
        Male<input type="radio">
        Female<input type="radio"><br/><br/>
        Date of birth(yyyy-mm-dd)<input type="date" pattern="yyyy-mm-dd" required="true"><br/><br/>
        Male<input type="radio" name="sex" value="male">
        Female<input type="radio" name="sex" value="female"><br/><br/>
        Date of birth(yyyy-mm-dd)<input type="text"  required="true" name="birth"><br/><br/>

        <input type="submit" value="Register">
    </form>
</body>
</html>
