<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a New Ward</title>
</head>
<body>
<h1 align ="center">Add a new ward</h1>
<form action="Ward?action=addWard" method="post">
	<select name="selectOption">
		<option value ="1">Cardiology</option>
	</select>
	<p>Ward Name</p>
	<p><input type = "text" name="wardName" placeholder="Ward Name" required></p>
	<input type="submit" value="Add Ward"/>
</form>
</body>
</html>