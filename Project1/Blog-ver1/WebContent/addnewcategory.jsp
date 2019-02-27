
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Javascript Tuto</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="asset/vendors/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<link rel="stylesheet" href="asset/css/style3.css"/>
<script type="text/javascript" src="asset/vendors/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="asset/vendors/bootstrap.min.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans"
	rel="stylesheet">
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.jqueryui.min.css" />
<link href="https://fonts.googleapis.com/css?family=Libre+Franklin"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" href="asset/css/myStyle.css" />
<link rel="stylesheet" type="text/css" href="asset/css/style.css" />


<!-- added later -->
	
	 <link	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"	rel="stylesheet"> 
	<link rel="stylesheet" type="text/css"	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript" src="asset/group2/js/custom-script2.js"></script> 
<!-- <script type="text/javascript">

    $(document).ready(function() {
        $('#example').dataTable({
        });
            
        $("#example_length label").contents().first().remove();
        $("#example_length label").contents().last().replaceWith(" records per page");
        $("#example_length label").css("color", "grey").css("font-weight","400");
        
        $("#example_previous").contents().replaceWith("<strong> < </strong>").css("background", "yellow");
        $("#example_next").contents().replaceWith("<strong> > </strong>");
        
        $("#example_filter label").contents().first().remove();
        $('#example_filter').find("input").attr("placeholder", "Search").css("font-weight","400");
      });

      function confirmDelete() {

        var result = confirm("Want to delete?");
        if (result) {
          //delete the code from here
          alert("the record got deleted");
        }
      }

      $(document).ready(function(){
        $("#hide").click(function(){
          $(".issue").hide();
        });
        $("#show").click(function(){
          $(".issue").show();
        });
      });

      $('#example').dataTable( {
        "language": {
          "paginate": {
            "next": "Next page"
          }
        }
      } );       



</script>  -->

</head>
<body>
	<!--header starts   -->

	<div class="header">
		<header class="main-header">
			<div class="row">
				<div class="container-fluid">
					<div class="col-md-12">
						<div class="col-sm-6">
							<img src="asset/images/yash-logo.svg" class="yashlogo pull-left"
								alt="YAsh Logo">
						</div>
						<div class="col-sm-6">
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
				<li class="a-side"><a href="userprofile.jsp"><i
						class="fa fa-home" aria-hidden="true"></i>User Profile</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper-->
		<!-- /#Page Content-->


		<div class="container-fluid">
			<div class="row">
				<div class="content-header">
					<div class="pull-left">
						<a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a> <label>Add
							New Category</label>
					</div>
					<div class="pull-right">
						<font class="d-right"><a href=""><i class="fa fa-home"
								aria-hidden="true"></i></a> / Dashboard</font>
					</div>
				</div>
			</div>
		</div>


		<!-- <div class="container">  -->
		<div class="row">
			<div class="col-md-12 col-sm-6">



				<div class="Team2">
					<!--top bar starts -->
					<div class="allPost">
						<h3>Add New Category</h3>
						<div id="windowButtons">
							<img src="asset/images/drop-down-arrow.svg" height="10px"
								width="10px" id="show"> <img src="asset/images/cancel.svg"
								height="10px" width="10px" hspace=8 id="hide">

						</div>
					</div>
					<!--top bar ends -->
					<!--table content starts-->
					<br>
					<button class="btn btn-info btn-xs pull-right" style="padding:2px;">Add+</button>
					<div class="issue">
						<table id="example" class="display">

							<thead>
								<tr>

									<th>Category Name</th>
									<th>Date</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="categories" items="${categories}">
									<tr>
										<td class="${categories.id}"><c:out value="${categories.name}"></c:out></td>
										<td class="${categories.id}"><c:out value="${categories.created_at}"></c:out></td>

						<td><button	style="border: 0px; background-color: #f9f9f9;" onclick="update(this,${categories.id});">
						<img src="asset/group2/images/edit.svg" title="edit" width="15px" height="15px">
						</button>
						</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!--table content ends-->
				</div>
			</div>
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
-->

</html>
