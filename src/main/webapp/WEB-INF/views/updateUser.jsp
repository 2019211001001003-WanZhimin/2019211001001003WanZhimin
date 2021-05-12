<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/4/27
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Update</h1>

<%
    User u = (User) session.getAttribute("user");
%>
<form method="post" action="register">
    <span style="color: #FFA500"> New User Registration</span><br/><br/>
    <input type="hidden" name="id" value="<%=u.getId()%>">

    <span style="color:#FFA500">Username</span> <input type="text" name="username" value="<%=u.getUsername()%>" required="true" style="background-color: #EAEAAE"><br/><br/>
    <span style="color: #FFA528">Password</span> <input type="password" name="password" value="<%=u.getPassword()%>" maxlength="8" style="background-color: #EAEAAE"><br/><br/>
    <span style="color: #FFA528">Email</span><input type="email" name="email" value="<%=u.getEmail()%>" required="true"style="background-color: #EAEAAE"><br/><br/>
    <span style="color: #FFA528">Gender</span>
        <input type="radio" name="gender" value="male"<%="male".equals(u.getGender())?"checed":""%> /> Male
        <input type="radio" name="gender" value="female"<%="female".equals(u.getGender())?"checed":""%> /> Male
    <br/><br/>
    <span style="color: #FFA528">Date of birth(yyyy-mm-dd)</span><input type="date"name="birthDate"  value="<%=u.getBirthDate()%>"pattern="yyyy-mm-dd" required="true"style="background-color: #EAEAAE"><br/><br/>
    <input type="submit" value="Save Changes"/>
</form>
