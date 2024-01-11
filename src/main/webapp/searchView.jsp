<%@page import="mavenWebProject.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="allCss.jsp" %>
<title>Insert title here</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
	
	<h1 class="text-center mt-3 mb-3">Student Details</h1>
	<table class="table table-striped table-bordered border-success container">
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
	if(!session.isNew()){
	  	 List<Student> list = (List<Student>) session.getAttribute("data");
	  	 Student s = list.get(0);	%>
	  	 <tr>
	      <th scope="row"><%= s.getFullName() %></th>
	      <td><%= s.getDob() %></td>
	      <td><%= s.getAddr() %></td>
	      <td><%= s.getQualification() %></td>
	      <td><%= s.getEmail() %> </td>
	      <td><a href="editStud.jsp?id=<%= s.getId() %>" class="btn btn-sm btn-primary">Edit</a>
	      <a href="delete?id=<%= s.getId() %>" class="btn btn-sm btn-success ms-1">Delete</a></td>
	    </tr>
	    <% } %>
	  </tbody>
	</table>
	
</body>
</html>