<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<style>
    body {
         margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(120deg, #fff6e5, #fffdf8, #f7efe7);
    background-size: 300% 300%;
    animation: bgmove 15s infinite;
    }

    .container {
        width: 450px;
        margin: 40px auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 0 18px rgba(0,0,0,0.3);
    }

    h1 {
        text-align: center;
        color: #1d3557;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
    }

    td {
        padding: 6px;
        font-weight: bold;
        color: #1d3557;
    }

    input, select {
        width: 95%;
        padding: 9px;
        border-radius: 6px;
        border: 1px solid #aaa;
        font-size: 15px;
        margin-top: 3px;
    }

    input[type=submit] {
        width: 100%;
        background: #2e8b57;
        padding: 11px;
        font-size: 17px;
        border: none;
        border-radius: 6px;
        margin-top: 15px;
        cursor: pointer;
        color: white;
        transition: 0.3s;
    }

    input[type=submit]:hover {
        background: #1f6c46;
    }

    .msg {
        text-align: center;
        font-size: 16px;
        font-weight: bold;
        padding: 10px;
        color: green;
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
    
</style>

</head>
<body>


<jsp:include page="navbar.jsp" />

<div class="container">


 


<h1>Student Registration</h1>

<c:if test="${not empty msg}">
   <p class="msg">${msg}</p>
</c:if>

<form:form action="register" modelAttribute="student" method="post">
<table>

<tr>
 <td>Student Name:</td>
 <td><form:input path="name"/></td>
</tr>

<tr>
 <td>Email:</td>
 <td><form:input path="email" type="email"/></td>
</tr>

<tr>
 <td>Password:</td>
 <td><form:input path="password" type="password"/></td>
</tr>

<tr>
 <td>Gender:</td>
 <td>
   <form:radiobutton path="gender" value="Male"/> Male
   <form:radiobutton path="gender" value="Female"/> Female
   <form:radiobutton path="gender" value="Trans"/> Trans
 </td>
</tr>

<tr>
 <td>Course:</td>
 <td>
   <form:select path="course">
     <form:option value="JAVA">JAVA</form:option>
      <form:option value="PYTHON">PYTHON</form:option>
      <form:option value="SPRING">SPRING</form:option>
      <form:option value="ETHICAL HACKING">ETHICAL HACKING</form:option>
      <form:option value="WEB DEVELOPMENT">WEB DEVELOPMENT</form:option>
      <form:option value="DATA SCIENCE">DATA SCIENCE</form:option>
      <form:option value="ANDROID DEVELOPMENT">ANDROID DEVELOPMENT</form:option>
      <form:option value="MACHINE LEARNING">MACHINE LEARNING</form:option>
      <form:option value="CLOUD COMPUTING">CLOUD COMPUTING</form:option>
      <form:option value="CYBER SECURITY">CYBER SECURITY</form:option>
   </form:select>
 </td>
</tr>

<tr>
 <td>Timing:</td>
 <td>
   <form:checkbox path="timing" value="Morning"/> Morning
   <form:checkbox path="timing" value="Afternoon"/> Afternoon
   <form:checkbox path="timing" value="Evening"/> Evening
 </td>
</tr>

</table>

<input type="submit" value="Register">

</form:form>

</div>
</body>
</html>
