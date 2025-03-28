<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
<%@include file="../component/allcss.jsp"%>

<style>
.paint-card {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    border-radius: 10px;
}

.container-fluid {
    padding: 15px;
}

.table-responsive {
    overflow-x: auto;
}

th, td {
    white-space: nowrap; /* Prevents text wrapping */
}

@media (max-width: 768px) {
    .paint-card {
        padding: 10px;
    }
    
    th, td {
        font-size: 14px; /* Smaller text for mobile */
        padding: 8px;
    }

    .fs-3 {
        font-size: 18px; /* Adjust heading size */
    }
}
</style>

</head>
<body>
    <%@include file="navbar.jsp"%>

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-10 col-md-12 col-12">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="fs-3 text-center fw-bold">Patient Details</p>

                        <!-- Table wrapper for responsiveness -->
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead class="table-light">
                                    <tr>
                                        <th scope="col">Full Name</th>
                                        <th scope="col">Gender</th>
                                        <th scope="col">Age</th>
                                        <th scope="col">Appointment</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Mob No</th>
                                        <th scope="col">Diseases</th>
                                        <th scope="col">Doctor Name</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
                                    DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                                    List<Appointment> list = dao.getAllAppointment();
                                    for (Appointment ap : list) {
                                        Doctor d = dao2.getDoctorById(ap.getDoctorId());
                                    %>
                                    <tr>
                                        <td><%=ap.getFullName()%></td>
                                        <td><%=ap.getGender()%></td>
                                        <td><%=ap.getAge()%></td>
                                        <td><%=ap.getAppoinDate()%></td>
                                        <td><%=ap.getEmail()%></td>
                                        <td><%=ap.getPhNo()%></td>
                                        <td><%=ap.getDiseases()%></td>
                                        <td><%=d.getFullName()%></td>
                                        <td><%=ap.getAddress()%></td>
                                        <td><%=ap.getStatus()%></td>
                                    </tr>
                                    <%
                                    }
                                    %>
                                </tbody>
                            </table>
                        </div>
                        <!-- End of table wrapper -->

                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
