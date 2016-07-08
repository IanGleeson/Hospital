<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	<c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h1>View Department</h1>
			<h2>There are no Department to Display</h2>
		</c:when>
		<c:otherwise>
<h1>Department List</h1>
<div class="table-responsive">
<table class="table">
<thead>
<tr>
<th>No</th>
<th><span class="badge">Department Name</span></th>
<th><span class="badge">No: Wards</span></th>
<th><span class="badge">Ward Names</span></th>
</tr>
</thead>
<tbody>
<tr>
<c:set var="count" value="1" scope="page" />
<c:forEach var="department" items="${listOfDepartment}">
					<tr>
					    <th scope="row">
					      <c:out value="${count}"/>
					      <c:set var="count" value="${count + 1}" scope="page"/>
					    </th>
					    
						<td>${department.name}</td>	
						<td>${department.wards.size()}</td>				
                        <td><c:forEach var="ward" items="${department.wards}" varStatus="loop"> 
                        	${ward.name}-- Rooms(${ward.rooms.size()})
                        	<br/>--------------------------------------<br/>
                        	
                            <c:forEach var="room" items="${ward.rooms}" varStatus="loop2"> 
                            
                        	${room.type==3 ? 'Private' : room.type==1 ? 'Public' : room.type==2 ? 'Semi-Private' : ''} --No: Beds (${room.beds.size()})--<c:forEach var="bed" items="${room.beds}" varStatus="loop3"> ${bed.occupied?'Occupied':'Free'} ${!loop3.last ? ', ' : ''} </c:forEach>                        	                       	
                        	  
                        	${!loop2.last ? '<br/>' : ''} 
                        	 </c:forEach>
                        	 <br/>--------------------------------------<br/>
                        	 ${!loop.last ? '<br/>' : ''} 
                        </c:forEach>
                        </td>	
					</tr>
</c:forEach>
</tbody>
</table>

</div>
			</c:otherwise>
	</c:choose>