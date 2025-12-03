<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Students</title>

<style>
    body {
 margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(120deg, #fff6e5, #fffdf8, #f7efe7);
    background-size: 300% 300%;
    animation: bgmove 15s infinite;
    }

    .container {
        width: 85%;
        margin: 35px auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 0 14px rgba(0,0,0,0.25);
    }

    h2 {
        text-align: center;
        color: #1d3557;
        margin-bottom: 15px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }

    th {
        background: #457b9d;
        color: white;
        padding: 12px;
        font-size: 16px;
        text-align: center;
    }

    td {
        text-align: center;
        padding: 10px;
        font-size: 15px;
        border-bottom: 1px solid #ccc;
    }

    tr:hover {
        background: #f1f9ff;
        transition: 0.3s;
    }

    .top-right {
        display: block;
        text-align: right;
        margin-bottom: 10px;
    }

    .top-right a {
        background: #1d3557;
        color: white;
        padding: 8px 14px;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
        transition: 0.3s;
    }

    .top-right a:hover {
        background: #16324f;
    }

    .btn {
        padding: 6px 12px;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
        color: white;
        cursor: pointer;
    }

    .edit {
        background: #2a9d8f;
    }
    .edit:hover {
        background: #1e7f72;
    }

    .delete {
        background: #e63946;
    }
    .delete:hover {
        background: #b4232f;
    }
</style>

</head>
<body>
<jsp:include page="navbar.jsp" />

<div class="container">
<h2>📋 All Registered Students</h2>

<div class="top-right">
    <a href="/registration">New Registration</a>
</div>

<hr>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Password</th>
<th>Gender</th>
<th>Course</th>
<th>Timing</th>
<th>Action</th>
</tr>

<c:forEach var="student" items="${students}">
<tr>
<td>${student.id}</td>
<td>${student.name}</td>
<td>${student.email}</td>
<td>${student.password}</td>
<td>${student.gender}</td>
<td>${student.course}</td>
<td>${student.timing}</td>

<td>
    <a href="/edit/${student.id}" class="btn edit">Edit</a>
    <a href="/delete/${student.id}" class="btn delete"
       onclick="return confirm('Are you sure want to delete this student?');">
       Delete
    </a>
</td>
</tr>
</c:forEach>

</table>
</div>

</body>
</html>
