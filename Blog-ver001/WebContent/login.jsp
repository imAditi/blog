<link rel="stylesheet" href="css/bootstrap.css">
<%@include file="commons/head.jsp"%>
<div class="container">
	<form action="LoginController" method="post">
		<div class="form-group">
			<label>Email : </label> 
			<input type="email" name="email" class="form-control" placeholder=" Enter Email">
		</div>
		<div class="form-group">
			<label>Password : </label> 
			<input type="password" name="password" class="form-control" placeholder=" Enter Password">
		</div>

		<button type="submit" class="btn btn-success">Submit</button>
	</form>
</div>

<%@include file="commons/foot.jsp"%>