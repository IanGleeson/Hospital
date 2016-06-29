<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Update User</title>
	</head>
	<body>
		<header>Update User</header>
		<span class="back"><a href="User">Back</a></span>
		<form action="User?action=updateUser" method="post">
			<input type="text" name=username value=${ user.username }>
			<input type="text" name=password value=${ user.password }>
			<select name="usertype">
				<option value="doctor" ${"DOCTOR" == user.userType ? 'selected' : ''}>Doctor</option>
				<option value="admin" ${"ADMIN" == user.userType ? 'selected' : ''}>Admin</option>
				<option value="HR" ${"HR" == user.userType ? 'selected' : ''}>HR</option>
			</select>
			<input type="submit" value="Update">
		</form>
	</body>
</html>