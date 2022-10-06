<%@page import="pvt.modules.Flight"%>
    <%@page import="java.util.List"%>
        <%@page import="pvt.database.FlightManagement"%>
            <%@page import="java.util.List"%>
                <%@page import="pvt.modules.User"%>
                    <%@page import="pvt.modules.Ticket"%>
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
                                <%@include file="checkUser.jsp" %>
                                    <%@include file="user_header.jsp" %>


                                        <section style="background-color: #eee;opacity: 0.85">
                                            <div class="container py-5">
                                                <h2>My reservations</h2>
                                                <%
			  	Ticket ticket=new Ticket();
				ticket.setEmail((String)session.getAttribute("email"));
				
				User user=new User();
				
				List<Ticket> tickets=user.viewTickets(ticket);
				
				int i=0;
				while(i<tickets.size()){
		  			Flight flight=new Flight();
		  			flight.setId(tickets.get(i).getFlightId());
		  			
					FlightManagement fm=new FlightManagement();
				
					flight=fm.getOneFlightDetails(flight);
				
				
			%>