<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
	
	
		   <header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" type="button" style="cursor:default">
           
            <h6>Here you will be able to update Wards</h6>
            </div>

        </div>
        </header>
<div class="row row-content">

<div class="col-xs-12 btn btn-primary btn-sm">
<h1 align ="center">Update ward</h1>

	
	<h4>Updating Ward -- ${ward.name}  in ${departmentName} -- Department</h4>
	
	<h2> Update Ward Details</h2>
		<form action="Ward?action=updateWard" method="POST">
		<input type="hidden" name="wardId" value="${ward.id}">

		<p>Ward Name:</p>
		<p>
			<input type="text" name="wardName" value="${ward.name}" size="49">
		</p>

		<p>Department:</p>
		<p>
 
 		
			<select name="selectOption">
	  			<c:forEach var="department" items="${departmentList}">
		 			<option value ="${department.id}" 
		 			<c:if test="${ward.deptId==department.id}">selected	</c:if> > ${department.name}</option>
	  			</c:forEach>
			</select>

		</p>
	

		<p>
			<input class="btn btn-primary btn-sm" type="submit" value="Submit" />
		</p>

	</form>
	</div>
	</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>