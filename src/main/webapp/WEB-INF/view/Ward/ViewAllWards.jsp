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
            What would you like to do?
            <h6>Here you will be able to add, update or delete Wards</h6>
            </div>

        </div>
        </header>
		<br>
<div class="row row-content">

<div class="col-xs-12 btn btn-primary btn-sm">

<c:if test="${message!=null}">
	<button class="btn btn-primary col-sm-offset-5" style="cursor:default"><p><c:out value="${message}" /></p></button>
</c:if>


<ul  class="nav nav-pills">
            <li class="btn btn-primary btn-sm active">  <a  href="#1b" data-toggle="tab"><button type="submit">Wards</button></a></li>
			<li class="btn btn-primary btn-sm"><a href="#2b" data-toggle="tab"><button type="submit">Add Ward</button></a></li>
			<li class="btn btn-primary btn-sm"><a href="#3b" data-toggle="tab"><button type="submit">Update Ward</button></a></li>
			<li class="btn btn-primary btn-sm"><a href="#4b" data-toggle="tab"><button type="submit">Delete Ward</button></a></li>
</ul> 	

<div>

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



<div class="pull-right"><a href="Ward?action=addWardForm"><button type="submit" class="btn btn-primary btn-sm">Add Ward</button></a>




</div>
</div>        
</div>
</div>  

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>

      
