<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
/* Light Gentle Gradient */
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(120deg, #fff6e5, #fffdf8, #f7efe7);
    background-size: 300% 300%;
    animation: bgmove 15s infinite;
}
@keyframes bgmove {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

.container {
    text-align: center;
    margin-top: 40px;
}

h1 {
    font-size: 36px;
    color: #7a4c15;
}

p {
    width: 70%;
    margin: auto;
    font-size: 20px;
    line-height: 32px;
    color: #4a3b2c;
}

/* Slider */
.slider {
    width: 80%;
    margin: 25px auto;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 0 15px rgba(0,0,0,.15);
}
.slider img {
    width: 100%;
    height: 330px;
    object-fit: cover;
    animation: slide 10s infinite;
}

@keyframes slide {

    0% { content: url("${pageContext.request.contextPath}/images/banner3.png"); }
    20% { content: url(https://www.spec-india.com/wp-content/uploads/2021/05/Java-Developer.jpg); }
     40% { content: url(https://www.androiddeveloper.co.in/blog/wp-content/uploads/2016/03/Android-App-Development-2-1024x378.jpg); }
    60% { content: url(https://scandiweb.com/blog/wp-content/uploads/2024/02/blog-visuals-12.png); }
     80% { content: url(https://www.codingal.com/resources/wp-content/uploads/2023/04/image_6_1.png); }
    100% { content: url("https://imageio.forbes.com/specials-images/imageserve/67ec0025d8854be78bc70986/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds"); }
} 

/* Course & Features Box */
.box {
    width: 80%;
    margin: 40px auto;
    background: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 0 14px rgba(0,0,0,.12);
}
.box h2 {
    color: #a36228;
}
.box ul {
    text-align: left;
    font-size: 19px;
    line-height: 36px;
}

/* Success Stories */
.success {
    width: 80%;
    margin: 40px auto;
    background: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 0 14px rgba(0,0,0,.12);
}
.success h2 {
    color: #b0572b;
}
.success .story {
    margin: 12px 0;
    background: #fff8ed;
    padding: 14px;
    border-radius: 10px;
    font-size: 18px;
}

/* Buttons */
button {
    padding: 14px 34px;
    border-radius: 8px;
    border: none;
    font-size: 18px;
    cursor: pointer;
    margin: 12px;
}
.login {
    background: #6db784;
    color: white;
}
.login:hover {
    background: #5ca670;
}
.register {
    background: #f3a63f;
    color: white;
}
.register:hover {
    background: #d89234;
}

/* Marquee */
marquee {
    font-size: 20px;
    font-weight: bold;
    padding: 10px;
}
.m1 { color: #c74444; }
.m2 { color: #234868; }
</style>
</head>
<body>

<jsp:include page="navbar.jsp" />

<!-- Marquees -->
<marquee class="m1" direction="left">✨ Special Discount — Register Today & Get Course Certificate!</marquee>
<!--  <marquee class="m2" direction="left">🇮🇳 India’s Most Trusted Online Learning Platform</marquee> -->

<div class="container">
    <h1>Welcome to Student Courses Registration Portal</h1>
    <p>Upgrade your skills with industry-demand courses designed for your success. Start learning today and achieve your dream career.</p>
</div>

<!-- Slider -->
<div class="slider">
    <img src="${pageContext.request.contextPath}/images/banner3.png" alt="Home Banner">
</div>

<!-- Courses Box -->
<div class="box">
    <h2>🎓 Popular Courses</h2>
    <ul>
        <li>Java Full Stack Development</li>
        <li>Python Programming with Django</li>
        <li>Web Development (HTML, CSS, JS, React)</li>
        <li>Cyber Security & Ethical Hacking</li>
        <li>Android Mobile App Development</li>
        <li>Data Analytics & Machine Learning</li>
    </ul>
</div>

<!-- Success Stories -->
<div class="success">
    <h2>🏆 Success Stories</h2>
    <div class="story">✔ Rohan — Placed in Infosys as Associate Developer (Java Full Stack)</div>
    <div class="story">✔ Priya — Joined Deloitte as Security Analyst (Cyber Security)</div>
    <div class="story">✔ Akash — Working in Cognizant as Data Engineer (Python + ML)</div>
</div>

<div style="text-align:center; margin-bottom:40px;">
    <button class="login" onclick="window.location='login'">Login</button>
    <button class="register" onclick="window.location='registration'">Register</button>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
