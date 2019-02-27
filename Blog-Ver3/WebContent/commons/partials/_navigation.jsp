<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>

<body>


	<!-- navigation start -->
	<nav class="navbar navbar-default ">
		<div class="container-fluid" style="width: 90%">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">TechBlog</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav">
					
						
						<li><a href="./">Home</a></li>
						<li><a href="./about.jsp">About</a></li>
						<li><a href="./contact.jsp">Contact</a></li>
				
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<a href="registration.jsp" class="btn btn-default navbar-btn btn-success">Sign Up</a>
					<a href="login.jsp" class="btn btn-default navbar-btn btn-primary">Login</a>
				</ul>
			</div>
		</div>


	</nav>
	<!-- navigation end -->


</body>
</html>