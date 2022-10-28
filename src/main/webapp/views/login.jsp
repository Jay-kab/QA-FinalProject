<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>Login Page</title>

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
<br><br><br><br>

	<section class="vh-100">
		<div class="container-fluid h-custom">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<form action="loginUser" method="post">

						<h5 style="color: red">${loginErrorMessage }</h5>
						<h5 style="color: green;">${registrationSuccesssful }</h5>

						<!-- Email input -->
						<div class="form-outline mb-4">
							<input type="text" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter your username" name="username" /> <label
								class="form-label" for="form3Example3">Email</label>
						</div>

						<!-- Drop-down input -->
						<!-- <div class="form-group">
							<label for="exampleFormControlSelect1">User</label> <select
								class="form-control" id="exampleFormControlSelect1">
								<option>Admin</option>
								<option>Employee</option>
							</select>
						</div> -->

						<!-- Password input -->
						<div class="form-outline mb-3">
							<input type="password" id="form3Example4"
								class="form-control form-control-lg"
								placeholder="Enter password" name="password" /> <label
								class="form-label" for="form3Example4">Password</label>
						</div>

						<div class="d-flex justify-content-between align-items-center"></div>



						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>


							<p class="small fw-bold mt-2 pt-1 mb-0">
								Don't have an account? <a href="/signUpPage" class="link-danger">Register</a>
							</p>



						</div>

					</form>
				</div>
			</div>
		</div>

	</section>

	
		<div style="margin-top: 100px; margin-left: 50px"></div>
		<div class="card-footer text-muted">
			<p>
				10 downing street <br> NW1 0SF <br> London, United Kingdom
			</p>
			<h6 style="text-align: center;">Powered by JayCodes</h6>
		</div>
	

</body>
</html>