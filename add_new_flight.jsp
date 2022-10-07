<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add New Flight</title>
		<link rel="stylesheet" href="./Styles/main.css">
		<link rel="stylesheet" href="./Styles/addFlight.css">
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	</head>
	<body>
		<%@include file="checkStaff.jsp" %>
		<%@include file="staff_header.jsp" %>
		
		<% String role=(String)session.getAttribute("role"); %>
		
		<section  class="get-in-touch">
		   <h1 class="title">Add Flight</h1>
		   <form action="AddNewFlight" method="post" class="contact-form row">
		      <div class="form-field col-lg-6">
		         <input id="name" class="input-text js-input" type="text" name="flightNumber" required>
		         <label class="label" for="name">Flight Number</label>
		      </div>
		      
		      <div class="form-field col-lg-12">
		         <input type="submit"class="submit-btn"  name="addFlight" value="Add Flight">
		      </div>
		   </form>
		</section>
		
	<%@include file="footer.jsp" %>
	</body>
</html>