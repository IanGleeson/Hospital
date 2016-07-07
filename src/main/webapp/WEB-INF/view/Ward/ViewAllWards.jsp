	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
	
	
		   <header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" type="button">
            What would you like to do?
            <h2>Here you will be able to add, update or delete Wards</h2>
            </div>

        </div>
        </header>
		<br>

<p><c:out value="${message}" />		

        
<div class="row row-content">
<div class="container"  id="tab1">
<div class="tab-content clearfix">
<div class="tab-pane active" id="1b">
<div class="col-xs-12">
<div class="table-responsive">
<!-- 
<ul  class="nav nav-pills">
            <li class="active">  <a  href="#1b" data-toggle="tab">Wards</a></li>
			<li>  <a  href="#1b" data-toggle="tab">Add Ward</a></li>
			<li><a href="#1b" data-toggle="tab">Update Ward</a></li>
			<li><a href="#1b" data-toggle="tab">Delete Ward</a></li>
		</ul> -->		
	
		<p>
		
			<c:choose>
				<c:when test="${wardList.isEmpty()}">
					<h2>There are no Wards in the database</h2>
				</c:when>
	
<c:otherwise>
<table class="table">
<thead>
<tr>
<th><span class="badge">Ward ID</span></th>
<th><span class="badge">Dept Name</span></th>
<th><span class="badge">Ward Name</span></th>
<th><span class="badge">Update Ward</span></th>
<th><span class="badge">Delete Ward</span></th>
</tr>
</thead>
<tbody>
			
						<c:set var="count" value="1" scope="page" />
						
						<c:forEach var="ward" items="${wardList}">
							<tr>
								<%-- <td align="center"><font size=4>${ward.id}</font></td> --%>
								<td scope="row"><c:out value="${count}"/><c:set var="count" value="${count + 1}" scope="page"/></td>
	
								<!-- Getting department name from department table  -->
								<td ><font size=4>
										${mapOfDepartment.get(ward.deptId)} </font></td>
	
								<td ><font size=4>${ward.name}</font></td>
	
								<td >
								<div  class="btn btn-primary btn-sm"><a href="<c:url value="Ward?action=updateWardForm">
								<c:param name="wardId" value="${ward.id}"/><c:param name="departmentId" value="${ward.deptId}"/>
								</c:url>"><button type="submit">update</button></a></div>
								</td>
								
								<td>							
								<div  class="btn btn-primary btn-sm"><a href="<c:url value="Ward?action=delete"><c:param name="wardId" value="${ward.id}"/></c:url>"><button type="submit">delete</button></a>
								</div></td>
							</tr>
						</c:forEach>
	
	</tbody>
					</table>
				</c:otherwise>
			</c:choose>
	
		</p>

</div>
</div>
</div>
<div class="pull-right"><a href="Ward?action=addWardForm"><button type="submit" class="btn btn-primary btn-sm">Add Ward</button></a>




</div>
</div>        
</div>
</div>  

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>

      
