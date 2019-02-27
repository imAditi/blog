

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


	<link rel="icon" href="asset/group2/images/favicon.ico" type="image/x-icon">
	<!-- date picker removed -->
	 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>	
	 <link	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"	rel="stylesheet"> 

<!-- CSS Start -->
	<!-- Font and icon -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans"	rel="stylesheet">
	<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css"	href="asset/group2/vendors/bootstrap.min.css">
	
	<!-- Date Picker Theme -->
	<link rel="stylesheet" type="text/css"	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

	<!-- DataTable -->
	<link rel="stylesheet" type="text/css"	href="https://cdn.datatables.net/1.10.19/css/dataTables.jqueryui.min.css" />
	
	<!-- Custom css -->
	<link rel="stylesheet" type="text/css" href="asset/group2/css/style1.css" /> 
	<link rel="stylesheet" type="text/css" href="asset/group2/css/style.css" />
<!-- CSS end -->

<!-- Script Start -->

	<script type="text/javascript" src="asset/group2/vendors/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="asset/group2/vendors/bootstrap.min.js"></script>

	<!-- Date Picker -->
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

	<!-- Datatable -->
	<script type="text/javascript"	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

	<!-- Custom Script -->
	<script type="text/javascript" src="asset/group2/js/custom-script.js"></script> 

<!-- Script End -->

	<title>Blog App | All Posts</title>

</head>

<body>
	<!--header starts   -->
	<!--header starts   -->

	<div class="header">
		<header class="main-header">
			<div class="row">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="col-sm-4">
							<img src="asset/group2/images/yash-logo.svg" class="yashlogo pull-left"
							alt="YAsh Logo">
						</div>
						<div class="col-sm-4">
							<input type="text" class="search-box pull-right"
							placeholder="Search">

						</div>
					</div>
				</div>
			</div>
		</header>
	</div>

	<!--header ends -->

	<!-- side navigation starts-->

	<div id="wrapper">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#"> Navigation Heading </a>
				</li>
				<li class="a-side"><a href="#"><i class="fa fa-home"
					aria-hidden="true"></i>Dashboard</a></li>
					<li class="dropdown a-side"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"><i class="fa fa-columns"
						aria-hidden="true"></i>Blog Posts <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="ListBlogController">All Post</a></li>
						<li><a href="addnewblog.jsp">Add New Post</a></li>
						<li><a href="ListCategoryController">Add New Category</a></li>
					</ul></li>
				<li class="a-side"><a href="userprofile.jsp"><i class="fa fa-home"
						aria-hidden="true"></i>User Profile</a></li>
			</ul>
					</div>
					<!-- /#sidebar-wrapper-->
					<!-- /#Page Content-->

					<div class="container-fluid">
						<div class="row">
							<div class="content-header">
								<div class="pull-left">
									<a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a> <label>All
									Posts</label>
								</div>
								<div class="pull-right">
									<font class="d-right"><a href=""><i class="fa fa-home"
										aria-hidden="true"></i></a> / Dashboard</font>
									</div>
								</div>
							</div>
						</div>
<!-- All Post Container -->
						<div class="container">
							<div class="row">
								<div class="team2 col-md-10">

									<div class="dataTableDiv">
										<!-- All post table heading -->
										<div class="allPost">
											<h3>All Post</h3>
											<div id="windowButtons">
												<img src="asset/group2/images/drop-down-arrow.svg" height="10px"
												width="10px" id="show"> <img
												src="asset/group2/images/cancel.svg" height="10px" width="10px"
												hspace=8 id="hide">
											</div>
										</div>
										<!-- All post table heading end -->
										<!-- All post table -->
										<div class="issue">
											
											<!-- Data Table Start -->
												<table id="example" class="display" style="width: 100%">
													<thead>
														<tr>

															<th>Post Title</th>
															<th>Category</th>
															<th>Date</th>
															<th>Actions</th>
														</tr>
													</thead>
			
			<tbody>
				<c:forEach var="blogs" items="${blogs}">
					<tr>
						<td class = "${blogs.id}" ><c:out value="${blogs.title}"></c:out></td>
						<td class = "${blogs.id}" ><c:forEach var="category" items="${blogs.category}">
								<c:forEach var="categories" items="${categories}">
									<c:choose>
										<c:when test="${category==categories.id}">
											<c:out value="${categories.name}"></c:out>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:forEach></td>
						<td class="${blogs.id}"><c:out value="${blogs.created_at}"></c:out></td>
						<td><button	style="border: 0px; background-color: #f9f9f9;" onclick="update(this,${blogs.id});">
						<img src="asset/group2/images/edit.svg" title="edit" width="15px" height="15px">
						</button> 
						<a id="del" title="${blogs.id}" onclick="deletePost(${blogs.id});"> 
						<img src="asset/group2/images/delete.svg" width="15px" height="15px">
						</a>
						</td>
						
					</tr>
				</c:forEach>
			</tbody>
								</table>
							<!-- Data Table End -->
						<!-- All Post Table End -->
						</div>
					</div>
				</div>

				<!-- row end -->
			</div>

	<!-- All post container end -->
		</div>
	</div>

	<!-- /#page-content-wrapper -->

	<!-- /#wrapper Menu Toggle Script -->

	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
</body>
</html>
