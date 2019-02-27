<%@include file="commons/head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">


	<a href="createblog.jsp" role="button" class="btn btn-primary" "> Create Blog</a>
		<h2>List of Blogs</h2>
	<table class="table">
		<tr>
			<th>#</th>
			<th>Title</th>
			<th>Body</th>
			<th>Created_at</th>
			<th>Updated_at</th>
		</tr>
		<c:forEach var="blog" items="${blogs}">
			<tr>
				<td>${blog.id}</td>
			<td>${blog.title}</td>
				<td>${blog.body}</td>
				<td>${blog.created_at}</td>
				<td>${blog.updated_at}</td>
				<td><a href="ViewBlogController?id=${blog.id}"  class="btn btn-default">View</a></td>
				<td><a href="deleteblog.jsp?id=${blog.id}"  class="btn btn-danger" >Delete</a></td>
			</tr>
		</c:forEach>
		
</table>
</div>