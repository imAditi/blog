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

	<div class=container>
		<h2>Contact Us</h2>
		<hr>
		<div class="well">
			<p>Thanks for giving this opportunity to serve you. Share your
				contact detail with us.
		</div>
		<form action="">
			<div class="form-group">
				<label for=name">Name:</label> <input type="text"
					class="form-control" placeholder="Enter Name">
			</div>
			<div class="form-group">
				<label for=contact">Contact:</label> <input type="number"
					class="form-control" placeholder="Enter Contact">
			</div>
			<div class="form-group">
				<label for=email">Email:</label> <input type="email"
					class="form-control" placeholder="Enter Email">
			</div>
			<div class="form-group">
				<label for=comment">Comment:</label> 
				<textarea class="form-control" rows="3" placeholder="Enter your opinion"></textarea>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
	<%@include file="commons/foot.jsp"%>


</body>
</html>