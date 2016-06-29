<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Ward</title>
</head>
<body>
<h1 align ="center">Update ward</h1>

	
	<h2>Updating book -- ${department.name}</h2>
	
	<form action="Ward?action=updateWard" method="POST">
		<input type="hidden" name="wardId" value="${ward.id}">

		<p>
			<input type="text" name="title" value="${book.title}" size="49">
		</p>

		<p>Author:</p>
		<p>
			<input type="text" name="author" value="${book.author}" size="49">
		</p>

		<p>Description:</p>
		<p>
			<textarea rows="5" cols="50" name="description">${book.description}</textarea>
		</p>

		<p>Price:</p>
		<p>
			<input type="text" name="price" value="${book.price}" />
		</p>

		<p>
			<input type="submit" value="Submit" />
		</p>

	</form>
</body>
</html>