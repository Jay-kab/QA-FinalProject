<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Landing page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<br>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> </a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/">Home
						<span class="sr-only">(current)</span>
				</a></li>
			</ul>

		</div>
	</nav>
	<br>
	<br>

	<h4 style="text-align: center; color: Blue">Enter your Details</h4>


	<form action="register" method="post">
		<div style="margin-left: 500px; margin-right: 500px;" class="form-group">

			<div>
				<label for="exampleInputEmail1">Username</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter username"
					name="username">
			</div>

			<div>
				<label for="exampleInputEmail1">Password</label> <input
					type="password" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter password"
					name="password">
			</div>

			<div>
				<label for="exampleInputEmail1">First Name</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter First Name"
					name="first_name">
			</div>
			<div>
				<label for="exampleInputEmail1">Last Name</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Last Name"
					name="last_name">
			</div>
			<div>
				<label for="exampleInputEmail1">Email</label> <input type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Email Address"
					name="email">
			</div>
			<div>
				<label for="exampleInputEmail1">Department</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter your department"
					name="department">
			</div> 
			<div>
				<label for="exampleInputEmail1">Role</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter your role"
					name="role">
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