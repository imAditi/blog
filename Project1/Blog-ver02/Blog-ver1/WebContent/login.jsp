<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<h1>Login :</h1>

<form action="UserLoginController">

<div class="form-group">
    <label for="email">Email :</label>
    <input type="email" class="form-control" name="email" placeholder="Enter Email" required>
  </div>
  
  <div class="form-group">
    <label for="password">Password :</label>
    <input type="password" class="form-control" name="password" placeholder="Enter Password" required>
  </div>
	<button type="submit" class="btn btn-primary" value="save">Login</button>

</form>

</div>
</body>
</html>