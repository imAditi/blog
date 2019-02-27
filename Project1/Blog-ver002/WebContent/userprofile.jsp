<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
        <html lang="en">

        <head>
          <meta charset="UTF-8">
          <title>YASH Technologies</title>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
          <script type="text/javascript" src="asset/vendors/jquery-3.3.1.min.js"></script>
          <script type="text/javascript" src="asset/vendors/bootstrap.min.js"></script>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> 
          <!-- <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet"> -->
			<link rel="stylesheet" href="asset/css/style3.css"/>

          <link rel="stylesheet" href="asset/css/profile-design.css">
          <script type="text/javascript" src="asset/js/script.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        </head>
        <body>
         <!--header starts   -->        

         <div class="header">
          <header class="main-header">
            <div class="row">
              <div class="container-fluid">
                <div class="col-md-12">
                  <div class="col-sm-6">
                    <img src="asset/images/yash-logo.svg" class="yashlogo pull-left" alt="YAsh Logo">
                  </div>
                  <div class="col-sm-6">
                    <input type="text" class="search-box pull-right" placeholder="Search">

                  </div>
                </div>
              </div>
            </div>
          </header>
        </div>

        <!--header ends -->

        <!-- side navigation starts-->

        <div id="wrapper">
         <div id="sidebar-wrapper" style="margin-top: 7px">
          <ul class="sidebar-nav">
            <li class="sidebar-brand">
              <a href="#">
                Navigation Heading
              </a>
            </li>
            <li class="a-side">
              <a href="#" ><i class="fa fa-home" aria-hidden="true"></i>Dashboard</a>
            </li>
            <li class="dropdown a-side">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-columns" aria-hidden="true"></i>Blog Posts <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="ListBlogController">All Post</a></li>
                <li><a href="addnewblog.jsp">Add New Post</a></li>
                <li><a href="ListCategoryController">Add New Category</a></li>

              </ul>
            </li>
            <li class="a-side">
              <a href="userprofile.jsp" ><i class="fa fa-home" aria-hidden="true"></i>User Profile</a>
            </li>
          </ul>
        </div>
        <!-- /#sidebar-wrapper--> 
        <!-- /#Page Content--> 

        <div class="container-fluid" style="padding-right: 0px; padding-left: 0px; margin-right: -11px; margin-left: -7px;">
          <div class="row">
            <div class="content-header">
              <div class="pull-left">
               <a href="#menu-toggle" class="btn" id="menu-toggle">&#9776;</a>
               <label >Dashboard</label>
             </div>
             <div class="pull-right">
               <font class="d-right"><a href=""><i class="fa fa-home" aria-hidden="true"></i></a>  / User Profile</font>
             </div>
           </div>
         </div>
         

              <!-- user profile start       -->
                    <div class="container-fluid">
    <div class="jumbotron">
      <div class="row">


        <!-- left div  -->
        <div class="col-md-3 col-sd-12 division1">
          <!-- <div class="container"> -->
          &nbsp
          <div type="file" class="profile img-rounded" style="background: lightgray;text-align: center;">
            
          </div>


          <div class="progressbar">
            <h6>Progress Completion</h6>
            <div class="progress">
              <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
                <span class="sr-only">70% Complete</span>

              </div>
            </div>  
            <h6>Update Pofile Picture</h6>
            <a data-toggle="tab" href="#edit">Change Personal information</a>
            <h5>Update Social Media</h5>
            <h6>follow someone</h6>
            <hr>
            <div class="about">
              <h6><strong>About</strong></h6>
              <p style="font-size: 100%;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

              </div>
              <hr>
              <div class="social-media">
                <a href="https://www.facebook.com"><i class="fa fa-facebook-square" style="font-size:24px"></i></a>
                <a href="https://mobile.twitter.com/?lang=en"><i class="fa fa-twitter" style="font-size:24px"></i></a>
                <a href="https://in.linkedin.com/"><i class="fa fa-linkedin-square" style="font-size:24px"></i>
                </a>

              </div>

            </div>

            <!-- </div>  -->
            &nbsp
          </div>

          <!-- left div ends  -->


          <!-- right div -->

          <div class="col-md-9 division2">
          
            &nbsp
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#overview">Overview</a></li>
              <li><a data-toggle="tab" href="#edit">Edit</a></li>

            </ul>

            <div class="tab-content">
              <div id="overview" class="tab-pane fade in active">
                <div class="form-group">
                <h4>Updated Status</h4>
                  <textarea class="form-control" rows="3" placeholder="what's on your mind?"></textarea>
                  <ul class="nav nav-tabs">
                    <li role="presentation"><a href="#"><i class="fa fa-camera"></i></a></li>
                    <li role="presentation"><a href="#"><i class="fa fa-map-marker"></i></a></li>
                    <button type="submit" class="btn btn-primary pull-right">post</button>
                  </ul>
                </div>

                    <!-- timeline start -->
                <h4>Timeline</h4>
                <label>November 2016</label>
                <ul class="timeline">
                  <li>
                    <h6>7 months ago</h6>
                    <p style="font-size: 100%;">its awesome when we find a good solution for our projects. Porto Admin is <a href="#">#awesome</a></p>
                  </li>
                  <hr>
                  <li>
                    <h6>7 months ago</h6>
                    <p style="font-size: 100%;">What is your biggest developer pain point ?</p>
                  </li>
                  <hr>
                  <li>
                    <h6>7 months ago</h6>
                    <p style="font-size: 100%;">checkout! how cool its that..</p>
                  </li>
                  <hr>
                   <li>
                    <h6>9 months ago</h6>
                    <p style="font-size: 100%;">Every developer should have a blog.</p>
                  </li>
                </ul>
              </div>

              <!-- toggle edit tab -->
              <div id="edit" class="tab-pane fade">
                <form action="AddUserController" class="form-horizontal">
                  <h2>Personal Information</h2>
                  <hr>
                  <!-- form starts -->
                  <div class="form-group">
                    <label for="firstName" class="col-sm-2 control-label">First Name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="firstName" placeholder="e.g: john " required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="lastName" class="col-sm-2 control-label">Last Name</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="lastName" placeholder="e.g: doe " required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                      <input type="email" class="form-control" name="email" placeholder="e.g: email@email.com" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">Phone</label>
                    <div class="col-sm-10">
                      <input type="phone" class="form-control" name="phone" placeholder="e.g: 9991299918" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="skills" class="col-sm-2 control-label">Skills</label>
                    <div class="col-sm-10">
                      <textarea class="form-control" name="skills"
                      rows="5" placeholder="Describe your skills"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="Submit" class="btn btn-primary">Submit</button>
                      <button type="Reset" class="btn btn-default">Reset</button>
                    </div>
                  </div>
                </form>
                <hr>
                <!-- forms ends -->

              </div>  
              <!-- edit toggle ends -->
            </div>
            &nbsp
          </div>
          <!-- right div ends  -->

        </div>
      </div>
    </div>
                 <!-- user profile  ends  -->


      </div>
    <!-- /#page-content-wrapper -->        

    <!-- /#wrapper Menu Toggle Script -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script>
      $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
      });
    </script>
  </body> 

  </html>


