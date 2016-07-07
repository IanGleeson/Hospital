	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
	
	
		<h1 class="header">
			<center>Ward Details</center>
		</h1>
	
		<ul>
	
			<li><font size=4><a href="Ward?action=addWardForm">Add
						Wards</a></li>
	
		</ul>
		<br>
	
	
	<p><c:out value="${message}" />
	
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
							<th>Update Ward</th>
							<th>Delete Ward</th>
	
						</tr>
	
						<c:forEach var="ward" items="${wardList}">
							<tr bgcolor=#D6C2E6>
								<td align="center"><font size=4>${ward.id}</font></td>
	
								<!-- Getting department name from department table  -->
								<td align="center"><font size=4>
										${mapOfDepartment.get(ward.deptId)} </font></td>
	
								<td align="center"><font size=4>${ward.name}</font></td>
	
								<td align="center"><font size=4><a
										href="<c:url value="Ward?action=updateWardForm">
									 	<c:param name="wardId" value="${ward.id}"/>
									 	<c:param name="departmentId" value="${ward.deptId}"/>
									 	</c:url>">Update</a></font></td>
	
								<td align="center"><font size=4><a
										href="<c:url value="Ward?action=delete">
									 	<c:param name="wardId" value="${ward.id}"/>
									 	</c:url>">Delete</a></font></td>
							</tr>
						</c:forEach>
	
	
					</table>
				</c:otherwise>
			</c:choose>
	
		</p>
	
		</div>

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>
