<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About us</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
    background-image: url('BGG.jpg'); /* Ensure correct path */
    background-size: cover;
    background-position: center;
}

.container {
    display: flex;
    justify-content: space-around;
    width: 90%;
    margin-bottom: 80px;
    flex-wrap: wrap; /* Makes it responsive */
}

.btn {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 20px;
    color: white;
    border: none;
    cursor: pointer;
    font-size: 14px;
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(255, 255, 255, 0.4));
    border-radius: 15px;
    text-align: center;
    height: 35vh;
    width: 220px;
    transition: transform 0.3s ease-in-out;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
}

.btn a {
    text-decoration: none;
    color: white;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* 3D Image Rotation Effect */
.image-container {
    width: 150px;
    height: 150px;
    perspective: 1000px; /* Adds depth to 3D effect */
}

.image-container img {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
    transform-style: preserve-3d;
    animation: rotate3D 5s infinite linear; /* Continuous rotation */
}

/* Keyframes for 3D rotation */
@keyframes rotate3D {
    0% { transform: rotateY(0deg); }
    100% { transform: rotateY(360deg); }
}

/* Hover Effect for More Interaction */
.btn:hover {
    transform: scale(1.1);
}
</style>
</head>
<body>
<div class="container">
    <button class="btn">
        <a href="https://kowshik7820.github.io/codesoft/portfolio/index.html">
            <div class="image-container">
                <img src="kowshik.jpg" alt="Kowshik">
            </div>
            <h2>MADASI KOWSHIK</h2>
        </a>
    </button>
    <button class="btn">
        <a href="https://babblu0810.github.io/collegeprojects/portfolio/index%20(2).html">
            <div class="image-container">
                <img src="babblu1.jpg" alt="Bharath">
            </div>
            <h2>KANULLA BHARATH KUMAR</h2>
        </a>
    </button>
    <button class="btn">
        <a href="https://kush0208.github.io/collegeprojects/portfolio/index.html">
            <div class="image-container">
                <img src="55.jpg" alt="Kushwanth">
            </div>
            <h2>PILLA KUSHWANTH</h2>
        </a>
    </button>
    <button class="btn">
        <a href="https://mahesh0109.github.io/portfolio_website-/">
            <div class="image-container">
                <img src="mahesh.jpg" alt="Mahesh">
            </div>
            <h2>KALUVA MAHESH</h2>
        </a>
    </button>
</div>
</body>
</html>
