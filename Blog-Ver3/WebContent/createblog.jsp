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

		<h2>Create Blog</h2>
		<hr>
		<form action="CreateBlogController">
			<div class="form-group">
				<input type="text" class="form-control" name="title"
					placeholder="Enter Name">
			</div>
			<div class="form-group">
				<select class="form-control" name="category">
					<option value=""></option>
					<option value=""></option>
					<option value=""></option>
					<option value=""></option>
					<option value=""></option>
				</select>
			</div>
			<div class="form-group">
				<textarea class="form-control" name="body" rows="3"></textarea>
			</div>
			<button type="submit" class="btn btn-default btn-block">Submit</button>
		</form>
		<hr>
	</div>

	<%@include file="commons/foot.jsp"%>


</body>
</html>