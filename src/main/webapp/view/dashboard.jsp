<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
<style>
 body{font-family: Arial;background:#f0f9ff;}
 .box{width:500px;margin:50px auto;background:white;padding:30px;border-radius:10px;box-shadow:0 0 15px rgba(0,0,0,.2);}
 h2{text-align:center;color:#0b3d91;}
 label{font-weight:bold;}
 p{font-size:18px;margin:8px 0;}
 .logout{float:right;text-decoration:none;background:#d62828;color:white;padding:8px 16px;border-radius:5px;}
</style>
</head>
<body>
<jsp:include page="navbar.jsp" />

<div class="box">
 <h2>Welcome, ${student.name}</h2>
 <p><label>Student ID:</label> ${student.id}</p>
 <p><label>Email:</label> ${student.email}</p>
 <p><label>timing:</label> ${student.timing}</p>
 <p><label>Course:</label> ${student.course}</p>
</div>
</body>
</html>
