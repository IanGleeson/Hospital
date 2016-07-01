<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Add User</title>
	</head>
	<body>
		<header>Add User</header>
		<span class="back"><a href="User">Back</a></span>
		<form action="User?action=addUser" method="post">
			<input type="text" name=username placeholder="Username">
			<input type="text" name=password placeholder="Password">
			<select name="usertype">
				<option value="doctor">Doctor</option>
				<option value="admin">Admin</option>
				<option value="HR">HR</option>
			</select>
			<input type="submit" value="Add">
		</form>
	</body>
</html>