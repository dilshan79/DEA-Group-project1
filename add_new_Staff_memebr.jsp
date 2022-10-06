<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add New Staff Member</title>
	<link rel="stylesheet" href="./Styles/main.css">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
</head>
<body>

		<%@include file="checkAdmin.jsp" %>
		<%@include file="admin_header.jsp" %>
		
		
		<section class="vh-200" style="background-color: #eee;opacity: 0.9;">
		  <div class="container h-100">
		    <div class="row d-flex justify-content-center align-items-center h-200">
		      <div class="col-lg-12 col-xl-11">
		        <div class="card text-black" style="border-radius: 25px;">
		          <div class="card-body p-md-5">
		            <div class="row justify-content-center">
		              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
		
		                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Add New Staff Member</p>
						<form action="AddNewStaff" method="post" class="mx-1 mx-md-4">
		
							<div class="d-flex flex-row align-items-center mb-4">
							  <i class="fas fa-user fa-lg me-3 fa-fw"></i>
							  <div class="form-outline flex-fill mb-0">
								<input type="text" id="form3Example1c" class="form-control" name="name" />
								<label class="form-label" for="form3Example1c">Name</label>
							  </div>
							</div>
		  
							<div class="d-flex flex-row align-items-center mb-4">
							  <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
							  <div class="form-outline flex-fill mb-0">
								<input type="email" id="form3Example3c" class="form-control" name="email" />
								<label class="form-label" for="form3Example3c">Email</label>
							  </div>
							</div>
		  
							<div class="d-flex flex-row align-items-center mb-4">
							  <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
							  <div class="form-outline flex-fill mb-0">
								<input type="password" id="form3Example4c" class="form-control" name="password" />
								<label class="form-label" for="form3Example4c">Password</label>
							  </div>
							</div>
							
						</form>

					  
		
		
		                
		
		<%@include file="footer.jsp" %>
</body>
</html>