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
            
            <h2>Here you will be able to add beds</h2>
            </div>

        </div>
        </header>
    
<div id="wrapper">

<ul class="btn btn-group">
  <li><a href="<c:url value="BedServlet?action=viewAll"/>">View Beds</a></li>
  <li><a href="<c:url value="BedServlet?action=showAddForm"/>">Add Bed</a></li>
 <li><a href="BedServlet?action=bedLayout">Layout</a></li>
  <li>
  	  <c:if test="${username != null}">
		<a href="<c:url value="#"/>">Logout</a>
	</c:if>
  </li>
</ul>
<form action="BedServlet?action=showAddForm" method="POST">
<div><h1>Search</h1></div>

<div>Ward</div>
<div>
	<select name="wardOption" id="wardOption" onchange="this.form.submit()">
	  <c:forEach var="ward" items="${wardList}">
		 <option value ="${ward.id}"> ${ward.name}</option>
	  </c:forEach>
	</select>

</div>
<p></p>
<div>Room</div>
<div>
	<select name="roomOption" id="roomOption">
	  <c:forEach var="room" items="${roomList}">
		 <option value ="${room.id}"> ${room.type}</option>
	  </c:forEach>
	</select>

</div>
<p></p>
<div><input type="checkbox" name="occupied" value="True">Is Bed Occupied?<br></div>
<p></p>
<div><input type="submit" value="Add Bed"/></div>


</form>

</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>
