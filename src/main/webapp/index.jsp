<%@page import="mavenWebProject.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="mavenWebApp.dao.StudentDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="mavenWebProject.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
<%@include file="allCss.jsp" %>
	<style type="text/css">
		nav a{
		color: white !important;}
		body{
			background: #C04848; 
			background: -webkit-linear-gradient(to right, #480048, #C04848); 
			background: linear-gradient(to right, #480048, #C04848); 
		}
			
		.card{
			box-shadow: 5px 5px 10px black;
			border-radius:20px;
			background: #dcdde1;
		}
	
	</style>
</head>
<body>
	<%@include file="navbar.jsp" %>	
	
	<div class="container p-5">
	<div class="card">
	<div class="card-body">
	<form action="SortController">
		<div class="dropdown">
		  <label for="cars" style="color:purple;">Sort by:</label>
		<select name="sort">
		  <option class="py-2" value="dob">DOB</option>
		  <option class="py-2"  value="Qualification">Qualification</option>
		</select>
		<input type="submit" value="Submit">
		</div>
	</form>
	<p class="text-center fs-1 p-3">All Student Details</p>
		
	<c:if test="${not empty success }">
		<p class="text-center text-success">${success }</p>
		<c:remove var="success"/>
	</c:if>
	<c:if test="${not empty error }">
		<p class="text-center text-danger">${error }</p>
		<c:remove var="error"/>
	</c:if>
	
	<table class="table table-striped table-bordered border-success ">
	  <thead>
	    <tr>
	      <th scope="col">Full Name</th>
	      <th scope="col">DOB</th>
	      <th scope="col">Address</th>
	      <th scope="col">Qualification</th>
	      <th scope="col">Email</th>
	      <th scope="col">Action</th>
	    </tr>
	  </thead>
	  <tbody>
	  
	  <% StudentDao dao = new StudentDao(DbConnect.myConnection());
	  	 List<Student> list = dao.getAllStud();
	  	 for(Student s: list){
	  %>
	  	 <tr>
	      <th scope="row"><%= s.getFullName() %></th>
	      <td><%= s.getDob() %></td>
	      <td><%= s.getAddr() %></td>
	      <td><%= s.getQualification() %></td>
	      <td><%= s.getEmail() %> </td>
	      <td><a href="editStud.jsp?id=<%= s.getId() %>" class="btn btn-sm btn-primary">Edit</a>
	      <a href="delete?id=<%= s.getId() %>" class="btn btn-sm btn-success ms-1">Delete</a></td>
	    </tr>
	  <%}
	  %>
	  </tbody>
	</table>
	</div>
	</div>
	</div>
</body>
</html>