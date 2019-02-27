<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="commons/header.jsp"%>


<div class="team2container" style="margin-top: 108px;padding: 3%;">

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
		
			<select class="g2-dropdown">
					<option>1</option>
					<option>2</option>
			</select>
				
			<h5>records per page</h5>

			<input type="text" id="myInput" onkeyup="myFunction()"
				placeholder="  Search" title="Type in a name">
		</div>
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
		<h5>Showing result 1 to 5 of 5 entries</h5>
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
		
		
		
</div>
</body>
</html>