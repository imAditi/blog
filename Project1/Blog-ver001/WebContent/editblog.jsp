<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="commons/head.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="css/bootstrap.css">

<!-- Main section start -->

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<form action="UpdateBlogController">
				<div class="form-group">
					<input type="hidden" name="id" value="${blog.id}"> <input
						type="hidden" name="created_at" value="${blog.created_at}">
					<input type="text" class="form-control" name="title"
						value="${blog.title}">
				</div>
				<div class="form-group">
					<label for="body">Body:</label>
					<textarea rows="4" name="body" class="form-control">${blog.body}</textarea>
				</div>
				<button type="submit" class="btn btn-success">Save</button>
			</form>
			</div>
			<div class=" jumbotron col-md-6">
			
					<p>Created At : ${blog.created_at }</p>
					<p>Updated At : ${blog.updated_at }</p>
				<a href="ListBlogController" class="btn btn-danger">Cancel</a>
						
				</div>
				<hr>
			</div>

		</div>

	

<!-- end main section -->



<%@include file="commons/foot.jsp"%>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>
