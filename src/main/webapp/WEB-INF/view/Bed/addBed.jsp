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
            
            <h6>Here you will be able to add beds</h6>
            </div>

        </div>
        </header>
<div class="row row-content">    
<div class="col-xs-12 btn btn-primary btn-sm">

<ul class="btn btn-group">
  <li class="btn btn-primary btn-sm"><a href="<c:url value="BedServlet?action=viewAll"/>"><button type="submit">View Beds</button></a></li>
  <li class="btn btn-primary btn-sm"><a href="<c:url value="BedServlet?action=showAddForm"/>"><button type="submit">Add Bed</button></a></li>
 <li class="btn btn-primary btn-sm"><a href="BedServlet?action=bedLayout"><button type="submit">Bed Layout</button></a></li>
  
  	  <c:if test="${username != null}">
		<a href="<c:url value="#"/>">Logout</a>
	</c:if>
  
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
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>
