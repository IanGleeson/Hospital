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
            <h6>Here you will be able to update doctor's details</h6>
        </div>

        </div>
        </header>
<div class="row row-content">
<h2>Update a Doctor</h2>
<form action="DoctorServlet?action=updateDoctor" method="POST">
	<p>First Name</p>
	<input type="text" name="firstName" value="${doctor.firstName}"></p> 
	
	<p>Last Name</p>
	<input type="text" name="lastName" value="${doctor.lastName}"></p>
	
	<p>Gender</p> 
	<p><input type="text" name="gender" value="${doctor.gender}"S></p> 
	
	<p>Address</p> 
	<p><textarea rows="8" cols="50" name="address">${doctor.address}</textarea></p> 

	<p>Phone Number</p> 
	<p><input type="text" name="phoneNumber" value="${doctor.phoneNumber}"/></p>
	
	<p>Qualification</p> 
	<p><input type="text" name="qualification" value="${doctor.qualification}"/></p>
	
	<p>Department Id</p> 
	<p><input type="text" name="deptId" value="${doctor.deptId}"/></p>
	
	
	 
	<p><input type="submit" value="UPDATE DOCTOR"/></p> 
</form>
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>