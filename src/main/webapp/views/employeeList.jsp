<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*, com.jay.entity.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<a class="navbar-brand" href="#"> </a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">Home</a></li>
				
				<!-- <li><a href="#">Apply for leave</a></li>
				<li><a href="#">Leave Request</a></li> -->

			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li><a href="/"><span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li>
			</ul>
		</div>
	</nav>

	<br>

	<h2>View Employees</h2>
	<br>
	<br>

	<%
	List<Employee> emps = (List<Employee>) request.getAttribute("allEmployees");
	%>

	<table class="table table-success table-striped">
		<thead>
			<tr>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Email</th>
				<th scope="col">Department</th>
				<th scope="col">Edit</th>
				<th scope="col">Delete</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < emps.size(); i++) {
			%>
			<tr>
				<td><%=emps.get(i).getFirst_name()%></td>
				<td><%=emps.get(i).getLast_name()%></td>
				<td><%=emps.get(i).getEmail()%></td>
				<td><%=emps.get(i).getDepartment()%></td>
				<td><a href="/delete/<%=emps.get(i).getUsername()%>">delete</a></td>
				<td><a href="/update/<%=emps.get(i).getUsername()%>">update</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	
	
	<div style="margin-top: 500px; margin-left: 50px"></div>
	<div class="card-footer text-muted">
		<p>
			10 downing street <br> NW1 0SF <br> London, United Kingdom
		</p>
		<h6 style="text-align: center;">Powered by JayCodes</h6>
	</div>

</body>
</html>