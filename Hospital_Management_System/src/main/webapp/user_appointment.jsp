<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Responsive Meta Tag -->
<title>Patient Appointment</title>

<%@include file="component/allcss.jsp"%>

<style>
    .paint-card {
        box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
        border-radius: 10px;
        padding: 20px;
    }
    
    .backImg {
        background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)), url("img/appointment1.jpg");
        height: 30vh;
        background-size: cover;
        background-position: center;
    }
</style>
</head>

<body>

<%@include file="component/navbar.jsp"%>

<!-- Background Header -->
<div class="container-fluid backImg d-flex align-items-center justify-content-center">
    <p class="text-center fs-2 text-white"></p>
</div>

<!-- Appointment Section -->
<div class="container p-3">
    <div class="row g-4">  <!-- Added gap between elements -->
        
        <!-- Left Section - Image -->
        <div class="col-12 col-md-6 text-center">
            <img src="img/appointment.jpg" class="img-fluid rounded" alt="Appointment Image">
        </div>

        <!-- Right Section - Appointment Form -->
        <div class="col-12 col-md-6">
            <div class="card paint-card">
                <div class="card-body">
                    <h3 class="text-center text-primary fw-bold">Patient Appointment</h3>

                    <!-- Error & Success Messages -->
                    <c:if test="${not empty errorMsg}">
                        <p class="fs-5 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <p class="fs-5 text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>

                    <!-- Appointment Form -->
                    <form action="appAppointment" method="post" class="row g-3">
                        <input type="hidden" name="userid" value="${userObj.id }">

                        <div class="col-12 col-md-6">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" name="fullname" required>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label">Gender</label>
                            <select class="form-control" name="gender" required>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label">Age</label>
                            <input type="number" class="form-control" name="age" required>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label">Appointment Date</label>
                            <input type="date" class="form-control" name="appoint_date" required>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" required>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label">Phone No</label>
                            <input type="number" class="form-control" name="phno" maxlength="10" required>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label">Diseases</label>
                            <input type="text" class="form-control" name="diseases" required>
                        </div>

                        <div class="col-12 col-md-6">
                            <label class="form-label">Doctor</label>
                            <select class="form-control" name="doct" required>
                                <option value="">--Select--</option>
                                <% 
                                    DoctorDao dao = new DoctorDao(DBConnect.getConn());
                                    List<Doctor> list = dao.getAllDoctor();
                                    for (Doctor d : list) {
                                %>
                                <option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)</option>
                                <% } %>
                            </select>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Full Address</label>
                            <textarea name="address" class="form-control" rows="3" required></textarea>
                        </div>

                        <!-- Submit Button -->
                        <div class="col-12 text-center">
                            <c:if test="${empty userObj }">
                                <a href="user_login.jsp" class="btn btn-primary w-100">Login to Submit</a>
                            </c:if>
                            <c:if test="${not empty userObj }">
                                <button type="submit" class="btn btn-primary w-100">Submit</button>
                            </c:if>
                        </div>
                    </form>

                </div>
            </div>
        </div>

    </div>
</div>

<%@include file="component/footer.jsp"%>

</body>
</html>
