<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
<link rel="stylesheet" type="text/css" href="/WEB-INF/css/style.css">
</head>
<h1 class="header">
	<center>Ward Details</center>
</h1>

<ul>
  <li><a class="active" href="WardServlet">Home</a></li>
  
  <li><a href="Ward?action=addWardForm">Add Wards</a></li>
    	 
</ul>

<body class="body-style">
	 
		<br>


			<p>
			
			<c:choose>
				<c:when test="${wardList.isEmpty()}">
					<h2>There are no Wards in the database</h2>
				</c:when>

				<c:otherwise>
				<table width="100%" border="1" align="center">
						<tr bgcolor="cyan">
							
							<th>Ward Id</th>
							<th>Department Name</th>
							<th>Ward Name</th>
							
						
						<!-- <td><font size=4><a	href="<c:url value="WardServlet?action=showUpdateForm">
								 <c:param name="wardId" value="${ward.id}"/>
								 </c:url>">Update</a></font></td>
						<td><font size=4><a href="<c:url value="WardServlet?action=delete">
								 <c:param name="wardId" value="${ward.id}"/>
								 </c:url>">Delete</a></font></td>-->
						<c:forEach var="ward" items="${wardList}">
								<tr bgcolor=#D6C2E6>
								<td align="center"><font size=4>${ward.id}</font></td>
								<td align="center"><font size=4>${ward.deptId}</font></td>
								<td align="center"><font size=4>${ward.name}</font></td>
								</tr>
							</c:forEach>
						

						
					</table>
				</c:otherwise>
			</c:choose>

		</p>

	</div>
</body>
</html>