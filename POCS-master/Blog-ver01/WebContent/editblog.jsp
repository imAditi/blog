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
	<form action="./EditBlogController" method="post">
	<div class ="container">
		<div class = "row">
			<div class="col-md-8">
			
					<input type="hidden" name= "id" value="${blog.id}">
				
					<div class="form-group">
						<label for="title">Title:</label>
						<input type="text" name="title" value="${blog.title}" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="body">Body:</label>
						<textarea rows="20" name="body" class="form-control" >
						${blog.body}
						</textarea>
					</div>
								
			</div>
			
			
			<div class="col-md-4">
				<div class = "well">
				<p>Created At : ${blog.created_at } </p>
				<p>Updated At : ${blog.updated_at }</p>
				<div class="row">
					<div class="col-md-6">
						<button type="submit" class="btn btn-success btn-sm btn-block">Save Changes</button>
					</div>
					
					<div class="col-md-6">
						
							<a href="./ListBlogController" type="submit" class="btn btn-danger btn-sm btn-block">Cancel</a>
						
					</div>
				</div>			
				
				</div>		
				
			</div>
		</div>
	</div> <!-- end main section -->
	
	</form>
	
	<%@include file="commons/foot.jsp" %>
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>
	
	
	