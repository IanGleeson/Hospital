<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<header>Add User</header>
		<form action="UserServlet?action=addUser" method="post">
			<input type="text" name=user placeholder="Username">
			<input type="text" name=pass placeholder="Password">
			<input type="text" name=name placeholder="Name">
			<select>
				<option value="doctor">Doctor</option>
				<option value="admin">Admin</option>
				<option value="HR">HR</option>
			</select>
			<input type="submit" value="Add">
		</form>
	</body>
</html>