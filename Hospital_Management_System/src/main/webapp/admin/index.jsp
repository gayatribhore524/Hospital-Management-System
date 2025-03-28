<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.db.DBConnect"%>
<%@ page import="com.dao.DoctorDao"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Mobile Responsive Meta Tag -->
<title>Admin Dashboard</title>
<%@include file="../component/allcss.jsp"%>

<style>
    .paint-card {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }

    .paint-card:hover {
        transform: scale(1.05);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    }

    .card-body i {
        color: #007bff;
        margin-bottom: 10px;
    }

    .modal-header {
        background: #007bff;
        color: white;
        border-radius: 10px 10px 0 0;
    }

    .btn-primary {
        background-color: #007bff;
        border: none;
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }
</style>
</head>

<body>
    <%@include file="navbar.jsp"%>

    <c:if test="${empty adminObj }">
        <c:redirect url="../admin_login.jsp"></c:redirect>
    </c:if>

    <div class="container py-4">
        <p class="text-center fs-3 fw-bold text-primary">Admin Dashboard</p>

        <!-- Success & Error Messages -->
        <c:if test="${not empty errorMsg}">
            <div class="alert alert-danger text-center">${errorMsg}</div>
            <c:remove var="errorMsg" scope="session"/>
        </c:if>

        <c:if test="${not empty succMsg}">
            <div class="alert alert-success text-center">${succMsg}</div>
            <c:remove var="succMsg" scope="session"/>
        </c:if>

        <!-- Fetch Data -->
        <% DoctorDao dao = new DoctorDao(DBConnect.getConn()); %>

        <!-- Dashboard Cards -->
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
            <div class="col">
                <div class="card paint-card text-center p-3">
                    <div class="card-body">
                        <i class="fas fa-user-md fa-3x"></i>
                        <p class="fs-5 fw-bold mt-2">Doctors</p>
                        <p class="fs-4 text-primary"><%=dao.countDoctor()%></p>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card paint-card text-center p-3">
                    <div class="card-body">
                        <i class="fas fa-user-circle fa-3x"></i>
                        <p class="fs-5 fw-bold mt-2">Users</p>
                        <p class="fs-4 text-primary"><%=dao.countUSer()%></p>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card paint-card text-center p-3">
                    <div class="card-body">
                        <i class="far fa-calendar-check fa-3x"></i>
                        <p class="fs-5 fw-bold mt-2">Appointments</p>
                        <p class="fs-4 text-primary"><%=dao.countAppointment()%></p>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card paint-card text-center p-3" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <div class="card-body">
                        <i class="fas fa-stethoscope fa-3x"></i>
                        <p class="fs-5 fw-bold mt-2">Specialists</p>
                        <p class="fs-4 text-primary"><%=dao.countSpecialist()%></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Specialist Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title fw-bold" id="exampleModalLabel">Add Specialist</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="../addSpecialist" method="post">
                        <div class="form-group mb-3">
                            <label class="fw-bold">Enter Specialist Name</label>
                            <input type="text" name="specName" class="form-control" placeholder="E.g., Cardiologist">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary w-100">Add Specialist</button>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
