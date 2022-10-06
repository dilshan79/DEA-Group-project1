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
                                                    <% if(i%3==0){System.out.println(i); %>
                                                        <div class="row justify-content-center p-3">
                                                            <%} %>

                                                                <div class="col-md-8 col-lg-6 col-xl-4">

                                                                    <div class="card" style="border-radius: 15px;">
                                                                        <div class="bg-image hover-overlay ripple ripple-surface ripple-surface-light" data-mdb-ripple-color="light">
                                                                            <img src="images/flight.jpg" style="border-top-left-radius: 15px; border-top-right-radius: 15px;" class="img-fluid" alt="Laptop" />
                                                                            <a href="#!">
                                                                                <div class="mask"></div>
                                                                            </a>
                                                                        </div>
                                                                        <div class="card-body pb-0">
                                                                            <div class="d-flex justify-content-between">
                                                                                <div>
                                                                                    <p>
                                                                                        <a href="#!" class="text-dark">
                                                                                            <%=flight.getFlightNumber() %>
                                                                                        </a>
                                                                                    </p>
                                                                                    <p class="small text-muted">
                                                                                        <%=flight.getDate() %>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>