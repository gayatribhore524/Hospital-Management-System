<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Dashboard</title>

<!-- Include Bootstrap & FontAwesome -->
<%@include file="../component/allcss.jsp"%>

<style>
/* Improved Card Styling */
.paint-card {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    background: linear-gradient(to right, #007bff, #00c6ff);
    color: white;
    transition: transform 0.3s ease-in-out;
}

.paint-card:hover {
    transform: scale(1.05);
}

.icon-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 70px;
}

.icon-container i {
    font-size: 3rem;
    color: #fff;
}

/* Responsive Padding */
.container {
    padding-top: 30px;
}

/* Text Styling */
.fs-4 {
    font-weight: bold;
}

/* Adjust layout on small screens */
@media (max-width: 768px) {
    .col-md-4 {
        margin-bottom: 15px;
    }
}
</style>
</head>
<body>

<!-- Redirect if not logged in -->
<c:if test="${empty doctObj}">
    <c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>

<!-- Navbar -->
<%@include file="navbar.jsp"%>

<!-- Page Title -->
<p class="text-center fs-3 mt-3">👨‍⚕️ Doctor Dashboard</p>

<%
Doctor d = (Doctor) session.getAttribute("doctObj");
DoctorDao dao = new DoctorDao(DBConnect.getConn());
%>

<div class="container">
    <div class="row justify-content-center">
        <!-- Doctor Count Card -->
        <div class="col-md-4 col-sm-10 mb-3">
            <div class="card paint-card text-center p-4">
                <div class="icon-container">
                    <i class="fas fa-user-md"></i>
                </div>
                <p class="fs-4">Total Doctors</p>
                <p class="fs-2"><%=dao.countDoctor()%></p>
            </div>
        </div>

        <!-- Appointment Count Card -->
        <div class="col-md-4 col-sm-10 mb-3">
            <div class="card paint-card text-center p-4">
                <div class="icon-container">
                    <i class="far fa-calendar-check"></i>
                </div>
                <p class="fs-4">Total Appointments</p>
                <p class="fs-2"><%=dao.countAppointmentByDocotrId(d.getId())%></p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
