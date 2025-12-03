<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body{
     margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(120deg, #fff6e5, #fffdf8, #f7efe7);
    background-size: 300% 300%;
    animation: bgmove 15s infinite;
    }

    .top-right {
        text-align: right;
        padding: 15px;
        margin-right: 20px;
    }
    .top-right a {
        background: #1d3557;
        color: white;
        padding: 8px 15px;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
        transition: 0.3s;
    }
    .top-right a:hover {
        background: #16324f;
    }

    .box{width: 380px; margin: 20px auto; background:white; padding:35px;
         border-radius:10px; box-shadow:0 0 15px rgba(0,0,0,.25);}
    h2{text-align:center; color:#1d3557;}
    label{font-weight:bold;}
    input{width:100%; padding:10px; margin:7px 0; border:1px solid #aaa;
         border-radius:5px;}
    input[type=submit]{background:#1d3557; color:white; cursor:pointer;
         font-size:16px;}
    input[type=submit]:hover{background:#16324f;}
    .msg{text-align:center; color:red; font-weight:bold;}
</style>
</head>
<body>

<jsp:include page="navbar.jsp" />


<div class="box">
<h2>Login</h2>

<c:if test="${not empty msg}">
   <p class="msg">${msg}</p>
</c:if>

<form action="loginUser" method="post">
<label>Email:</label>
<input type="email" name="email" required>

<label>Password:</label>
<input type="password" name="password" required>

<input type="submit" value="Login">
</form>
</div>

</body>
</html>
