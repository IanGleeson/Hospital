<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Update User</title>
	</head>
	<body>
		<header>Update User</header>
		<form action="UserServlet?action=updateUser" method="post">
			<input type="text" name=user value=${ user.username }>
			<input type="text" name=pass value=${ user.password }>
			<input type="text" name=name value=${ user.name }>
			<select>
				<option value="doctor">Doctor</option>
				<option value="admin">Admin</option>
				<option value="HR">HR</option>
			</select>
			<input type="submit" value="Add">
		</form>
	</body>
</html>