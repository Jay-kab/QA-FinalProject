<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@ page import="java.util.*, com.jay.entity.Employee" %> --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>
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
				<a class="navbar-brand" href="#"> Welcome
		${empData.getFirst_name() } ${empData.getLast_name() } </a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">Home</a></li>
				<li><a href="/signUpPage">Add Employee</a></li>
				<li><a href="/employeeListPage">Employee List</a></li>
				
				
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li><a href="/"><span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li>
			</ul>
		</div>
	</nav>


	<div style="margin-top: 500px; margin-left: 50px"></div>
	<div class="card-footer text-muted">
		<p>
			10 downing street <br> NW1 0SF <br> London, United Kingdom
		</p>
		<h6 style="text-align: center;">Powered by JayCodes</h6>
	</div>

</body>
</html>