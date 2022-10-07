<%@page import="pvt.modules.Flight"%>
<%@page import="java.util.List"%>
<%@page import="pvt.database.FlightManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dashboard</title>
		<link rel="stylesheet" href="./Styles/main.css">
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	</head>
	<body>
		<%@include file="checkStaff.jsp" %>
		<%@include file="staff_header.jsp" %>
		
		<% String role=(String)session.getAttribute("role"); %>
		
		
		<section style="background-color: #eee;opacity: 0.85">
		  <div class="container py-5">
		  	<h2>Flight Details</h2>
		  	
		  	
		 
		    </div>
		    <%}i++;} %>
		  </div>
		</section>
		
		
		
		
		
		
			
			
		<%@include file="footer.jsp" %>
	</body>
</html>