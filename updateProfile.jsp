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
                                        <div class="container rounded bg-white mt-5 mb-5" style="opacity: 0.9">
                                            <div class="row">
                                                <%
												User user=new User();
												user.setEmail((String)session.getAttribute("email"));
												
												UserManagement um=new UserManagement();
												
												user=um.viewProfile(user);
												
												if(user!=null){
											%>
                                                    <div class="col-md-3 border-right">
                                                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                                                            <span
                                                                class="text-black-50">
                                                                <%=user.getEmail() %>
                                                                    </span><span> </span></div>
                                                    </div>