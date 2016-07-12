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
            
            <h2>Here you will be able to update users</h2>
            </div>

        </div>
        </header>

<span class="back"><a href="User">Back</a></span>
<br><br>
Update User
<br>
<form action="User?action=updateUser" method="post">
	<input type="hidden" name=userId value=${ userUpdate.id }> <input
		type="text" name=username value=${ userUpdate.username }> <input
		type="text" name=password value=${ userUpdate.password }> <select
		name="usertype">
		<option value="doctor" ${user.userType == 'DOCTOR' ? 'selected' : ''}>Doctor</option>
		<option value="admin" ${user.userType == 'ADMIN' ? 'selected' : ''}>Admin</option>
		<option value="HR" ${user.userType == 'HR' ? 'selected' : ''}>HR</option>
		<option value="superuser" ${user.userType == 'SUPERUSER' ? 'selected' : ''}>Super User</option>
	</select> <input type="submit" value="Update User">
</form>
<br>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>