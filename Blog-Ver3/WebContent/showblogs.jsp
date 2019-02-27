

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<div class="rows">
			<h2 class="col-md-3">Blog List</h2>
			<form class="form-inline col-md-6" role="search" action=test()>
				<div class="form-group ">
					<input type="text" class="form-control" name="title"
						placeholder="Search">

					<button type="submit" class="btn btn-default" value="Search">Search</button>
				</div>
			</form>
			<a class="btn btn-primary col-md-1 col-md-offset-1"
				href="createblog.jsp">Create</a>
		</div>
		<table class="table">
			<tr>
				<th>#</th>
				<th>Title</th>
				<th>Body</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Category</th>
				<th>Action</th>
			</tr>
			<c:forEach var="blogs" items="${blogs}">
				<tr>
					<td><c:out value="${blogs.id}"></c:out></td>
					<td><c:out value="${blogs.title}"></c:out></td>
					<td><c:out value="${blogs.body}"></c:out></td>
					<td><c:out value="${blogs.created_at}"></c:out></td>
					<td><c:out value="${blogs.updated_at}"></c:out></td>
					<td><c:forEach var="category" items="${blogs.category}">
							<c:forEach var="categories" items="${categories}">
								<c:choose>
									<c:when test="${category==categories.id}">
										<c:out value="${categories.name}"></c:out>
									</c:when>
								</c:choose>
							</c:forEach>
						</c:forEach></td>
					<td><a class="btn btn-default"
						href="ViewBlogController?id=${blogs.id}">View</a> 
						<a class="btn btn-danger" href="DeleteBlogController?id=${blogs.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%@include file="commons/foot.jsp"%>
</body>
</html>