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
<title>Add Doctor</title>
<%@include file="../component/allcss.jsp"%>

<style>
.paint-card {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    border-radius: 10px;
}

.container-fluid {
    padding: 20px;
}

.form-control {
    border-radius: 5px;
}

.btn-primary {
    width: 100%;
    border-radius: 5px;
    font-weight: bold;
}

@media (max-width: 768px) {
    .paint-card {
        padding: 15px;
    }
}
</style>
</head>
<body>

<%@include file="navbar.jsp"%>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-lg-5 col-md-8 col-12">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-3 text-center fw-bold">Add Doctor</p>

                    <!-- Success & Error Messages -->
                    <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session" />
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session" />
                    </c:if>

                    <!-- Form -->
                    <form action="../addDoctor" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" required name="fullname" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">DOB</label>
                            <input type="date" required name="dob" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Qualification</label>
                            <input required name="qualification" type="text" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Specialist</label>
                            <select name="spec" required class="form-control">
                                <option>--select--</option>
                                <%
                                SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
                                List<Specalist> list = dao.getAllSpecialist();
                                for (Specalist s : list) {
                                %>
                                <option><%=s.getSpecialistName()%></option>
                                <%
                                }
                                %>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="text" required name="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Mob No</label>
                            <input type="text" required name="mobno" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input required name="password" type="password" class="form-control">
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
