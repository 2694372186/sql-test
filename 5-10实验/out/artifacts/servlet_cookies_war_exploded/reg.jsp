<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="box">
    <h2>Reg</h2>
    <form action="/Reg.do" method="post">
        <div class="item">
            <input type="text" name="username" required>
            <lable for="username">UserName</lable>
        </div>
        <div class="item">
            <input type="password" name="password" required>
            <lable for="">PassWord</lable>
            <span style="color: red;">${msg}</span>
        </div>
        <button class="btn">submit
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </button>
    </form>
</div>
</body>
</html>
