<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Mobile Responsive -->
<title>Appointment List</title>

<%@include file="component/allcss.jsp"%>

<style>
    .paint-card {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        border-radius: 10px;
        padding: 15px;
    }

    .backImg {
        background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)), url("img/hospital.jpg");
        height: 20vh;
        background-size: cover;
        background-position: center;
    }
</style>
</head>

<body>

<c:if test="${empty userObj }">
    <c:redirect url="user_login.jsp"></c:redirect>
</c:if>

<%@include file="component/navbar.jsp"%>

<!-- Background Header -->
<div class="container-fluid backImg d-flex align-items-center justify-content-center">
    <p class="text-center fs-2 text-white">Your Appointments</p>
</div>

<!-- Main Content -->
<div class="container p-3">
    <div class="row g-3">  <!-- Added gap between elements -->

        <!-- Image Section (Shown above table on small screens) -->
        <div class="col-12 col-md-3 text-center">
            <img alt="Doctor Image" src="img/doctor.jpg" class="img-fluid w-100 rounded">
        </div>

        <!-- Appointment Table Section -->
        <div class="col-12 col-md-9">
            <div class="card paint-card">
                <div class="card-body">
                    <h3 class="text-center text-primary fw-bold">Appointment List</h3>

                    <!-- Responsive Table -->
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="table-light">
                                <tr>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Age</th>
                                    <th scope="col">Appoint Date</th>
                                    <th scope="col">Diseases</th>
                                    <th scope="col">Doctor Name</th>
                                    <th scope="col">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                User user = (User) session.getAttribute("userObj");
                                AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                                DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                                List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
                                for (Appointment ap : list) {
                                    Doctor d = dao2.getDoctorById(ap.getDoctorId());
                                %>
                                <tr>
                                    <td><%=ap.getFullName()%></td>
                                    <td><%=ap.getGender()%></td>
                                    <td><%=ap.getAge()%></td>
                                    <td><%=ap.getAppoinDate()%></td>
                                    <td><%=ap.getDiseases()%></td>
                                    <td><%=d.getFullName()%></td>
                                    <td>
                                        <%
                                        if ("Pending".equals(ap.getStatus())) {
                                        %> 
                                        <a href="#" class="btn btn-sm btn-warning">Pending</a> 
                                        <%
                                        } else {
                                        %> 
                                        <%=ap.getStatus()%> 
                                        <%
                                        }
                                        %>
                                    </td>
                                </tr>
                                <%
                                }
                                %>
                            </tbody>
                        </table>
                    </div> <!-- End Table Responsive -->
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
