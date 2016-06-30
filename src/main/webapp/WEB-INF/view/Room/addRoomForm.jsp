<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<h2>Add Room</h2>

	<form action="Room?action=viewRoom" method="POST">

		<p>Ward:</p>
		 <select name="ward" onchange="${room.ward}">
        	<option value="dropdown">Please select one
        	<option value="belle">Belle
        	<option value="sarabi">Sarabi
        	<option value="pocahontas">Pocahontas
        	<option value="aladdin">Aladdin
        	<option value="demetrius">Demetrius
        	<option value="rapunzel">Rapunzel
        	<option value="hercules">Hercules
        	<option value="aurora">Aurora
    	</select>
    	
		<p>Type:</p>
		<select name="type" onchange="${room.type}">
        	<option value="dropdown">Please select one
        	<option value="public">Public
        	<option value="semiPrivate">Semi-Private
        	<option value="private">Private
        	<option value="dayroom">Dayroom
    	</select>

		<p>
			<input type="submit" value="Submit" />
		</p>
	</form>
</body>
</html>