<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<script>
    function dakai(){
        <c:if test="${inform!=null}">
        alert("注册成功");
        </c:if>
    }
</script>
<body onload="dakai();">
<div class="box">
    <h2>Login</h2>
    <form action="/Login" method="post">
        <div class="item">
            <input type="text" name="username" required>
            <lable for="">UserName</lable>
        </div>
        <div class="item">
            <input type="password" name="password" required>
            <lable for="">PassWord</lable>
            <span style="color: white;">${msg}</span>
        </div>
        <button class="btn">Login
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </button>
    </form>
    <a href="reg.jsp"><button class="btn" style="float: right;margin-top: -35px">Reg
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </button></a>
</div>
</body>
</html>
