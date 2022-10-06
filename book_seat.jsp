<%@page import="pvt.modules.Flight"%>
<%@page import="java.util.List"%>
<%@page import="pvt.database.FlightManagement"%>
<%@page import="pvt.database.TicketManagement"%>
<%@page import="java.util.List"%>
<%@page import="pvt.modules.User"%>
<%@page import="pvt.modules.Ticket"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Seat Booking</title>
	<link rel="stylesheet" href="./Styles/main.css">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	
</head>
<body>

	<%@include file="checkUser.jsp" %>
	<%@include file="user_header.jsp" %>
		<section style="background-color: #eee;opacity: 0.85">
		  <div class="container py-5">
		  	<h2>Book Seat</h2>
		  <%
		  	Flight flight=new Flight();
			
			flight.setId(Integer.valueOf(request.getParameter("id")));
			
			FlightManagement fm=new FlightManagement();
			
			flight=fm.getOneFlightDetails(flight);
			if(flight!=null){
				
				
			%>
        </body>
      </htm>
