	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
	
	
		   <header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" style="cursor:default">
           
            <h2>Here you will be able to add room</h2>
            </div>

        </div>
        </header>
        
<div class="row row-content">
<div class="container">

	<div class="btn btn-default col-xs-8 col-xs-offset-2" style="cursor:default">Add Room</div>
	<div class="col-xs-12 col-sm-6 col-sm-offset-3">
	<div class="form-group">
	<form class="controlled form" action="Room?action=viewRoom" method="POST">

		<label for="ward" class="col-sm-2 control-label">Ward:</label>
		
		<div class="col-sm-10"><select name="ward" class="form-control">
			<c:forEach var="ward" items="${listOfWards}">
				<option value=${ ward.id }>${ ward.name }</option>
			</c:forEach>
		</select>
		</div>
		<br>

		<label for="type" class="col-sm-2 control-label">Type:</label>
		<div class="col-sm-10"><select name="type" class="form-control">
			<c:forEach var="room" items="${roomsList}">
				<option value=${ room.id }>${ room.roomType }</option>
			</c:forEach>
		</select>
		</div>
		
		<button class="btn btn-default btn-block" style="cursor:default">Submit</button>
	</form>
	</div>
	</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>