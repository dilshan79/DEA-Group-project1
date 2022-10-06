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