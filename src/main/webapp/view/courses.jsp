<!DOCTYPE html>
<html>
<head>
<title>Courses</title>

<style>
    body {
       margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(120deg, #fff6e5, #fffdf8, #f7efe7);
    background-size: 300% 300%;
    animation: bgmove 15s infinite;
    }
    h2 {
        text-align: center;
        margin-top: 25px;
        color: #003869;
        font-size: 32px;
        text-transform: uppercase;
        font-weight: bold;
    }
    .container {
        width: 85%;
        margin: 30px auto;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
        gap: 22px;
    }
    .course-card {
        background: white;
        border-radius: 12px;
        padding: 0 0 20px 0;
        border: 1px solid #d9d9d9;
        box-shadow: 0 3px 10px rgba(0,0,0,0.12);
        transition: .3s;
        overflow: hidden;
    }
    .course-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 5px 16px rgba(0,0,0,0.25);
    }
    .course-card img {
        width: 100%;
        height: 190px;
        object-fit: cover;
    }
    .course-content {
        padding: 15px 20px;
    }
    .course-content h3 {
        margin: 0;
        color: #007bff;
        font-size: 24px;
        margin-bottom: 10px;
    }
    .course-content p {
        font-size: 16px;
        color: #333;
        line-height: 25px;
    }
    .info-box {
        margin: 10px 0;
        font-size: 15px;
        color: #222;
        background: #eef4ff;
        padding: 8px 10px;
        border-left: 4px solid #007bff;
        border-radius: 4px;
    }
    .enroll-btn {
        display: block;
        width: 80%;
        margin: 15px auto 0;
        background: #007bff;
        padding: 12px;
        border: none;
        border-radius: 30px;
        color: white;
        text-align: center;
        font-size: 18px;
        cursor: pointer;
        transition: .3s;
        text-decoration: none;
    }
    .enroll-btn:hover {
        background: #0056b3;
        transform: scale(1.05);
    }
</style>
</head>
<body>

<jsp:include page="navbar.jsp" />

<h2>Choose Your Professional Course</h2>

<div class="container">

    <!-- COURSE 1 -->
    <div class="course-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVGcXEovL9hd1IhMDNIxFtPLHEkjEP2qeO9A&s" alt="course image">
        <div class="course-content">
            <h3>Java Full Stack Development</h3>
            <p>Become a full-stack software developer using Java, Spring Boot, Hibernate, MySQL & Angular/React.</p>
            <div class="info-box"><b>Duration:</b> 6 Months | <b>Fees:</b>30,000</div>
        </div>
        <a href="/registration" class="enroll-btn">Enroll Now</a>
    </div>

    <!-- COURSE 2 -->
    <div class="course-card">
        <img src="https://beecrowd.com/wp-content/uploads/2024/04/2022-07-19-Melhores-cursos-de-Python.jpg" alt="course image">
        <div class="course-content">
            <h3>Python Programming</h3>
            <p>Master Python, Django, Flask & automation with real-time development and project training.and Many more..</p>
            <div class="info-box"><b>Duration:</b> 5 Months | <b>Fees:</b>28,000</div>
        </div>
        <a href="/registration" class="enroll-btn">Enroll Now</a>
    </div>

    <!-- COURSE 3 -->
    <div class="course-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1WklZKoexVDmh41RmxlHVfe3svNv9y6lh1w&s" alt="course image">
        <div class="course-content">
            <h3>Data Science & Analytics</h3>
            <p>Hands-on learning with ML, NumPy, Pandas, Power BI, Tableau & real-time analytics projects.</p>
            <div class="info-box"><b>Duration:</b> 6 Months | <b>Fees:</b>40,000</div>
        </div>
        <a href="/registration" class="enroll-btn">Enroll Now</a>
    </div>

    <!-- COURSE 4 -->
    <div class="course-card">
        <img src="https://imageio.forbes.com/specials-images/imageserve/67ec0025d8854be78bc70986/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds" alt="course image">
        <div class="course-content">
            <h3>Cyber Security & Ethical Hacking</h3>
            <p>Learn penetration testing, hacking tools, network security & cyber attack prevention techniques.</p>
            <div class="info-box"><b>Duration:</b> 4 Months | <b>Fees:</b>35,000</div>
        </div>
        <a href="/registration" class="enroll-btn">Enroll Now</a>
    </div>

    <!-- COURSE 5 -->
    <div class="course-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiEjBilP-PBEbL7NAsVh5jU2PEYPgaGhh8-g&s" alt="course image">
        <div class="course-content">
            <h3>Web Development (HTML, CSS, JS, React)</h3>
            <p>Create responsive and professional websites with front-end and React development.and Many more..</p>
            <div class="info-box"><b>Duration:</b> 4 Months | <b>Fees:</b>27,000</div>
        </div>
        <a href="/registration" class="enroll-btn">Enroll Now</a>
    </div>

    <!-- COURSE 6 -->
    <div class="course-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqQPcd1e58-8bOliSRQHMJOD9weyvi0FNPTw&s" alt="course image">
        <div class="course-content">
            <h3>Android App Development (Kotlin + Firebase)</h3>
            <p>Build Android apps using Kotlin, Firebase authentication, and cloud database integration.and Many more..</p>
            <div class="info-box"><b>Duration:</b> 5 Months | <b>Fees:</b>32,000</div>
        </div>
        <a href="/registration" class="enroll-btn">Enroll Now</a>
    </div>

</div>

</body>
</html>
