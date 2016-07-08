<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/superUserMenu.jsp"></jsp:include>


<header class="jumbotron">
    <div class="row row-header">
        <div class="col-xs-12 btn btn-primary btn-block" type="button">
            What would you like to do?
            <h2>Here you will be able to add Wards</h2>
            </div>

        </div>
</header>
 
 <div>&nbsp;</div>

 <div class="container">
 <div class="row row content col-sm-12">
  <div class="col-xs-6 col-sm-offset-3"> 
        <div class="panel panel-primary">
             <div class="panel-heading">
                  <h3 class="panel-title">Add Ward Form</h3>
             </div>
                  
                    <div class="panel-body">
  <form class="form-horizontal" role="form" action="Ward?action=addWard" method="post">
						<select name="selectOption" class="form-control">
	  						<c:forEach var="department" items="${departmentList}">
		 					<option value ="${department.id}"> ${department.name}</option>
	  						</c:forEach>
							</select>
							<div>&nbsp;</div>
					<div><p><input class="form-control" type = "text" name="wardName" placeholder="Ward Name" required></p></div>
	<input type="submit" value="Add Ward"/>
	</div>
</form>      
                   
                    </div>
        </div>
</div>
</div>

<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>

