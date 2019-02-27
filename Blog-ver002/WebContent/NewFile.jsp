<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@include file="commons/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<title>Table</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="asset/group1/css/style.css" />
<style>

.container {
	
	background-color:#ecedf0;
	
	padding-left: 0px;
	padding-right: 0px;
	width: 803px;
	height: 364px;
}


.allpost {
	
	padding-left: 10px;
	background-color: #f6f6f6;
	height: 45px;
	border-bottom:1px solid #ddd;
}

h3 {
	margin: 0px;
	padding:5px;
}

.table {
	margin-top: 50px;
	width:97%;
	margin-left:10px;
	margin-right:10px;
}

.dropdown {
	float: left;
	width: 65px;

}

p {
	float: left;
	margin-top: 10px;
	margin-left: 20px;
}

#myInput {
	height: 30px;
	border-radius: 4px;
	float: right;
	width: 25%;
	border-radius: 5px;
}

.topnav {
	margin-top: 10px;
	margin-left: 10px;
	margin-right: 10px;
	
}


ul.pagination {
	float: right;
	margin-top: 5px;
	height: 10px;
	margin-right:14px;
	

}
#windowButtons{
    margin:0 px;
    float:right;
    
}
button#dropdownMenu1.btn.btn-default.dropdown-toggle {
width:120%;

}

</style>



</head>
<body>
	<div class="container team2" style="margin-top:108px">
		<div class="dataTableDiv">
		<div class="allpost">
			<h3>All Post <div id="windowButtons">
				<img src="asset/group2/images/drop-down-arrow.svg" height="10px"
					width="10px" id="show"> <img
					src="asset/group2/images/cancel.svg" height="10px" width="10px"
					hspace=8 id="hide">
			</div></h3>
			
			</div>
		</div>

		<div class="topnav">
		
			<select class="dropdown">
					<option>1</option>
					<option>2</option>
			</select>
				
			<p>records per page</p>

			<input type="text" id="myInput" onkeyup="myFunction()"
				placeholder="Search" title="Type in a name">
		</div>

		<div class="table-responsive">
		<table class="table table-bordered table-striped table-hover table-responsive"  id="myTable">
			<thead>
				<tr>
					<th scope="col">Post Title</th>
					<th scope="col">Category</th>
					<th scope="col">Date</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<tr>

					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td><img src="asset/group2/images/edit.svg" title="edit"
						width="15px" height="15px" hspace=12><img
						src="asset/group2/images/delete.svg" width="15px" height="15px"></td>
				</tr>
				<tr>

					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td><img src="asset/group2/images/edit.svg" title="edit"
						width="15px" height="15px" hspace=12><img
						src="asset/group2/images/delete.svg" width="15px" height="15px"></td>
				</tr>
				<tr>

					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td><img src="asset/group2/images/edit.svg" title="edit"
						width="15px" height="15px" hspace=12><img
						src="asset/group2/images/delete.svg" width="15px" height="15px"></td>
				</tr>
				<tr>

					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td><img src="asset/group2/images/edit.svg" title="edit"
						width="15px" height="15px" hspace=12><img
						src="asset/group2/images/delete.svg" width="15px" height="15px"></td>
				</tr>

			</tbody>
		</table>
		</div>

		<p>Showing result 1 to 5 of 5 entries</p>

		<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&#60;</span>
			</a></li>
			<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&#x0003E;</span>
			</a></li>
		</ul>
		</nav>

	</div>
	

</body>
</html>