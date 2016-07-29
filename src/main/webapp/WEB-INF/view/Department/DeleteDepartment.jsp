<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <div class="col-xs-12">  
	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h4>View Department</h4>
			<h6>There are no Department to Display</h6>
		</c:when>
		<c:otherwise>

<h4>Delete Department</h4>		
<form class="form-horizontal" action="Department?action=deleteDepartment" method="post" role="form">
                        <div class="col-sm-6 col-sm-offset-3">
                            <select class="form-control" name="deptId">
							<c:forEach var="department" items="${listOfDepartment}">
							  <option value="${department.id}">${department.name}</option>
							</c:forEach>
                            </select>
                        </div>
                        <br><br><br><br>

                <div class="btn btn-primary col-sm-offset-3"  role="group">
                    <button type="button" class="btn btn-warning btn-sm">Are you sure you want to delete the above Department</button> <br>
                    <button type="submit" class="btn btn-success btn-sm">Yes</button>
                    <button type="reset" class="btn btn-danger btn-sm">No</button>
                </div>
   
</form>		

		</c:otherwise>
	</c:choose>
</div>	