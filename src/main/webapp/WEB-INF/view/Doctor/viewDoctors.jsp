<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
		<header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" style="cursor:default">
            <h6>Here you will be able to view all doctors</h6>
        </div>

        </div>
        </header>
 <div class="row row-content">

	<header>
	<h1>View all Doctors</h1>
	</header>


<div class="container"></div>
<div class="row row-content"></div>

<c:if test="${empty listOfDoctors}"> There are no entries in the database!
</c:if>
<c:if test="${not empty listOfDoctors}">
	
		</c:if>
			<table>


		<thead>
			<tr>
				<th>id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Address</th>
				<th>Phone Number</th>
				<th>Qualifications</th>
				<th>Department Id</th>
			</tr>
		</thead>
		<tbody>
			<forEach var="doctor" items="${listOfDoctors}">
			<tr>
				<td>${doctor.id}</td>
				<td>${doctor.firstName}</td>
				<td>${doctor.lasttName}</td>
				<td>${doctor.gender}</td>
				<td>${doctor.address}</td>
				<td>${doctor.phoneNumber}</td>
				<td>${doctor.qualification}</td>
				<td>${doctor.deptId}</td>
			</forEach>

		</tbody>

	</table>
	<a href="<c:url value="DoctorServlet?action=showInsertForm"/>"> Add
		a Doctor</a>

	<a href="<c:url value="DoctorServlet?action=showUpdateForm"/>">
		Update a Doctor</a>
		</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>