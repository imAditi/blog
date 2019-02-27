<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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

		<!-- main start -->
		<div class="mainSection">
			<div class="row">
				<div class="jumbotron" class="col-md-12">
					<h1>Welcome in TechBlog App</h1>
					<p>This is a TechBlog app. It is developed in Servlet, JSP,
						HTML, CSS, JS and Bootstrap</p>
					<button class="btn btn-warning">Join Us</button>
				</div>


				<div class="blogsection col-md-8">
					<div class=" col-md-12">
						<c:forEach var="blogs" items="${blogs}">

							<h3>
								<c:out value="${blogs.title}"></c:out>
							</h3>
							<p>
								<c:out value="${blogs.body}"></c:out>
							</p>
							<a href="EditController?id=${blog.id}" class="btn btn-primary">Read More</a>
							<hr>

						</c:forEach>
					</div>
				</div>
				<div class="categorysection col-md-3 ">
					<h2>Categories</h2>
					<ul class="list-group">
						<li class="list-group-item"><span class="badge">14</span>
							Core Java</li>
						<li class="list-group-item"><span class="badge">50</span> Adv
							Java</li>
						<li class="list-group-item"><span class="badge">150</span>
							Spring</li>
						<li class="list-group-item"><span class="badge">70</span>
							Hibernate</li>
						<li class="list-group-item"><span class="badge">70</span> PHP</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<%@include file="commons/foot.jsp"%>
	<script async type="text/javascript" src="js/script.js"></script>

</body>
</html>