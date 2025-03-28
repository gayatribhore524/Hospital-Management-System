<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Doctor Profile</title>

<!-- Include Bootstrap & FontAwesome -->
<%@include file="../component/allcss.jsp"%>

<style>
/* Page Background */
body {
    background-color: #f4f7fc;
}

/* Card Styling */
.paint-card {
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    background-color: #fff;
    padding: 20px;
}

/* Form Labels */
label {
    font-weight: bold;
}

/* Input Fields */
.form-control {
    border-radius: 8px;
    padding: 10px;
}

/* Buttons */
.btn-primary {
    width: 100%;
    border-radius: 8px;
    padding: 10px;
    font-size: 16px;
}

/* Mobile Responsive */
@media (max-width: 768px) {
    .container {
        padding: 15px;
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

<!-- Added space from navbar (mt-5) and bottom (mb-5) -->
<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <!-- Change Password Section -->
        <div class="col-md-5 col-sm-12 mb-4">
            <div class="card paint-card">
                <p class="text-center fs-3">🔑 Change Password</p>

                <!-- Success & Error Messages -->
                <c:if test="${not empty succMsg}">
                    <p class="text-center text-success fs-4">${succMsg}</p>
                    <c:remove var="succMsg" scope="session" />
                </c:if>
                <c:if test="${not empty errorMsg}">
                    <p class="text-center text-danger fs-5">${errorMsg}</p>
                    <c:remove var="errorMsg" scope="session" />
                </c:if>

                <div class="card-body">
                    <form action="../doctChangePassword" method="post">
                        <div class="mb-3">
                            <label>New Password</label>
                            <input type="password" name="newPassword" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label>Old Password</label>
                            <input type="password" name="oldPassword" class="form-control" required>
                        </div>
                        <input type="hidden" value="${doctObj.id}" name="uid">
                        <button class="btn btn-primary">Change Password</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Edit Profile Section -->
        <div class="col-md-6 col-sm-12">
            <div class="card paint-card">
                <p class="text-center fs-3">👨‍⚕️ Edit Profile</p>

                <!-- Success & Error Messages -->
                <c:if test="${not empty succMsgd}">
                    <p class="text-center text-success fs-4">${succMsgd}</p>
                    <c:remove var="succMsgd" scope="session" />
                </c:if>
                <c:if test="${not empty errorMsgd}">
                    <p class="text-center text-danger fs-5">${errorMsgd}</p>
                    <c:remove var="errorMsgd" scope="session" />
                </c:if>

                <div class="card-body">
                    <form action="../doctorUpdateProfile" method="post">
                        <div class="mb-3">
                            <label>Full Name</label>
                            <input type="text" name="fullname" class="form-control" required value="${doctObj.fullName}">
                        </div>
                        <div class="mb-3">
                            <label>DOB</label>
                            <input type="date" name="dob" class="form-control" required value="${doctObj.dob}">
                        </div>
                        <div class="mb-3">
                            <label>Qualification</label>
                            <input type="text" name="qualification" class="form-control" required value="${doctObj.qualification}">
                        </div>
                        <div class="mb-3">
                            <label>Specialist</label>
                            <select name="spec" class="form-control" required>
                                <option>${doctObj.specialist}</option>
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
                            <label>Email</label>
                            <input type="text" name="email" class="form-control" readonly required value="${doctObj.email}">
                        </div>
                        <div class="mb-3">
                            <label>Mobile No</label>
                            <input type="text" name="mobno" class="form-control" required value="${doctObj.mobNo}">
                        </div>
                        <input type="hidden" name="id" value="${doctObj.id}">
                        <button type="submit" class="btn btn-primary">Update Profile</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
