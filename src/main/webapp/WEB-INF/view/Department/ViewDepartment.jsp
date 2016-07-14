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
<h1>View Department</h1>	
 <div class="col-xs-10">	
<form class="form-horizontal" role="form" action="Department?action=viewDepartment" method="post">
<label for="Deptname" class="col-sm-2 control-label">Select Department:</label>
 <div class="col-sm-4">
<select name="deptId" class="form-control">
<c:forEach var="department" items="${listOfDepartment}">
  <option value="${department.id}">${department.name}</option>
</c:forEach>
</select>
</div>
   <button type="submit" class="btn btn-success btn-lg">View Department</button>                   
 
</form>	
</div>

<form  action="Department?action=viewDepartment" method="post">
<input type="hidden" name="deptId" value="0">
   <button type="submit" class="btn btn-success btn-lg">List Departments</button>   
</form>

		</c:otherwise>
	</c:choose>

   <c:choose>
		<c:when test="${listOfDepartment.isEmpty()}">
		<h1>View Department</h1>
			<h2>There are no Department to Display</h2>
		</c:when>
		<c:otherwise>
<h1>Department List </h1>
<div class="table-responsive">
<table class="table">
<thead>
<tr>
<th>No</th>
<th><span class="badge">Department Name</span></th>
<th><span class="badge">No: Wards</span></th>
<th><span class="badge">No:beds</span></th>
<th><span class="badge">Occupied</span></th>
<th><span class="badge">Available</span></th>
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

<c:if test="${DepartmentIdSelected==0}"> 
I AM HERE
<jsp:include page="ShowallDepartmentNames.jsp"></jsp:include>
</c:if>

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

                             <div class="table-responsive">
                        	<table class="table" Style="bgcolor:blue;" >
							<thead>
							<tr>
							<th><span class="badge">Name</span></th>
							<th><span class="badge">Rooms</span></th>
							<th><span class="badge">Beds</span></th>
							<th><span class="badge">Occupied</span></th>
							<th><span class="badge">Available</span></th>
							</tr>
							</thead>
							<tbody>	
							<tr bgcolor="#004444">
							<td>
							<b>${ward.name}</b>
							</td>							
							<td>
						    ${ward.rooms.size()}
							</td>
							<td>
							${occupiedBedcount + freeBedcount}
							</td>
							<td>
					  	    ${occupiedBedcount} 
							</td>
							<td>
					  	    ${freeBedcount}
							</td>
							</tr>
                            </tbody>
                            </table> 
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
                       	  	   <p  class="clearfix"><br></p>
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
</tbody>
</table>

</div>
			</c:otherwise>
	</c:choose> 