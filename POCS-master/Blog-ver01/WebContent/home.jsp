<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="commons/head.jsp"%>
<!-- Main section start -->
<div class="container">

	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>
					<i class="fas fa-desktop"></i> Welcome in TechBlog App
				</h2>
				<p class="lead">This is a TechBlog app. It is developed in
					Servlet, JSP, HTML, CSS,JS and Bootstrap</p>
				<button class="btn btn-warning">Join Us</button>
			</div>
		</div>
	</div> <!-- end row -->


	<div class="row">
				<!-- Posts -->
				<div class="col-md-8">
				
					<c:forEach items="${requestScope.blogs}" var="blog">
						<div class="post">
						<h3>${blog.title}</h3>
						<p>${blog.body }</p>
						<a href="" class="btn btn-primary btn-sm">Read More</a>
					</div>
					<hr>
					</c:forEach>				
					
				</div>

				<!-- Side category section -->
				<div class="col-md-3 col-md-offset-1">
					<h3>Categories</h3>
					 <ul class="list-group">
						<li class="list-group-item"><span class="badge">14</span> <a
							href="" class="btn btn-link">Core Java</a></li>

						<li class="list-group-item"><span class="badge">50</span> <a
							href="" class="btn btn-link">Adv. Java</a></li>

						<li class="list-group-item"><span class="badge">150</span> <a
							href="" class="btn btn-link">Spring</a></li>

						<li class="list-group-item"><span class="badge">70</span> <a
							href="" class="btn btn-link">Hibernate</a></li>

						<li class="list-group-item"><span class="badge">70</span> <a
							href="" class="btn btn-link">PHP</a></li>
					</ul> 

				</div>	<!-- end category section -->

			</div>	<!-- end posts row -->

</div> <!-- end main section -->



<%@include file="commons/foot.jsp"%>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>


