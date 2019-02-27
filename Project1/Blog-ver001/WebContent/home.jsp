<%@include file="commons/head.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!-- Main section -->
	<div class="container">
<form>
<div class="form-group">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h2>Welcome in TechBlog App</h2>
					<p>This is a TechBlog app. It is a blog site. It is developed in Servlets, JSP, HTML, CSS, JS, and Bootstrap.</p>
					<p>
						<a class="btn btn-warning" href="#" role="button">Join us</a>
					</p>

				</div>
			</div>
		</div>
		<div class = "row">
		<div class = "col-md-8">
		<c:forEach items = "${blogs}" var = "blogs">
		<h1>${blogs.title}</h1>
		<p>${blogs.body}</p>
		<button class = "btn btn-primary">Read More</button>
		</c:forEach>
		
		</div>
			<div class="col-md-3 col-md-offset-1">
				<h3>Category</h3>
				<ul class="list-group">
					<li class="list-group-item"><span class="badge">14</span>Java</li>
					<li class="list-group-item"><span class="badge">14</span>Android</li>
					<li class="list-group-item"><span class="badge">14</span>Java Script</li>
					<li class="list-group-item"><span class="badge">14</span>CSS</li>
					<li class="list-group-item"><span class="badge">14</span>HTML</li>
				</ul>
			</div>
		</div>
		</div>
</form>

	</div>
	
	<!-- end main section -->
	
	<%@include file="commons/foot.jsp" %>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
	</script>

</body>
</html>