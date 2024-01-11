<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light" style="background: #651248; font-size: 20px;">
  <div class="container-fluid">
    <a class="navbar-brand fs-4" style="font-weight: bold; color: white;" href="#">Student Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-warning" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active text-warning" aria-current="page" href="index.jsp">All Students</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active text-warning" aria-current="page" href="addStud.jsp">Add Students</a>
        </li>
      </ul>
      <form class="d-flex" role="search" action="SearchServlet">
        <input class="form-control me-2" name="id" type="search" placeholder="Enter Id to search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</body>
</html>