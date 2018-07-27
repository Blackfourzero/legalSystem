<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
	
	<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">

<title>Users</title>
</head>
<body>
	<!-- Image and text -->
	<span class="d-block p-2 bg-dark text-white"><center>Welocme
			to Legal Managament System</center></span>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="home"><strong>LEGAL</strong> </a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarText" aria-controls="navbarText"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="case">Cases</a></li>
			<li class="nav-item"><a class="nav-link" href="document">Documents</a></li>
			<li class="nav-item"><a class="nav-link" href="reminder">Reminder</a></li>
			<li class="nav-item"><a class="nav-link" href="lawyer">Lawyer</a></li>
			<li class="nav-item"><a class="nav-link" href="acts">Acts</a></li>
			<li class="nav-item"><a class="nav-link" href="case-logs">Logs</a></li>
			<li class="nav-item active"><a class="nav-link" href="user">Users</a></li>
		</ul>
		<span class="navbar-text"> <i class="fa fa-user-circle" style="font-size:1.2rem;color:#17a2b8">&nbsp; ${name}</i></span> &nbsp;&nbsp;&nbsp;
		 <a	href="" data-toggle="modal" data-target="#exampleModalCenter"><i
			class="fa fa-sign-out" style="font-size: 30px; color: red"></i></a>

	</div>
	</nav>




	<main class="main"> <!-- Breadcrumb-->
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="home">Dashboard</a></li>
		<li class="breadcrumb-item"><a href="user">All User</a></li>
		<li class="breadcrumb-item"><a href="newuser">Add New</a></li>

	</ol>
	<div class="container-fluid">
		<div class="animated fadeIn">
			<c:choose>
				<c:when test="${mode == 'All_User' }">
					<div class="table-responsive">
						<table id="example" class="table table-striped table-bordered"
							style="width: 100%">
							<caption>All Users</caption>
							<thead class="thead-light">
								<tr style="text-align: center;">
									<th scope="col">#Id</th>
									<th scope="col">Name</th>
									<th scope="col">Username</th>
									<th scope="col">Password</th>								
									<th scope="col">Status</th>
									<th scope="col">Role</th>
									
								</tr>
							</thead>

							<tbody>
								<c:forEach var="user" items="${users }">
									<tr>

										<td>${user.id }</td>
										<td><a href="/viewuser?name=${user.name }">${user.name }</a></td>
										<td>${user.email }</td>
										<td>${user.password }</td>
										<td>${user.active }</td>
										<td></td>
									</tr>
								</c:forEach>

							</tbody>

							<tfoot>
								<tr style="text-align: center;">
									<th scope="col">#Id</th>
									<th scope="col">Name</th>
									<th scope="col">Username</th>
									<th scope="col">Password</th>
									<th scope="col">Status</th>
									<th scope="col">Role</th>
									
								</tr>
							</tfoot>
						</table>
					</div>
					<!--/.row-->
				</c:when>
				<c:when test="${mode == 'New_User'}">
					<div class="row">
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<strong>Add User</strong> Details
								</div>
								<div class="card-body">
									<form action="save-user" method="POST"
										class="form-horizontal">
										
										<div class="form-group row">
											<label class="col-md-3 col-form-label" for="text-input">User's Name:
												</label>
											<div class="col-md-9">
												<input type="text"
														class="form-control" id="name"
														 name="name"
														value="${user.name}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-3 col-form-label" for="text-input">Email-Id/Username: 
												</label>
											<div class="col-md-9">
												<input type="text"
														class="form-control" id="email"
														 name="email"
														value="${user.email}">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-3 col-form-label" for="text-input">Password: 
												</label>
											<div class="col-md-9">
												<input type="password"
														class="form-control" id="password"
														 name="password"
														value="${user.password}">
											</div>
										</div>
																
                                     <div class="row">
																				
												<div class="form-group form-group col-sm-6">
													<label for="time">Status <span style="color:  red; font-weight:  bolder;">*</span></label> <div>
												<input type="text"
														class="form-control" id="active"
														 name="active"
														value="${user.active }">
											      </div>
												</div>
												
												<div class="form-group form-group col-sm-6">
												
													<label for="date">Role</label> <div >
												<select class="form-control" id="ccyear" name="type"
													>
													<option>--SELECT--</option>
													<option>User</option>
													<option>Admin</option>
													
												</select>
											</div>
											</div>
											
										</div><hr>
                                       <p style="color:  #dc3545;">  <span style="color:  red; font-weight:  bolder;">*</span>Enter 1 for active & 0 for not active</p>


										<div class="card-footer">
											<button type="submit" class="btn btn-sm btn-primary"
												data-toggle="modal" data-target="#exampleModal">
												<i class="fa fa-dot-circle-o"></i> Submit
											</button>
											<button type="reset" class="btn btn-sm btn-danger">
												<i class="fa fa-ban"></i> Reset
											</button>
										</div>
									</form>
								</div>
							</div>
							<!--/.col-->
						</div>
						<!--/.row-->
						<!--/.row-->
						<!--/.row-->
						<!--/.row-->
					</div>
				</c:when>
				<c:when test="${mode == 'View_User'}">
					<div class="row">
						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<strong> Update user</strong> Details
								</div>
								<div class="card-body">
									<form action="save-user" method="POST"
										class="form-horizontal">
										<input type="hidden" class="form-control" id="id"
														 name="id"
														value="${user.id}" >
										<div class="form-group row">
											<label class="col-md-3 col-form-label" for="text-input">User's Name:
												</label>
											<div class="col-md-9">
												<input type="text"
														class="form-control" id="name"
														 name="name"
														value="${user.name}" >
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-3 col-form-label" for="text-input">Email-Id/Username: 
												</label>
											<div class="col-md-9">
												<input type="text"
														class="form-control" id="email"
														 name="email"
														value="${user.email}" >
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-3 col-form-label" for="text-input">Password: 
												</label>
											<div class="col-md-9">
												<input type="password"
														class="form-control" id="password"
														 name="password"
														value="${user.password}">
											</div>
										</div>
																
                                     <div class="row">
										
											
										
											
												<div class="form-group form-group col-sm-6">
													<label for="time">Status <span style="color:  red; font-weight:  bolder;">*</span></label> <div>
												<input type="text"
														class="form-control" id="active"
														 name="active"
														value="${user.active }">
													
													
											      </div>
												</div>
												
												<div class="form-group form-group col-sm-6">
											
												
													<label for="date">Role</label> <div >
												<select class="form-control" id="ccyear" name="type"
													>
													<option>--SELECT--</option>
													<option>User</option>
													<option>Admin</option>
													
												</select>
											</div>
											</div>
											
										</div>
                                       <p style="color:  #dc3545;">  <span style="color:  red; font-weight:  bolder;">*</span>Enter 1 for active & 0 for not active</p>



										<div class="card-footer">
											<button type="submit" class="btn btn-sm btn-primary"
												data-toggle="modal" data-target="#exampleModal">
												<i class="fa fa-dot-circle-o"></i> Update
											</button>
											
										</div>
									</form>
								</div>
							</div>
							<!--/.col-->
						</div>
						<!--/.row-->
						<!--/.row-->
						<!--/.row-->
						<!--/.row-->
					</div>
				</c:when>
			</c:choose>
		</div>
	</div>
	</main>


	<br>

	<!-- Image and text -->
	<span class="d-block p-2 bg-dark text-white"><center>
			&copy; 2018, DCM Textiles</center></span>
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Logging
						Out!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Are you sure you want to Logout?</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">No</button>
					<a href="logout">
						<button type="button" class="btn btn-primary">Yes</button>
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
		<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
		<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
</body>
</html>