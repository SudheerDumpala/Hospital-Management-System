<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-light bg-info">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-hospital"></i> <b>MediSuite</b></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj}">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user.jsp"><i
							class="fa-regular fa-calendar-check"></i> APPOINTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user.jsp"><i
							class="fa-solid fa-circle-user"></i> LOGIN</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor.jsp"><i
							class="fa-solid fa-user-doctor"></i> DOCTOR</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Admin.jsp"><i
							class="fa-solid fa-lock"></i> ADMIN</a></li>
				</c:if>

				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="appointment.jsp">APPOINTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="viewAppointment.jsp">VIEW APPOINTMENT</a></li>

					<div class="dropdown">
						<button class="btn btn-info dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false"><i
							class="fa-solid fa-circle-user"></i> ${userObj.full_name}
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="#">Change Password</a></li>
							<li><a class="dropdown-item" href="userLogout">Logout</a></li>
						</ul>
					</div>
				</c:if>
			</ul>
		</div>
	</div>
</nav>