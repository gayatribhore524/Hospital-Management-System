<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@page import="com.entity.Doctor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>

<!-- Include Bootstrap & FontAwesome -->
<%@include file="../component/allcss.jsp"%>

<style>
/* Stylish Card */
.card {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    background: #fff;
    padding: 20px;
}

/* Title */
.title {
    font-size: 24px;
    font-weight: bold;
    color: #333;
    text-align: center;
    padding: 10px;
}

/* Table Styling */
.table-responsive {
    overflow-x: auto;
    width: 100%;
}

.table {
    border-collapse: separate;
    border-spacing: 0;
    width: 100%;
    border-radius: 10px;
    overflow: hidden;
}

.table th {
    background-color: #007bff;
    color: white;
    font-weight: bold;
    padding: 12px;
    text-align: center;
}

.table td {
    text-align: center;
    padding: 10px;
    font-size: 16px;
    border-bottom: 1px solid #ddd;
}

/* Hover Effect */
.table-hover tbody tr:hover {
    background-color: #f8f9fa;
}

/* Button Styling */
.btn {
    padding: 8px 12px;
    font-size: 14px;
    border-radius: 8px;
    transition: 0.3s;
}

/* Comment and Print Button Layout */
.button-group {
    display: flex;
    justify-content: center;
    gap: 10px; /* Space between buttons */
}

.btn-primary {
    background-color: #007bff;
    border: none;
}

.btn-primary:hover {
    background-color: #0056b3;
}

.btn-secondary {
    background-color: #6c757d;
    border: none;
}

.btn-secondary:hover {
    background-color: #5a6268;
}

/* Responsive Fixes */
@media (max-width: 768px) {
    .table-responsive {
        overflow-x: auto;
    }
    .button-group {
        flex-direction: column; /* Stack buttons vertically on smaller screens */
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

<div class="container mt-4">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="title">
                    👨‍⚕️ Patient Details
                </div>

                <!-- Display Messages -->
                <c:if test="${not empty errorMsg}">
                    <p class="text-center text-danger fs-5">${errorMsg}</p>
                    <c:remove var="errorMsg" scope="session" />
                </c:if>
                <c:if test="${not empty succMsg}">
                    <p class="text-center text-success fs-5">${succMsg}</p>
                    <c:remove var="succMsg" scope="session" />
                </c:if>

                <!-- Table Section -->
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Full Name</th>
                                <th>Gender</th>
                                <th>Age</th>
                                <th>Appointment Date</th>
                                <th>Email</th>
                                <th>Mobile No</th>
                                <th>Diseases</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            Doctor d = (Doctor) session.getAttribute("doctObj");
                            AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                            List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());
                            for (Appointment ap : list) {
                            %>
                            <tr>
                                <td><%=ap.getFullName()%></td>
                                <td><%=ap.getGender()%></td>
                                <td><%=ap.getAge()%></td>
                                <td><%=ap.getAppoinDate()%></td>
                                <td><%=ap.getEmail()%></td>
                                <td><%=ap.getPhNo()%></td>
                                <td><%=ap.getDiseases()%></td>
                                <td><%=ap.getStatus()%></td>
                                <td>
                                    <div class="button-group">
                                        <% if ("Pending".equals(ap.getStatus())) { %>
                                            <a href="comment.jsp?id=<%=ap.getId()%>" class="btn btn-success btn-sm">Comment</a>
                                        <% } else { %>
                                            <button class="btn btn-secondary btn-sm disabled">Comment</button>
                                        <% } %>
                                        <a href="generatePDF.jsp?id=<%=ap.getId()%>" class="btn btn-primary btn-sm">Print</a>
                                    </div>
                                </td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div> <!-- End Table Responsive -->
            </div>
        </div>
    </div>
</div>

</body>
</html>
