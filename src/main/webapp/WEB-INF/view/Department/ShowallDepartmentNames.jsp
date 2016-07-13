<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>




<c:forEach var="department" items="${listOfDepartment}">
 <c:if test="${department.id==DepartmentIdSelected}">  

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
                        <td><c:forEach var="ward" items="${department.wards}" varStatus="loop">                        	 
                        	
                      <c:if test="${!ward.rooms.isEmpty()}">                        		
					
                            <c:forEach var="room" items="${ward.rooms}" varStatus="loop2">                             

							<c:forEach var="bed" items="${room.beds}" varStatus="loop3">
							
							<c:if test="${bed.occupied}">  
							
							<c:choose>
    							<c:when test="${room.type==1 }">
        							 <c:set var="publicOcupied" value="${publicOcupied + 1}" scope="page"/>	
        							  	
    							</c:when>
   								<c:when test="${room.type==2 }">
            					<c:set var="semipublicOcupied" value="${semipublicOcupied + 1}" scope="page"/>	
   								 </c:when>
    							 <c:when test="${room.type==3 }">
            					<c:set var="privateOcupied" value="${privateOcupied + 1}" scope="page"/>	
    							</c:when>
    							<c:otherwise>
       
    							</c:otherwise>
							</c:choose>
							

							  <c:set var="occupiedBedcount" value="${occupiedBedcount + 1}" scope="page"/>		
									
							</c:if> 
							<c:if test="${!bed.occupied}"> 
							
							
								<c:choose>
    							<c:when test="${room.type==1 }">
        							 <c:set var="publicAvailable" value="${publicAvailable + 1}" scope="page"/>	
    							</c:when>
   								<c:when test="${room.type==2 }">
            					<c:set var="semipublicAvailable" value="${semipublicAvailable + 1}" scope="page"/>	
   								 </c:when>
    							 <c:when test="${room.type==3 }">
            					<c:set var="privateAvailable" value="${privateAvailable + 1}" scope="page"/>	
    							</c:when>
    							<c:otherwise>
       
    							</c:otherwise>
							</c:choose>
							 
							  <c:set var="freeBedcount" value="${freeBedcount + 1}" scope="page"/>							
							</c:if> 
							
							</c:forEach>							

	
                        	 </c:forEach>
                        	 <c:set var="count2" value="1" scope="page" />             
								  
                
                       	  

                       	  
                        	 </c:if>                        	

 
                       	<c:set var="publicOcupied" value="0" scope="page" />
						<c:set var="publicAvailable" value="0" scope="page" />
						<c:set var="semipublicOcupied" value="0" scope="page" />
						<c:set var="semipublicAvailable" value="0" scope="page" />
						<c:set var="privateOcupied" value="0" scope="page" />
						<c:set var="privateAvailable" value="0" scope="page" /> 
						
						                        	 
                        	 <c:set var="occupiedBedcount" value="0" scope="page" />
                             <c:set var="freeBedcount" value="0" scope="page" />
                        	 ${!loop.last ? '<br/>' : ''} 
                        	 
                   	 
                        </c:forEach>
                        </td>	
					</tr>
					</c:if>
</c:forEach>

