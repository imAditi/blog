		<div id="sidebar-wrapper" style="margin-top: -1px">
			<ul class="sidebar-nav sidenav-border">
				<li><a href="#"> Navigation Heading </a></li>
				<li class="a-side"><a href="homePage.jsp"><i class="fa fa-home"
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
		</div>    <!-- /#sidebar-wrapper : ends -->

		<!-- Page Content : starts -->
		
			<!-- <div class="container-fluid">
			<div class="row">
				<div class="content-header navbar-fixed-top" style="margin-top: 50px; ">
					<div class="pull-left">
						<a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a> <label>Dashboard</label>
					</div>
					<div class="pull-right d-right">
						<a href=""><i class="fa fa-home" aria-hidden="true"></i> /
							Dashboard</a>
					</div>
				</div>

			</div>

		</div> -->
	<!--script section-->
	<script>
          $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
          });
        </script>

