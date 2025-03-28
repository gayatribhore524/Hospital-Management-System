<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>    

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Mobile Responsive Meta Tag -->
<title>Hospital Management</title>

<%@include file="component/allcss.jsp"%>

<style>
.paint-card {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    border-radius: 8px;
}
.carousel-item img {
    width: 100%;
    height: 660px; /* Adjust this value as needed */
    object-fit: cover;
}
</style>

</head>
<body>

<%@include file="component/navbar.jsp"%>

<!-- Database Connection -->
<% Connection conn = DBConnect.getConn(); %>

<!-- Carousel Section -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/home6.jpg" class="d-block w-100" alt="Hospital Image" >
        </div>
        <div class="carousel-item">
            <img src="img/home3.jpg" class="d-block w-100" alt="Hospital Image">
        </div>
        <div class="carousel-item">
            <img src="img/home.png" class="d-block w-100" alt="Hospital Image">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>

<!-- Key Features Section -->
<div class="container p-3">
    <p class="text-center fs-2">Key Features of our Hospital</p>
    <div class="row">
        <div class="col-md-8 p-3">
            <div class="row">
                <div class="col-12 col-md-6 mb-3">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">100% Safety</p>
                            <p>We ensure the highest safety standards for our patients.</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 mb-3">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Clean Environment</p>
                            <p>Our hospital is sanitized regularly for hygiene.</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 mb-3">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Friendly Doctors</p>
                            <p>Our doctors are highly experienced and patient-friendly.</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 mb-3">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-5">Medical Research</p>
                            <p>We constantly innovate to improve medical treatments.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Image Section -->
        <div class="col-md-4 text-center">
            <img alt="Doctor Image" src="img/doctor.jpg" class="img-fluid rounded">
        </div>
    </div>
</div>

<hr>

<!-- Our Team Section -->
<div class="container p-3">
    <p class="text-center fs-2">Our Team</p>
    <div class="row">
        <div class="col-12 col-sm-6 col-md-3 mb-3">
            <div class="card paint-card text-center">
                <div class="card-body">
                    <img src="img/doctor5 .jpg" class="img-fluid rounded mb-2">
                    <p class="fw-bold fs-5">Samuani Simi</p>
                    <p class="fs-7">(CEO & Chairman)</p>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-md-3 mb-3">
            <div class="card paint-card text-center">
                <div class="card-body">
                    <img src="img/doctor1.jpg" class="img-fluid rounded mb-2">
                    <p class="fw-bold fs-5">Dr. Siva Kumar</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-md-3 mb-3">
            <div class="card paint-card text-center">
                <div class="card-body">
                    <img src="img/doctor6.jpg" class="img-fluid rounded mb-2">
                    <p class="fw-bold fs-5">Dr. Niuise Paule</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-md-3 mb-3">
            <div class="card paint-card text-center">
                <div class="card-body">
                    <img src="img/doctor2.jpg" class="img-fluid rounded mb-2">
                    <p class="fw-bold fs-5">Dr. Mathue Samuel</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="component/footer.jsp"%>

</body>
</html>
