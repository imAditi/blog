<%@page import="java.lang.String.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="commons/head.jsp"%>

<!-- Main section start -->
<div class="container">

	<div class="row">

		<div class="col-md-8">
			<div class="pagetitle">
				<h3>Blog List</h3>

			</div>
			<hr>
		</div>

		<!-- Side Button section -->
		<div class="col-md-3 col-md-offset-1">
			<a href="./createblog.jsp" class="btn btn-primary btn-link-spacing">Create
				Blog</a>
		</div>
		<!-- end Button section -->

	</div>
	
	<div class="row">
		<div class="col-md-12">
		
			<c:if test="${msg!=null }">
			<div class="alert alert-success" role="alert">
  				${msg}
			</div>
			</c:if>
			
			
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Title</th>
						<th>Body</th>
						<th>Created AT</th>
						<th>Updated AT</th>
						<th></th>
					</tr>
				</thead>

				<tbody>
					<%
						int rowCount =0;
					%>
					<c:forEach items="${requestScope.blogs}" var="blog">
						<tr>
							<td><%=++rowCount%></td>
							<td>${blog.title}</td>
							<td>${blog.body}</td>
							<td>${blog.created_at}</td>
							<td>${blog.updated_at}</td>
							<td>
							
								<a href="editblogview.jsp?blogid=${blog.id}" class="btn btn-default btn-sm">View</a> 
								<a href="deleteblog.jsp?blogid=${blog.id}" class="btn btn-danger btn-sm">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
	<!-- end row -->


</div>
<!-- end main section -->


<%@include file="commons/foot.jsp"%>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>


