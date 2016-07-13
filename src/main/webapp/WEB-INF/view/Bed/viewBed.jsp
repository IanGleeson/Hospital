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
            
            <h2>Here you will be able to view, and add beds</h2>
            </div>

        </div>
        </header>

<div id="wrapper">

<div class="row row-content">
<ul>
  <li  class="btn btn-primary"><a href="<c:url value="BedServlet?action=viewAll"/>">View Beds</a></li>
  <div  class="btn btn-primary btn-sm"><a href="<c:url value="Ward?action=delete"><c:param name="wardId" value="${ward.id}"/></c:url>"><button type="submit">delete</button></a>
</div>
 
  
  <div class="btn btn-primary btn-sm"><a href="<c:url value="BedServlet?action=showAddForm"/>">Add Bed</a></div>
  
  
  <li ><a href="BedServlet?action=bedLayout">Layout</a></li>
  
  <div  class="btn btn-primary btn-sm"><a href="<c:url value="Ward?action=delete"><c:param name="wardId" value="${ward.id}"/></c:url>"><button type="submit">delete</button></a>
</div>
  	  <c:if test="${username != null}">
		<a href="<c:url value="#"/>">Logout</a>
	</c:if>
 
</ul>


<c:choose>
		<c:when test="${bedsList.isEmpty()}">
			<h2>There are no beds in the database</h2>
		</c:when>
		<c:otherwise>
		<table class="table">
				<tr><th>Bed Id</th><th>Room Id</th><th>Occupied</th><th>Delete</th><th>Update</th></tr>
				<c:forEach var="bed" items="${bedsList}">
					<tr>
						<td>${bed.id}</td>
						<td>${bed.roomId}</td>
						<td>${bed.occupied}</td>
						<td bgcolor="lightgreen">
						<a href="<c:url value="BedServlet?action=delete">
								 <c:param name="bedId" value="${bed.id}"/>
								 </c:url>">Delete</a>
						</td>
						<td bgcolor="lightgreen">
						<a href="<c:url value="BedServlet?action=showUpdateForm">
								 <c:param name="bedId" value="${bed.id}"/>
								 </c:url>">Update</a>
						</td>
					</tr>
				</c:forEach>

		</table>				


		</c:otherwise>

</c:choose>
</div>
</div>

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>