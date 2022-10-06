<%@page import="pvt.database.UserManagement"%>
    <%@page import="pvt.modules.User"%>
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">
                <title>Profile</title>
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
                                        <section style="background-color: #eee;opacity: 0.9;">
                                            <div class="container py-5">
                                                <%
											  User user=new User();
											  user.setEmail((String)session.getAttribute("email"));
											  
											  UserManagement um=new UserManagement();
											  
											  user=um.viewProfile(user);
											  
											  if(user!=null){
										  %>

                                                    <div class="row justify-content-center">
                                                        <div class="col-lg-4">
                                                            <div class="card mb-4">
                                                                <div class="card-body text-center">
                                                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar" class="rounded-circle img-fluid" style="width: 150px;">
                                                                    <h5 class="my-3">
                                                                        <%=user.getName() %>
                                                                    </h5>
                                                                    <p class="text-muted mb-1">
                                                                        <%=user.getEmail() %>
                                                                    </p>

                                                                </div>