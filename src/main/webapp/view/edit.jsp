<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

<style>
    body {
       margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(120deg, #fff6e5, #fffdf8, #f7efe7);
    background-size: 300% 300%;
    animation: bgmove 15s infinite;
    }

    .container {
        width: 45%;
        margin: 40px auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 0 20px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        color: #1d3557;
        margin-bottom: 10px;
    }

    table {
        width: 100%;
        border-spacing: 10px;
    }

    td {
        font-size: 16px;
        font-weight: bold;
    }

    input, select {
        width: 100%;
        padding: 8px;
        border-radius: 6px;
        border: 1px solid #444;
        font-size: 16px;
    }

    .btn {
        width: 100%;
        padding: 10px;
        margin-top: 15px;
        font-size: 18px;
        border-radius: 6px;
        border: none;
        cursor: pointer;
        font-weight: bold;
        color: white;
    }

    .btn-update {
        background: #2a9d8f;
    }
    .btn-update:hover {
        background: #1d7c6d;
    }

    .btn-back {
        background: #1d3557;
        margin-top: 10px;
    }
    .btn-back:hover {
        background: #162a45;
    }
</style>

</head>
<body>
<jsp:include page="navbar.jsp" />

<div class="container">
<h2>✏️ Edit Student</h2>
<hr>

<form:form action="/update" method="post" modelAttribute="student">

    <form:hidden path="id"/> <!-- VERY IMPORTANT -->

    <table>
        <tr>
            <td>Name:</td>
            <td><form:input path="name"/></td>
        </tr>

        <tr>
            <td>Email:</td>
            <td><form:input path="email"/></td>
        </tr>

        <tr>
            <td>Password:</td>
            <td><form:input path="password" type="password"/></td>
        </tr>

        <tr>
            <td>Gender:</td>
            <td>
                <form:select path="gender">
                    <form:option value="Male" label="Male"/>
                    <form:option value="Female" label="Female"/>
                </form:select>
            </td>
        </tr>

        <tr>
            <td>Course:</td>
            <td><form:input path="course"/></td>
        </tr>

        <tr>
            <td>Timing:</td>
            <td><form:input path="timing"/></td>
        </tr>
    </table>

    <button type="submit" class="btn btn-update">Update Student</button>
</form:form>

<a href="/students">
    <button class="btn btn-back">⬅ Back to Students</button>
</a>

</div>

</body>
</html>
