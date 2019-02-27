<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<h1>User Registration</h1>
	<form action="UserRegistrationController" method="get">
	<div class="form-group">
    <label for="firstName">FirstName :</label>
    <input type="text" class="form-control" name="firstName" placeholder="First Name" required>
  </div>
  
  <div class="form-group">
    <label for="lastName">LastName :</label>
    <input type="text" class="form-control" name="lastName" placeholder="Last Name" required>
  </div>
  
  <div class="form-group">
    <label for="contact">Contact :</label>
    <input type="text" class="form-control" name="contact" placeholder="Contact" required>
  </div>
  
  <div class="form-group">
    <label for="email">Email :</label>
    <input type="email" class="form-control" name="email" placeholder="Email" required>
  </div>
  
  <div class="form-group">
    <label for="password">Password :</label>
    <input type="password" class="form-control" name="password" placeholder="Password" required>
  </div>
  
  <button type="submit" value="save" class="btn btn-primary">Sign Up</button>
  
	</form>
	</div>
</body>
</html>