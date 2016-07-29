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
            <h6>Here you will be able to View Doctors by Department ID</h6>
        </div>

        </div>
        </header>
 
<div class="row row-content">
<h2>View Doctors by Department ID</h2>
<p>
<form action="DoctorServlet?action=getDoctorDetailsByDepartment" method = "POST">
<label>Department ID</label>
<p>
<input type = "text" name="deptId">
</p>
<p>
<input type = "submit" value="SUBMIT">
</p>



</form>
</div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>