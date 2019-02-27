<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.yash.blogapp.util.DateUtil"%>
<%@include file="commons/head.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
<title>Blog App</title>
</head>
<body>
	<div class="container">

		<div class="rows">
			<div class="col-md-6">

				<h2>${blog.title}</h2>
				<p>${blog.body}</p>

			</div>
			<div class="well col-md-3">

				
				<p>Created At : ${blog.created_at}</p>
				<p>Updated At : ${blog.updated_at}</p>
				<a href="EditBlogController?id=${blog.id}" type="submit" class="btn btn-primary">Edit</a>
				<a href="ListBlogController" class="btn btn-danger">Cancel</a>
				
			</div>
		</div>
	</div>


	<%@include file="commons/foot.jsp"%>


</body>
</html>