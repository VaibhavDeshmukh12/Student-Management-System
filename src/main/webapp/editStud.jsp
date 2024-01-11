<%@page import="mavenWebProject.entity.Student"%>
<%@page import="mavenWebProject.db.DbConnect"%>
<%@page import="mavenWebApp.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				/* From https://css.glass */
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
						<p class="fs-3 text-center">Edit Student</p>
						
						<% 
							int id = Integer.parseInt(request.getParameter("id"));
							StudentDao dao = new StudentDao(DbConnect.myConnection());
							Student s = dao.getStudentById(id);
						%>						
						
						<form action="update" method="post">
						  <div class="mb-3">
						    <label class="form-label">Full name</label>
						    <input type="text" name="name" class="form-control" value="<%= s.getFullName()%>" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">DOB</label>
						    <input type="date" name="dob" class="form-control" value="<%= s.getDob()%>" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">Address</label>
						    <input type="text" name="addr" class="form-control" value="<%= s.getAddr()%>" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">Qualification</label>
						    <input type="text" name="qualification" class="form-control" value="<%= s.getQualification() %>" required="required">
						  </div>
						  <div class="mb-3">
						    <label class="form-label">Email</label>
						    <input type="email" name="email" class="form-control" value="<%= s.getEmail()%>" required="required">
						  </div>
						  <input type="hidden" name="id" value="<%= s.getId()%>">
						  <button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>