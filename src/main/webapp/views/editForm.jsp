<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3 style="text-align:center; color: Blue"> Please confirm details and Update</h3>

	<form action="register" method="post">
		<div style="margin-left: auto; margin-right: auto;"
			class="form-group">
			<div>
				<label for="exampleInputEmail1">Username</label> <input type="text"
					class="form-control" placeholder="Enter Username" name="username" value="${employeeData.getUsername()}">
			</div>
			
			<div>
				<label for="exampleInputEmail1">First Name</label> <input
					type="text" class="form-control" placeholder="Enter First Name" name="firstName" value="${employeeData.getFirstName() }">
			</div>
			<div>
				<label for="exampleInputEmail1">Last Name</label> <input type="text"
					class="form-control" placeholder="Enter Last Name" name="lastName" value="${employeeData.getLastName()}">
			</div>
			<div>
				<label for="exampleInputEmail1">Email</label> <input type="email"
					class="form-control" placeholder="Enter Email Address" name="email" value="${employeeData.getEmail()}">
			</div>
			<div>
				<label for="exampleInputEmail1">Department</label> <input type="text"
					class="form-control" placeholder="Enter Email Address" name="email" value="${employeeData.getDepartment()}">
			</div>
			<div>
				<label for="exampleInputEmail1">Role</label> <input type="hidden"
					class="form-control"  name="email" value="${employeeData.getRole()}">
			</div>
		</div><br>
		<button style="margin-left: 600px" type="submit"
			class="btn btn-primary">Update</button>
		<br>
</form>
</body>
</html>