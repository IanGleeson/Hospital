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
            
            <h6>Here you will be able view rooms</h6>
            </div>

        </div>
        </header>
        
 <div class="row row-content">
<div class="col-xs-12 col-md-10 col-md-offset-1 btn btn-primary btn-sm">

	<c:choose>
		<c:when test="${roomsList.isEmpty()}">
			<h2>There are no rooms in the database</h2>
		</c:when>
		<c:otherwise>
			<table class="table">
			<thead>
				<tr>
					<th>Room Id</th>
					<th>Ward Id</th>
					<th>Type</th>
				</tr>
				</thead>
				<c:forEach var="room" items="${roomsList}">
					<tr>
						<td>${room.id}</td>
						<td>${room.roomType}</td>
						<td bgcolor="amber">
						<a class="btn btn-primary btn-sm" href="<c:url value="Room?action=deleteRoom">
								 <c:param name="roomId" value="${room.id}"/>
								 </c:url>">Delete Room</a>
						</td>
						<td bgcolor="green">
						<a class="btn btn-primary btn-sm" href="<c:url value="Room?action=addRoom">
								 <c:param name="roomId" value="${room.id}"/>
								 </c:url>">Add Room</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
	</div>
	</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>