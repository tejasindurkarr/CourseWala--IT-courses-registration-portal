<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
nav {
    background: #0b3d91;
    padding: 12px 30px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
nav .title {
    color: white;
    font-size: 22px;
    font-weight: bold;
}
nav a {
    color: white;
    text-decoration: none;
    margin-left: 22px;
    font-size: 17px;
}
nav a:hover {
    text-size:15px;
}
</style>

<nav>
    <div class="title">Course-Wala</div>

    <div>
        <a href="home">Home</a>
        <a href="courses">Courses</a>

        <c:choose>
            <c:when test="${not empty loginStudent}">
                
                <!-- if Admin → show Students page -->
                <c:choose>
                    <c:when test="${loginStudent.role == 'ADMIN'}">
                        <a href="students">Dashboard</a>   <!-- Admin Dashboard = All Students Page -->
                    </c:when>
                    <c:otherwise>
                        <a href="dashboard">Dashboard</a>   <!-- Student Dashboard = personal dashboard -->
                    </c:otherwise>
                </c:choose>

                <a href="logout">Logout</a>
            </c:when>

            <c:otherwise>
                <a href="login">Login</a>
                <a href="registration">Registration</a>
            </c:otherwise>
        </c:choose>
    </div>
</nav>
