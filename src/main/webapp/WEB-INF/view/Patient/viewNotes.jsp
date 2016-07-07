<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/view/Index/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
<h1>Notes for ${patient.forename} ${patient.surname}</h1>
          <table>
				<tr>
					<th>Date</th>
					<th>Note</th>
				</tr>	
				<c:forEach var="note" items="${patientNotes}" varStatus="count">
					<tr>
						<td>${formattedNoteDateList[count.index]}</td>
						<td>${note.content}</td>
				    </tr>	
				   </c:forEach>
		  </table> 	
   
<jsp:include page="/WEB-INF/view/Index/footer.jsp" ></jsp:include>