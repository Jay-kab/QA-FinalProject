<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <%-- Welcome
		${userData.getFirstName()} ${userData.getLastName()} --%>
				</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">Home</a></li>


			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li><a href="/"><span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li>
			</ul>
		</div>
	</nav>


	<br>

	<h3 style="margin-left: 400px; color: Blue">Check your Details </h3>

	<form action="updateUser" method="post">
		<div style="margin-left: 500px; margin-right: 500px;" class="form-group">

			<div>
				<label for="exampleInputEmail1">Username</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter username"
					name="username" value="${empData.getUsername()}">
			</div>

			<div>
				<label for="exampleInputEmail1">Password</label> <input
					type="password" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter password"
					name="password" value="${empData.getPassword()}">
			</div>

			<div>
				<label for="exampleInputEmail1">First Name</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter First Name"
					name="firstName" value="${empData.getFirst_name()}">
			</div>
			<div>
				<label for="exampleInputEmail1">Last Name</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Last Name"
					name="lastName" value="${empData.getLast_name()}">
			</div>
			<div>
				<label for="exampleInputEmail1">Email</label> <input type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Email Address"
					name="email" value="${empData.getEmail()}">
			</div>
			<div>
				<label for="exampleInputEmail1">Department</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter your department"
					name="department" value="${empData.getDepartment()}">
			</div> 
			<div>
				<label for="exampleInputEmail1">Role</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter your role"
					name="role" value="${empData.getRole()}">
			</div> 
		</div>
		<br>

		<button style="margin-left: 650px" type="submit"
			class="btn btn-primary">Register</button>
		<br> <br>

	</form>


	<div style="margin-top: 500px; margin-left: 50px"></div>
	<div class="card-footer text-muted">
		<p>
			10 downing street <br> NW1 0SF <br> London, United Kingdom
		</p>
		<h6 style="text-align: center;">Powered by JayCodes</h6>
	</div>

</body>
</html>