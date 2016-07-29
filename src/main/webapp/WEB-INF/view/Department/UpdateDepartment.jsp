<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h4>View Department</h4>
			<h6>There are no Department to Display</h6>
		</c:when>
		<c:otherwise>
<h4>Update Department</h4>	
 <div class="col-xs-12">	
<form class="form-horizontal" role="form" action="Department?action=editDepartment" method="post">
<label for="Deptname" class="col-sm-2 control-label">Department:</label>
 <div class="col-sm-4">
<select name="deptId" class="form-control">
<c:forEach var="department" items="${listOfDepartment}">
  <option value="${department.id}">${department.name}</option>
</c:forEach>
</select>
</div>
<label for="Deptname" class="col-sm-2 control-label">Change to: </label> 
 <div class="col-sm-4">
  <input type="text" name="Departmentname" required >
  </div>
  <br><br><br><br>
                  <div class="btn btn-primary col-sm-offset-3"  role="group">
                    <button type="button" class="btn btn-warning btn-sm">Are you sure you want to Update Department</button> <br>
                    <button type="submit" class="btn btn-success btn-sm">Yes</button>
                    <button type="reset" class="btn btn-danger btn-sm">No</button>
                </div>
</form>	
</div>
		</c:otherwise>
	</c:choose>

    