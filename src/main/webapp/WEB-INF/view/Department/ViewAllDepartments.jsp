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
<c:set var="count2" value="1" scope="page" />
<c:set var="freeBedcount" value="0" scope="page" />
<c:set var="occupiedBedcount" value="0" scope="page" />
<c:set var="publicOcupied" value="0" scope="page" />
<c:set var="publicAvailable" value="0" scope="page" />
<c:set var="semipublicOcupied" value="0" scope="page" />
<c:set var="semipublicAvailable" value="0" scope="page" />
<c:set var="privateOcupied" value="0" scope="page" />
<c:set var="privateAvailable" value="0" scope="page" />


<c:forEach var="department" items="${listOfDepartment}">
					<tr>
					    <th scope="row">
					      <c:out value="${count}"/>
					      <c:set var="count" value="${count + 1}" scope="page"/>
					    </th>
					    
						<td>${department.name}</td>	
						<td>${department.wards.size()}</td>				
                        <td><c:forEach var="ward" items="${department.wards}" varStatus="loop"> 
                        	 
                        	<b>${ward.name}</b>-- Rooms(${ward.rooms.size()})
                        	
                        	<br>
                        	
                      <c:if test="${!ward.rooms.isEmpty()}">                        		



                        	<div class="table-responsive">
                        	<table class="table" Style="bgcolor:blue;" >
							<thead>
							<tr bgcolor="#CECECE">
							<th><span class="badge">NO:</span></th>
							<th><span class="badge">Room Type</span></th>
							<th><span class="badge">Beds</span></th>
							<th><span class="badge">Status</span></th>
							<th><span class="badge">Occupied / Available</span></th>
							
							</tr>
							</thead>
							<tbody>						
                            <c:forEach var="room" items="${ward.rooms}" varStatus="loop2">                             
							<tr bgcolor="#00AAFF">
							<td>
		                  <c:out value="${count2}"/>
					      <c:set var="count2" value="${count2 + 1}" scope="page"/>
							</td>
							<td>
							${room.type==1 ? 'Public' : room.type==2 ? 'Semi-Private' : room.type==3 ? 'Private' : ''}
							</td>
							<td>
							${room.beds.size()}
							</td>
							<td>
							<c:forEach var="bed" items="${room.beds}" varStatus="loop3">
							Bed No:${bed.id} -- 
							${bed.occupied?'Occupied':'Available'} 
							${!loop3.last ? '</br>' : ''}  
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
							
							</td>
							<td>
							 <c:out value="${occupiedBedcount}"/> / <c:out value="${freeBedcount}"/>
							</td>
							</tr>
                             <c:set var="occupiedBedcount" value="0" scope="page" />
                             <c:set var="freeBedcount" value="0" scope="page" />
  
                        	 </c:forEach>
                        	 <c:set var="count2" value="1" scope="page" />
                        	</tbody>
							</table>
							</div>	  
                 <h3><u><b>${ward.name}</b>Ward Bed layout</u></h3>
                 <h4>Public Room</h4>
                            <table align="left"  style="border-spacing: 10;border-spacing: 10;" >                                              	                           
                
							<tr align="center">
							<c:forEach var="counter" begin="1" end="${publicOcupied}">
 							<td><img src="/HospitalManagementSystem/img/occupied.jpg" height=100 width=100></td>
 							
 							<c:if test="${(counter%2)==0}"> 
 							</tr>
 							<tr align="center">
 							</c:if>
						    </c:forEach>                  
						    					    
						    
							<c:forEach var="counter" begin="${publicOcupied+1}" end="${publicOcupied+publicAvailable}">
 							<td><img src="/HospitalManagementSystem/img/available.jpg" height=100 width=100></td>
 							
 							<c:if test="${(counter%2)==0}"> 
 							</tr>
 							<tr align="center">
 							</c:if>
						    </c:forEach> 
						    
						    <c:forEach var="counter" begin="${publicOcupied+publicAvailable+1}" end="6">
 							<td><img src="/HospitalManagementSystem/img/nobed.jpg" height=100 width=100></td>
 							<c:if test="${(counter%2)==0}"> 
 							</tr>
 							<tr align="center">
 							</c:if>
						    </c:forEach>  
						                     
						    </tr>				
                       	  </table>
                       	   <c:set var="counter" value="1" scope="page" />
          <h4>Semi Public Room</h4>
                            <table align="left" style="border-collapse: collapse;border-spacing: 10px;border-spacing: 10;" >                                              	                           
                
							<tr align="center">
							<c:forEach var="counter" begin="1" end="${semipublicOcupied}">
 							<td><img src="/HospitalManagementSystem/img/occupied.jpg" height=100 width=100></td>
 							
 							<c:if test="${(counter%2)==0}"> 
 							</tr>
 							<tr align="center">
 							</c:if>
						    </c:forEach>                  
						    					    
						    
							<c:forEach var="counter" begin="${semipublicOcupied+1}" end="${semipublicOcupied+semipublicAvailable}">
 							<td><img src="/HospitalManagementSystem/img/available.jpg" height=100 width=100></td>
 							
 							<c:if test="${(counter%2)==0}"> 
 							</tr>
 							<tr align="center">
 							</c:if>
						    </c:forEach> 
						    
						    <c:forEach var="counter" begin="${semipublicOcupied+semipublicAvailable+1}" end="4">
 							<td><img src="/HospitalManagementSystem/img/nobed.jpg" height=100 width=100></td>
 							<c:if test="${(counter%2)==0}"> 
 							</tr>
 							<tr align="center">
 							</c:if>
						    </c:forEach>  
						                     
						    </tr>				
                       	  </table>  
                       	  <c:set var="counter" value="1" scope="page" />
                       	  
                       	   <table  style="border-collapse: collapse;border-spacing: 10px;border-spacing: 10;" > 
                       	   <tr>
                       	   <td>
                             <h4>Private Room 1 </h4>                           
                           </td>
                            <td>
                             <h4>Private Room 2 </h4>                           
                           </td>
                            <td>
                             <h4>Private Room 3 </h4>                           
                           </td>
                            <td>
                             <h4>Private Room 4 </h4>                           
                           </td>
                           </tr>
                           <tr>
                       	  <c:forEach var="counter" begin="1" end="${privateOcupied}">
                       	  					
 							<td><img src="/HospitalManagementSystem/img/occupied.jpg" height=100 width=100></td>		
	              	  
                       	   </c:forEach> 
                       	   
                       	    <c:forEach var="counter" begin="${privateOcupied+1}" end="${privateAvailable+privateOcupied}">
                       	   
 							<td><img src="/HospitalManagementSystem/img/available.jpg" height=100 width=100></td>				
						   				
                       	   </c:forEach> 
                       	   
                         <c:forEach var="counter" begin="${privateAvailable+privateOcupied+1}" end="4">
                       	   	
 							<td><img src="/HospitalManagementSystem/img/nobed.jpg" height=100 width=100></td>				
                	  
                       	   </c:forEach>                    	   

                       	   </tr>
                       	   </table>
                       	   <p  class="clearfix"><br></p>
						<c:set var="publicOcupied" value="0" scope="page" />
						<c:set var="publicAvailable" value="0" scope="page" />
						<c:set var="semipublicOcupied" value="0" scope="page" />
						<c:set var="semipublicAvailable" value="0" scope="page" />
						<c:set var="privateOcupied" value="0" scope="page" />
						<c:set var="privateAvailable" value="0" scope="page" /> 
                       	  
                        	 </c:if>
                        	 
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
	
	
	
	
	