<%@page import="pvt.database.UserManagement"%>
    <%@page import="pvt.modules.User"%>
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">
                <title>Update Profile</title>
                <link rel="stylesheet" href="./Styles/main.css">
                <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
            </head>

            <body>
                <% String role=(String)session.getAttribute("role"); %>
                    <%if(role.equals("User")){ %>
                        <%@include file="user_header.jsp" %>
                            <%}else{ %>
                                <%@include file="staff_header.jsp" %>
                                    <%} %>