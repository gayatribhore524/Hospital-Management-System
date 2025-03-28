<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
    Appointment ap = dao.getAppointmentById(id);

    if (ap == null) {
        out.println("<h3 class='text-center text-danger mt-5'>No Appointment Found</h3>");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Details</title>
<%@include file="../component/allcss.jsp"%>

<style>
/* Background */
body {
    background-color: #f8f9fa;
}

/* Main Card Styling */
.appointment-card {
    max-width: 600px;
    margin: 50px auto;
    background: #fff;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

/* Title */
.card-title {
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    color: #007bff;
}

/* Table */
.details-table {
    width: 100%;
    margin-top: 10px;
}

.details-table th {
    text-align: left;
    font-weight: bold;
    padding: 10px;
    background: #e9f5ff; /* Light Blue */
    color: #007bff;
    border-radius: 6px;
}

.details-table td {
    padding: 10px;
    font-size: 16px;
    color: #333;
}

/* Icon Styling */
.info-icon {
    color: #007bff;
    margin-right: 8px;
}

/* Button Styling */
.download-btn {
    width: 100%;
    padding: 12px;
    font-size: 18px;
    border-radius: 8px;
    background: #007bff;
    color: #fff;
    border: none;
    transition: 0.3s;
}

.download-btn:hover {
    background: #0056b3;
}
</style>
</head>
<body>

<div class="container">
    <div class="appointment-card">
        <h2 class="card-title">📋 Appointment Details</h2>
        <table class="details-table">
            <tr><th><i class="fas fa-user info-icon"></i> Full Name:</th><td><%= ap.getFullName() %></td></tr>
            <tr><th><i class="fas fa-venus-mars info-icon"></i> Gender:</th><td><%= ap.getGender() %></td></tr>
            <tr><th><i class="fas fa-birthday-cake info-icon"></i> Age:</th><td><%= ap.getAge() %></td></tr>
            <tr><th><i class="fas fa-calendar-alt info-icon"></i> Appointment Date:</th><td><%= ap.getAppoinDate() %></td></tr>
            <tr><th><i class="fas fa-envelope info-icon"></i> Email:</th><td><%= ap.getEmail() %></td></tr>
            <tr><th><i class="fas fa-phone info-icon"></i> Mobile No:</th><td><%= ap.getPhNo() %></td></tr>
            <tr><th><i class="fas fa-stethoscope info-icon"></i> Diseases:</th><td><%= ap.getDiseases() %></td></tr>
            <tr><th><i class="fas fa-info-circle info-icon"></i> Status:</th><td><%= ap.getStatus() %></td></tr>
        </table>

        <form action="GeneratePDFServlet" method="post">
            <input type="hidden" name="id" value="<%= ap.getId() %>">
            <button type="submit" class="download-btn"><i class="fas fa-download"></i> Download PDF</button>
        </form>
    </div>
</div>

</body>
</html>
