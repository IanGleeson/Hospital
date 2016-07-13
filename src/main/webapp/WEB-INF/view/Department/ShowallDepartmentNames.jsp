<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<c:set var="count" value="1" scope="page" />
<c:forEach var="department" items="${listOfDepartment}">
					<tr>
					    <th scope="row">
					      <c:out value="${count}"/>
					      <c:set var="count" value="${count + 1}" scope="page"/>
					    </th>
					    
						<td>${department.name}</td>	
						<td>${department.wards.size()}</td>		
						<td>${department.getBedCountisOccupied()+department.getBedCountisAvailable()}</td>	
						<td>${department.getBedCountisOccupied()}</td>	
						<td>${department.getBedCountisAvailable()}</td>			
                        <td>${department.getWardNames()}</td>	
					</tr>
					
</c:forEach>

