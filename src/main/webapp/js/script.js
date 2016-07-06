function calculateTotal(){
	
	var totalCost = 0;
	
	var roomCost = parseInt(document.getElementById("roomType").value);
	console.log("roomCost: "+ roomCost);
	console.log(typeof roomCost);
	
	
	
	var numNights = parseInt(document.getElementById("numNights").value);
	
	if(Number.isNaN(numNights)){
		
		numNights=0;
	}
	totalCost = numNights*roomCost;
	console.log("numNights: " + numNights);
	console.log(typeof numNights);
	
	var doctorFee = parseInt(document.getElementById("doctorFee").value);
	console.log("doctorFee: " + doctorFee);
	console.log(typeof doctorFee);
	
	if(Number.isNaN(doctorFee)){
		
		
		doctorFee=0;
	}
	totalCost+=doctorFee;
	
	var miscFee = parseInt(document.getElementById("miscFee").value);
	console.log("miscFee: " + miscFee);
	if(Number.isNaN(miscFee)){
		
	miscFee=0;	
	}
	totalCost += miscFee;
	var total = (roomCost * numNights) + doctorFee + miscFee;
	console.log("total: " + total);
	
	 document.getElementById("totalCost").innerHTML = "<h3>Total cost: &euro;"+total +"</h3>";
	
}
	
