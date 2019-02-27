<link rel="stylesheet" href="css/bootstrap.css">
<%@include file="commons/head.jsp"%>

<div class="container">
	<form action="SignUpController">
		<div class="form-group">
			<label>First Name: </label> 
			<input type="text" name="firstName" class="form-control" placeholder=" Enter first name">
		</div>
		
		<div class="form-group">
			<label>Last Name :</label> 
			<input type="text" name="lastName" class="form-control" placeholder=" Enter last name">
		</div>
		
		<div class="form-group">
			<label>Contact: </label> 
			<input type="text" name="contact" class="form-control" placeholder=" Enter Contact">
		</div>
		
		<div class="form-group">
			<label>Email: </label> 
			<input type="email" name="email"  class="form-control" placeholder=" Enter Email">
		</div>
		
		<div class="form-group">
			<label>Password: </label> 
			<input type="password"  name="password" class="form-control" placeholder=" Enter password">
		</div>
		

		<button type="submit" class="btn btn-success">Register</button>
	</form>
</div>




















<%@include file="commons/foot.jsp"%>
