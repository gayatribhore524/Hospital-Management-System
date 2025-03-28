<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Mobile Responsive -->
<title>Doctor Search</title>

<%@include file="component/allcss.jsp"%>

<style>
    /* General Styles */
    body {
        background-color: #f8f9fa;
    }

    /* Search Section */
    .search-section {
        background-color: #007bff;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
        color: white;
    }

    .search-input {
        border-radius: 20px;
        padding: 10px;
    }

    .search-btn {
        border-radius: 20px;
        background-color: #ff6b6b;
        color: white;
        transition: 0.3s;
    }

    .search-btn:hover {
        background-color: #ff4b4b;
    }

    /* Doctor Card Styling */
    .doctor-card {
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        transition: transform 0.3s ease-in-out;
        background: white;
        padding: 15px;
    }

    .doctor-card:hover {
        transform: scale(1.05);
    }

    .doctor-card i {
        color: #007bff;
    }

    .card-header {
        font-size: 30px;
        font-weight: bold;
    }

    /* Responsive Grid */
    @media (max-width: 768px) {
        .doctor-card {
            margin-bottom: 20px;
        }
    }
</style>
</head>

<body>
<%@include file="component/navbar.jsp"%>

<!-- Search Bar -->
<div class="container mt-4">
    <div class="row">
        <div class="col-12">
            <div class="search-section">
                <h3>Search for a Specialist</h3>
                <form action="search.jsp" method="post">
                    <div class="input-group mt-3">
                        <input placeholder="Enter Specialist..." type="text" class="form-control search-input" name="ch">
                        <button class="btn search-btn ms-2">Search</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Doctor Listing -->
<div class="container mt-4">
    <div class="row">
        <%
        String ch = request.getParameter("ch");
        DoctorDao dao = new DoctorDao(DBConnect.getConn());
        List<Doctor> list = dao.searchDoctor(ch);

        if (list.size() > 0) {
            for (Doctor d : list) {
        %>
        <div class="col-md-4 col-lg-3 col-sm-6"> <!-- Responsive Column -->
            <div class="doctor-card text-center p-3">
                <div class="card-header">
                    <i class="fa-solid fa-user-md"></i>
                </div>
                <div class="card-body">
                    <h5 class="fw-bold"><%=d.getFullName() %></h5>
                    <p><i class="fa-solid fa-stethoscope"></i> <b>Specialist:</b> <%=d.getSpecialist() %></p>
                    <p><i class="fa-solid fa-graduation-cap"></i> <b>Qualification:</b> <%=d.getQualification() %></p>
                    <p><i class="fa-solid fa-envelope"></i> <b>Email:</b> <%=d.getEmail() %></p>
                    <p><i class="fa-solid fa-phone"></i> <b>Mobile:</b> <%=d.getMobNo() %></p>
                </div>
            </div>
        </div>
        <%
        }
        }
        %>
    </div>
</div>

</body>
</html>
