<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="component/all_css.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Login Page</p>
						<c:if test="${not empty msg }">
						<p class="text-center text-danger fs-3">${msg}</p>
						<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="login" method="post">
							
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

							
							<button type="submit" class="btn btn-success col-md-12">Login</button>
							<div class="text-center mt-2">
							Don't have account? <a href="register.jsp" class="text-decoration-none">create</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>