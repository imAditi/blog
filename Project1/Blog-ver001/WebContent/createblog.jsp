<%@include file="commons/head.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog ver01</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">
<h1> Create Blog</h1>
<form action="CreateBlogController" method="get">
	<div class="form-group">
		<label for="title">Title
		</label>
		<input type="text" name="title" class="form-control" placeholder="Title"/>
	</div>
	<div class="form-group">
		<label for="body">Body</label>
		<textarea rows="4" name="body" class="form-control"></textarea>
	</div>
	<button type="submit" class="btn btn-success btn-lg btn-block">Create blog</button>
</form>
</div>
</body>
</html>