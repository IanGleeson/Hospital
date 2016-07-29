<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>
		<header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" style="cursor:default">
            <h6>Here you will be able to search for doctor by Id</h6>
        </div>

        </div>
        </header>
<div class="row row-content">
	<form action="DoctorServlet?action=getDoctorDetailsById" method="POST">
		<h2>Search for Doctor by Id</h2>
		<label>DoctorId</label> <input type="text" name="doctorId"> <input
			type="submit" value="Submit">
	</form>
	</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>