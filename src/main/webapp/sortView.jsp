<%@page import="mavenWebProject.entity.Student"%>
<%@page import="java.util.List"%>
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
	  
	  <% 
	  	 List<Student> list = (List<Student>) session.getAttribute("sort") ;
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