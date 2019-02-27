<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<!--  -->
	<div class="container">
		<div class="rows">
			<div class="col-md-6">
				<form action="UpdateBlogController">
					<div class="form-group">
						<input type="hidden" name="id" value="${blog.id}">
						<input type="hidden" name="created_at" value="${blog.created_at}">
						
						<input type="text" class="form-control" name="title"
							value="${blog.title}">
					</div>
					<div class="form-group">
						<textarea class="form-control" name="body" rows="3">${blog.body}</textarea>
					</div>
					
					<button type="submit" class="btn btn-primary">Save</button>
				</form>
			</div>
			<div class="jumbotron col-md-6">

				<p>Created At : ${blog.created_at}</p>
				<p>Updated At : ${blog.updated_at}</p>
				<a href="ListBlogController" class="btn btn-danger">Cancel</a>
			</div>


			<hr>
		</div>
	</div>

	<%@include file="commons/foot.jsp"%>
</body>
</html>