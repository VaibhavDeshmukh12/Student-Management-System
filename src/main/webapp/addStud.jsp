<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="allCss.jsp" %>
	<style type="text/css">
	nav a{
	color: white !important;}
	body{
		background: #C04848; 
		background: -webkit-linear-gradient(to right, #480048, #C04848); 
		background: linear-gradient(to right, #480048, #C04848); 						
	}
	.table, .card, tr, th, td{
		background: transparent !important;
		color: white !important;
		background: rgba(255, 255, 255, 0.23);
		border-radius: 16px;
		box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
		backdrop-filter: blur(5px);
		-webkit-backdrop-filter: blur(5px);
		border: 1px solid rgba(255, 255, 255, 0.3);
	}
	</style>
</head>
<body class="bg-light">
	<%@include file="navbar.jsp" %>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Student</p>
						
						<c:if test="${not empty success }">
							<p class="text-center text-success">${success }</p>
							<c:remove var="success"/>
						</c:if>
						<c:if test="${not empty error }">
							<p class="text-center text-danger">${error }</p>
							<c:remove var="error"/>
						</c:if>
						
						<form action="register" method="post">
						  <div class="mb-3">
						    <label class="form-label">Full name</label>
						    <input type="text" name="name" class="form-control border border-success shadow-lg" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">DOB</label>
						    <input type="date" name="dob" class="form-control border-success shadow-lg" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">Address</label>
						    <input type="text" name="addr" class="form-control border-success shadow-lg" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">Qualification</label>
						    <input type="text" name="qualification" class="form-control border-success shadow-lg" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">Email</label>
						    <input type="email" name="email" class="form-control border-success shadow-lg" required="required">
						  </div>
						  <button type="submit" class="btn btn-primary col-md-12">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>