<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <div class="col-xs-12">  
	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h1>View Department</h1>
			<h2>There are no Department to Display</h2>
		</c:when>
		<c:otherwise>

<h1>Delete Department</h1>		
<form class="form-horizontal" action="Department?action=deleteDepartment" method="post" role="form">
                        <div class="col-sm-4">
                            <select class="form-control" name="deptId">
							<c:forEach var="department" items="${listOfDepartment}">
							  <option value="${department.id}">${department.name}</option>
							</c:forEach>
                            </select>
                        </div>

                <div class="btn btn-primary col-sm-offset-3"  role="group">
                    <button type="button" class="btn btn-warning btn-sm">Are you sure you want to delete the above Department</button> <br>
                    <button type="submit" class="btn btn-success btn-lg">Yes</button>
                    <button type="reset" class="btn btn-danger btn-lg">No</button>
                </div>
   
</form>		

		</c:otherwise>
	</c:choose>
</div>	
