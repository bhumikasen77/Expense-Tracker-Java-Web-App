<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false"%>
	<%@page import="com.db.HibernateUtil" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="com.dao.ExpenseDAO" %>
<%@page import="com.entity.Expense" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.card-sh{
box-shadow: 0 0 6px 0 rgba(0,0,0,0.3);
}
</style>
<%@include file="../component/all_css.jsp"%>
</head>
<body class="bg-light">
	
<c:if test="${empty loginUser }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="../component/navbar.jsp"%>
	
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	ExpenseDAO dao = new ExpenseDAO(HibernateUtil.getSessionFactory());
	Expense ex =  dao.getExpenseById(id);
	
	%>
	
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="fs-3">Edit Expenses</p>
						
					</div>
					<div class="card-body">
						<form action="../updateExpense" method="post">
							<div class="mb-3">
								<label>Title</label> <input type="text" name="title" value="<%=ex.getTitle() %>"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Date</label> <input type="date" name="date" value="<%=ex.getDate() %>"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Time</label> <input type="time" name="title" value="<%=ex.getTime() %>"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Description</label> <input type="text" name="description" value="<%=ex.getDescription()%>"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Price</label> <input type="text" name="price" value="<%=ex.getPrice()%>"
									class="form-control">
							</div>
							<input type="hidden" name="id" value="<%=ex.getId() %>">
							<button class="btn btn-success col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>