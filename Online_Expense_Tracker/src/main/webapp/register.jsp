<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style type="text/css">
.card-sh{
box-shadow: 0 0 6px 0 rgba(0,0,0,0.3);
}
</style>
<%@include file="component/all_css.jsp"%>
</head>
<body class="bg-light">
	<%@include file="component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Registration Page</p>
						<c:if test="${not empty msg }">
						<p class="text-center text-success fs-3">${msg}</p>
						<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="userRegister" method="post">
								<div class="mb-3">
									<label class="form-label">Full Name
										</label> <input type="text" id="disabledTextInput" name="fullname"
										class="form-control" required>
								</div>
								
								<div class="mb-3">
									<label for="disabledTextInput" class="form-label">Email
									</label> <input type="email" id="disabledTextInput" name="email"
										class="form-control" required>
								</div>
								
								<div class="mb-3">
									<label for="disabledTextInput" class="form-label">Password
										</label> <input type="password" id="disabledTextInput" name="password"
										class="form-control" required>
								</div>
								
								<div class="mb-3">
									<label for="disabledTextInput" class="form-label">About
										</label> <input type="text" id="disabledTextInput" name="about"
										class="form-control" required>
								</div>
								<button type="submit" class="btn btn-success col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>