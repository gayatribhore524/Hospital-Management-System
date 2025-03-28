<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Details</title>
<%@include file="../component/allcss.jsp"%>

<style>
.paint-card {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
}

.table-responsive {
    overflow-x: auto;
}

th, td {
    white-space: nowrap;
}

.btn {
    border-radius: 5px;
}

.table-hover tbody tr:hover {
    background-color: #f8f9fa;
}
</style>
</head>
<body>

<%@include file="navbar.jsp"%>

<div class="container-fluid p-3">
    <div class="row justify-content-center">
        <div class="col-lg-10 col-md-12">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-3 text-center fw-bold">Doctor Details</p>

                    <!-- Success & Error Messages -->
                    <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>

                    <!-- Responsive Table -->
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead class="table-light">
                                <tr>
                                    <th>Full Name</th>
                                    <th>DOB</th>
                                    <th>Qualification</th>
                                    <th>Specialist</th>
                                    <th>Email</th>
                                    <th>Mob No</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                                List<Doctor> list2 = dao2.getAllDoctor();
                                for (Doctor d : list2) {
                                %>
                                <tr>
                                    <td><%=d.getFullName()%></td>
                                    <td><%=d.getDob()%></td>
                                    <td><%=d.getQualification()%></td>
                                    <td><%=d.getSpecialist()%></td>
                                    <td><%=d.getEmail()%></td>
                                    <td><%=d.getMobNo()%></td>
                                    <td>
                                        <a href="edit_doctor.jsp?id=<%=d.getId()%>" class="btn btn-sm btn-primary">
                                            <i class="fas fa-edit"></i> Edit
                                        </a>
                                        <a href="../deleteDoctor?id=<%=d.getId()%>" class="btn btn-sm btn-danger">
                                            <i class="fas fa-trash-alt"></i> Delete
                                        </a>
                                    </td>
                                </tr>
                                <%
                                }
                                %>
                            </tbody>
                        </table>
                    </div> <!-- End Responsive Table -->

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
