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
    <script>
        function isPasswordValid() {
            var password=document.getElementById("password").value;
            if(password.length<8) {
                alert("password lenth less than 8:，"+password.length+"/8");
                document.getElementById("password").style.color="red";
                return false;
            }
            document.getElementById("password").style.color="green";
            return true;
        }
        function isMailValid(){
            var ex=document.getElementById("mail").value;
            var atpos=ex.indexOf("@");
            var dotpos=ex.lastIndexOf(".");
            if (atpos<1 || dotpos<atpos+2 || dotpos+2>=ex.length){
                alert("e-mail format wrong");
                document.getElementById("mail").style.color="red";
                return false;
            }
            document.getElementById("mail").style.color="green";
            return true;
        }
        function isDateValid() {
            var obj=document.getElementById("birth");
            var strDate = obj.value;
            console.log(strDate+"-<")
            var re = /^(\d{4})-(\d{2})-(\d{2})$/;
            if (re.test(strDate))//判断日期格式符合YYYY-MM-DD标准
            {
                var dateElement = new Date(RegExp.$1, parseInt(RegExp.$2, 10) - 1, RegExp.$3);
                if (!((dateElement.getFullYear() == parseInt(RegExp.$1)) && ((dateElement.getMonth() + 1) == parseInt(RegExp.$2, 10)) && (dateElement.getDate() == parseInt(RegExp.$3))))//判断日期逻辑
                {
                    alert("You can only input Date.(YYYY-MM-DD) !");
                    document.getElementById("birth").style.color="red";
                    return false;
                }
            } else {
                alert("You can only input Date.(YYYY-MM-DD)!");
                document.getElementById("birth").style.color="red";
                return false;
            }
            document.getElementById("birth").style.color="green";
            return true;
        }
        function checkAll() {
            if(isDateValid()&&isMailValid()&&isPasswordValid()&&document.getElementById("userName").value!=null&&document.getElementById("sex").value!=null) {
                alert("提交成功!")
                return true;
            }
            alert("提交失败!")
            return false;
        }
    </script>
</head>
<body>
<h2>New User Registration!</h2>
<form action="" method="post">
    Username:<input type="text" id="userName"><br>
    Password:<input type="password" id="psw" name="password" onchange="isPasswordValid()"><br>
    E-mail:<input type="email" id="mail" name="email" onchange="isMailValid()"><br>
    Gender:<input type="radio" name="sex" value="male">male
    <input type="radio" name="sex" value="female">female<br>
    Birth:<input type="text" id="birth" onchange="isDateValid()"><br>
    <input type="submit" value="Register"  onclick="checkAll()">
</form>
</body>
</html>
