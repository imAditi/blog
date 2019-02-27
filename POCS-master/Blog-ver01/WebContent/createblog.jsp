<%@include file="commons/head.jsp" %>

<div class="container">
	
	<h1>Create Blog</h1>
	<hr>
	<form action="./CreateBlogController" method="post" data-parsley-validate="">
	
	<div class="form-group">
		<label for="title">Title:</label>
		<input type="text" name="title" class="form-control" placeholder="Title" required=""/>
	</div>
	
	<div class="form-group">
		<label for="body">Body:</label>
		<textarea rows="15" class="form-control" name="body" required=""></textarea>
	</div>
	
	<button type="submit" class="btn btn-success btn-lg btn-block">Create Blog</button>
	
	</form>

</div>
<br>

<%@include file="commons/foot.jsp" %>

<script src="js/jquery.js"></script>
<script src="js/parsley.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>
	
