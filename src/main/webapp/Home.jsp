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
		body{
			background: #C04848; 
			background: -webkit-linear-gradient(to right, #480048, #C04848); 
			background: linear-gradient(to right, #480048, #C04848); 
		}
		.cls{
			transform: translate(0%,90%);
		}
		p {
		  font-size: 6vw;
		  text-transform: uppercase;
		  text-align: center;
		  line-height: 1;
		}
		
		.fancy {
		  @supports (background-clip: text) or (-webkit-background-clip: text) {
		    background-image: 
		      url("data:image/svg+xml,%3Csvg width='2250' height='900' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cg%3E%3Cpath fill='%2300A080' d='M0 0h2255v899H0z'/%3E%3Ccircle cx='366' cy='207' r='366' fill='%2300FDCF'/%3E%3Ccircle cx='1777.5' cy='318.5' r='477.5' fill='%2300FDCF'/%3E%3Ccircle cx='1215' cy='737' r='366' fill='%23008060'/%3E%3C/g%3E%3C/svg%3E%0A");
		    background-size: 110% auto;
		    background-position: center;
		    color: transparent;
		    -webkit-background-clip: text;
		    background-clip: text;
		  }
	</style>
</head>
<body>
	<%@include file="navbar.jsp" %>	
	<c:if test="${not empty error }">
		<p class="text-center fs-4 mt-2 text-info">${error }</p>
		<c:remove var="error"/>
	</c:if>
	<div class="container text-center d-flex align-items-center justify-content-center cls">
		<p class="text-white"><span class="fancy">Welcome To</span> Student Management System</p>
	</div>	
</body>
</html>