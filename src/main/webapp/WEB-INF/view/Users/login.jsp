<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>

		<header></header>
		<form action="User?action=login" method="post">
			Username:<input type="text" name=username placeholder="Username">
			Password:<input type="text" name=password placeholder="Password">
			<input type="submit" value="Log In">
		</form>
		<span name="loginMsg" value=${ failedLogInMsg }></span>
	<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>