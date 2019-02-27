<%@page import="com.yash.blogapp.domain.Blog"%>
<%@page import="com.yash.blogapp.serviceimpl.BlogServiceImpl"%>
<%@page import="com.yash.blogapp.service.BlogService"%>
<%!
	BlogService blogService =  new BlogServiceImpl();
%>

<%
	// read the blogid from query string(paramer)
	Integer id = new Integer(request.getParameter("blogid"));
	// get the blog detail related with blogid
	Blog blog = blogService.getBlog(id);
	request.setAttribute("blog", blog);
%>

<%@include file="commons/head.jsp" %>
	<!-- Main section start -->
	<div class ="container">
		<div class = "row">
			<div class="col-md-8">
				<h2>${blog.title}</h2>
				<p>${blog.body}</p>
			</div>
			
			
			<div class="col-md-4">
				<div class = "well">
				<p>Created At : ${blog.created_at } </p>
				<p>Updated At : ${blog.updated_at }</p>
				<div class="row">
					<div class="col-md-6">
						<a href = "./editblog.jsp?blogid=${blog.id}" class="btn btn-primary btn-sm btn-block">Edit</a>
					</div>
					
					<div class="col-md-6">
						<form action="./ListBlogController">
							<button type="submit" class="btn btn-danger btn-sm btn-block">Cancel</button>
						</form>
					</div>
				</div>			
				
				</div>		
				
			</div>
		</div>
	</div> <!-- end main section -->
	
	<%@include file="commons/foot.jsp" %>
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>
	
	
	