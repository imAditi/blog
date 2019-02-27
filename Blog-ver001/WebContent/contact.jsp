<%@include file="commons/head.jsp"%>
<div class="container">
<h1>Contact</h1>
<hr>
<div class="well well-sm">
<p>Thanks to give us this opportunity to serve you.Share your contact detail with us.You will hear from out side within 24 hours.</p>
</div>

<form action="" method="post">
	<div class="form-group">
		<label for="name">Name </label> <input type="text" name="name"
			class="form-control" placeholder="Enter Name" />
	</div>
	<div class="form-group">
		<label for="contact">Contact </label> <input type="text" name="contact"
			class="form-control" placeholder="Enter Contact" />
	</div>
	<div class="form-group">
		<label for="email">Email </label> <input type="email" name="email"
			class="form-control" placeholder="Enter Email" />
	</div>
	<div class="form-group">
		<label for="comment">Comment</label>
		<textarea rows="3" name="comment" class="form-control"></textarea>
	</div>
	<button type="submit" class="btn btn-success btn-lg btn-block">Submit</button>
</form>

</div>

<%@include file="commons/foot.jsp"%>



</body>
</html>