<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>

<p style="color:red;"><c:out value="${message}"/></p>

<!--  
<h1>Add Department</h1>


<form action="Department?action=addDepartment" method="post">
  Department Name:  <input type="text" name="Departmentname" >
   <input type="submit" value="Add Department">
</form>


	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h1>View Department</h1>
			<h2>There are no Department to Display</h2>
		</c:when>
		<c:otherwise>
<h1>Update Department</h1>		
<form action="Department?action=editDepartment" method="post">
<select name="deptId">
<c:forEach var="department" items="${listOfDepartment}">
  <option value="${department.id}">${department.name}</option>
</c:forEach>
</select>
  Change to Department Name:  <input type="text" name="Departmentname" >
   <input type="submit" value="Update Department">
</form>	

<h1>Delete Department</h1>		
<form action="Department?action=deleteDepartment" method="post">
<select name="deptId">
<c:forEach var="department" items="${listOfDepartment}">
  <option value="${department.id}">${department.name}</option>
</c:forEach>
</select>
   <input type="submit" value="Delete Department">
</form>		
<h1>View Department</h1>
			<table>
				<tr><th>No:</th><th>Department Name</th><th>Ward Names</th></tr>
				<c:forEach var="department" items="${listOfDepartment}">
					<tr>
						<td>${department.id}</td>
						<td>${department.name}</td>					
                        <td>${mapOfWards.get(department.id)}</td>	
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 -->
<nav class="navbar navbar-inverse " role="navigation">
   <div class="container">
       <div class="navbar-header">
           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
           </button>
           <a class="navbar-brand" href="index.html">Hospital Management Application</a>
       </div>
       <div id="navbar" class="nav navbar-nav navbar-collapse collapse pull-right">
           <a type="button" class="btn btn-info-outline">Welcome</a>
           <a type="button" class="btn btn-success">Super User</a>
           <a type="button" class="btn btn-primary " href="log-out.html"><span class="glyphicon glyphicon-user"></span>Log-Out</a>
       </div>
       </div>
   </nav>
<header class="jumbotron">
   <div class="container">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" type="button">
            What would you like to do?
            <h2>Here you will be able to add, update or delete Departments</h2>
            </div>

        </div>
       </div>
      
</header>
    
       
    <div id="tab1" class="container">  


<div class="row row-content">
<ul  class="nav nav-pills">
            <li class="active">  <a  href="#1b" data-toggle="tab">Departments</a></li>
			<li>  <a  href="#2b" data-toggle="tab">Add Department</a></li>
			<li><a href="#3b" data-toggle="tab">Update Department</a></li>
			<li><a href="#4b" data-toggle="tab">Delete Department</a></li>
		</ul>

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1b">
	  
	  


	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h1>View Department</h1>
			<h2>There are no Department to Display</h2>
		</c:when>
		<c:otherwise>
<h1>Department List</h1>
<div class="table-responsive">
<table class="table">
<thead>
<tr>
<th>No</th>
<th><span class="badge">Department Name</span></th>
<th><span class="badge">Ward Names</span></th>
</tr>
</thead>
<tbody>
<tr>
<c:set var="count" value="1" scope="page" />
<c:forEach var="department" items="${listOfDepartment}">
					<tr>
					    <th scope="row"><c:out value="${count}"/><c:set var="count" value="${count + 1}" scope="page"/></th>
						<td>${department.name}</td>					
                        <td>${mapOfWards.get(department.id)}</td>	
					</tr>
</c:forEach>
</tbody>
</table>

</div>
			</c:otherwise>
	</c:choose>
	
</div>
                
<div class="tab-pane" id="2b">
<h1>Add Department</h1>
 <div class="col-xs-12">
<form class="form-horizontal" role="form" action="Department?action=addDepartment" method="post">
 <div class="form-group">
<label for="Deptname" class="col-sm-2 control-label">Department Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="Deptname" name="Departmentname" required>
                        </div>
             </div>            
                    <div class="pull-right">
                            <button type="submit" class="btn btn-primary btn-lg">Add Department</button>
                    </div>
</form>
</div>

				</div>
                
<div class="tab-pane" id="3b">


	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h1>View Department</h1>
			<h2>There are no Department to Display</h2>
		</c:when>
		<c:otherwise>
<h1>Update Department</h1>	
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
                  <div class="btn btn-primary col-sm-offset-3"  role="group">
                    <button type="button" class="btn btn-warning btn-sm">Are you sure you want to Update Department</button> <br>
                    <button type="submit" class="btn btn-success btn-lg">Yes</button>
                    <button type="reset" class="btn btn-danger btn-lg">No</button>
                </div>
</form>	
</div>
		</c:otherwise>
	</c:choose>


                </div>
                
   <div class="tab-pane" id="4b">
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
	
   </div>             
                
    </div>
</div>
            
</div>  
 

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>



