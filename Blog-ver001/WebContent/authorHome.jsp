<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.yash.blogapp.domain.*" %>
    <%@include file="commons/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container" style="margin-top: 5%">
    <%User user = (User)session.getAttribute("user"); %>
    <h1> Welcome!!! <%out.println(user.getFirstName()+ " " +user.getLastName()); %></h1>
    <h3> Role : <%out.println(session.getAttribute("role")); %></h3>
    
    <button class="btn btn-default btn-block">List Blogs</button>
    <button class="btn btn-default btn-block">Logout</button>
</div>
</body>
</html>
<%@include file="commons/foot.jsp"%>

