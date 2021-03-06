<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>


    
   

  
   <header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" type="button" style="cursor:default">
            What would you like to do?
            <h6>Here you will be able to add, update or delete Departments</h6>
            </div>

        </div>
        </header>
    
      

    
<p style="color:red;">  <c:out value="${message}"/> </p> 
   
<div id="tab1">  
<div class="row row-content">
        <ul  class="nav nav-pills">
            <li class="${viewAll}">  <a  href="#1b" data-toggle="tab">Hospital Layout</a></li>
            <li class="${viewDepartment}">  <a  href="#2b" data-toggle="tab">Departments</a></li>
			<li class="${addDepartment}">  <a  href="#3b" data-toggle="tab">Add Department</a></li>
			<li class="${editDepartment}"><a href="#4b" data-toggle="tab">Update Department</a></li>
			<li class="${deleteDepartment}"><a href="#5b" data-toggle="tab">Delete Department</a></li>
		</ul>

<div class="tab-content clearfix">
<div class="tab-pane ${viewAll}" id="1b">
	  
<jsp:include  page="ViewAllDepartments.jsp"></jsp:include>  

</div>

<div class="tab-pane ${viewDepartment}" id="2b">
	  
<jsp:include  page="ViewDepartment.jsp"></jsp:include>  

</div>
                
<div class="tab-pane ${addDepartment}" id="3b">

<jsp:include  page="AddDepartment.jsp"></jsp:include>

</div>
                
<div class="tab-pane ${editDepartment}" id="4b">

<jsp:include  page="UpdateDepartment.jsp"></jsp:include>

</div>
                
 

<div class="tab-pane ${deleteDepartment}" id="5b">

<jsp:include  page="DeleteDepartment.jsp"></jsp:include>
	
</div>               
                
    </div>
</div>
            
</div>  
 

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>



