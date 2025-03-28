<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <!-- Brand Logo -->
        <a class="navbar-brand" href="index.jsp">
            <i class="fas fa-clinic-medical"></i> MEDI HOME
        </a>

        <!-- Mobile Toggle Button -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navigation Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" href="search.jsp">Search</a>
                </li>
            </ul>

            <!-- If user is not logged in -->
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <c:if test="${empty userObj}">
                    <li class="nav-item">
                        <a class="nav-link active" href="admin_login.jsp">
                            <i class="fas fa-sign-in-alt"></i> ADMIN
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="doctor_login.jsp">DOCTOR</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="user_appointment.jsp">APPOINTMENT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="user_login.jsp">PATIENT</a>
                    </li>
                </c:if>
            </ul>

            <!-- If user is logged in -->
            <c:if test="${not empty userObj}">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="user_appointment.jsp">APPOINTMENT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="view_appointment.jsp">VIEW APPOINTMENT</a>
                    </li>
                </ul>

                <!-- User Profile Dropdown -->
                <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button"
                        id="dropdownMenuButton1" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <i class="fa-solid fa-circle-user"></i> ${userObj.fullName}
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
                        <li><a class="dropdown-item" href="userLogout">Logout</a></li>
                    </ul>
                </div>
            </c:if>
        </div>
    </div>
</nav>
