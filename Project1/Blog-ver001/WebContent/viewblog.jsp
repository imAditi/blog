<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="commons/head.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="css/bootstrap.css">


<div class="container">

	<div class="row">
		<div class="col-md-6">
			<h3>${blog.title}</h3>
			<p>${blog.body}</p>
		</div>
		<div class="jumbotron col-md-6">

			<p>Created at: ${blog.created_at }</p>
			<p>Updated at : ${blog.updated_at }</p>
			<a href="EditBlogController?id=${blog.id}" class="btn btn-primary">Edit</a>
			<a href="ListBlogController" class="btn btn-danger ">Cancel</a>
		</div>

	</div>

</div>

<%@include file="commons/foot.jsp"%>