<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/bootstrap-theme.min.css" rel="stylesheet">
 <link href="css/font-awesome.min.css" rel="stylesheet">
 <link href="css/bootstrap-social.css" rel="stylesheet">
 <link href="css/mystyles.css" rel="stylesheet" >
 <title>Hospital Management Website</title>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
   <div class="container">
       <div class="navbar-header">
           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
           </button>
           <a class="navbar-brand" href="index.html">Hospital Management Application</a>
       </div>

       <div id="navbar" class="navbar-collapse collapse">
           <ul class="nav navbar-nav navbar-right">
            <li><a href="index.html"><span class="glyphicon glyphicon-home"
                 aria-hidden="true"></span>Home</a></li>
            <li ><a href="aboutus.html"><span class="glyphicon glyphicon-info-sign"></span>About Us</a></li>
 
               <li><a href="contact.html"><span class="glyphicon glyphicon-envelope"
                 aria-hidden="true"></span>Contact Us</a></li>

               <li>
                <a href="login.html"><span class="glyphicon glyphicon-user"></span>
                 Login</a>
                
             </li>
           </ul>
       </div>
       </div>
   </nav>
<header class="jumbotron">
   <div class="container">
    <div class="row row-header">
        <div class="col-xs-12 col-sm-8">
            <h1>Hospital Management Application</h1>
        </div>
      
    </div>
</div>
</header>
<div class="container">

<div class="row row-content">
    
     <div class="pull-right">
            <a type="button" class="btn btn-success" href="#">Hello Admin</a>
        <a type="button" class="btn btn-primary" href="#">Log-Out</a>
        </div>   
    <div class="col-xs-12">
     
        <ul class="nav nav-pills" role="tablist">
                    <li role="presentation">
                    <a href="#patients" aria-controls="patients"
                     role="tab" data-toggle="tab">Patients</a></li>
                    <li role="presentation"><a href="#doctors"
                     aria-controls="doctors" role="tab"
                     data-toggle="tab">Doctors</a></li>
                    <li role="presentation"><a href="#dept"
                     aria-controls="dept" role="tab"
                     data-toggle="tab">Department</a></li>
                    
                </ul>

<div class="tab-content">
<div role="tabpanel" class="tab-pane fade in active" id="patients">
    <h3>Patient Details</h3>
                        <table class="table table-striped">
                            
        <thead>
            <tr>
                <td>First Name</td><td>Last Name</td><td>Status</td><td>Details</td>
            </tr>

        </thead>
        <tbody>
            
            <tr>
                <td>Mathew</td><td>Cooker</td><td><div class="col-sm-8"><select class="form-control">
                                <option>Appointment Time</option>
                                <option>Seen</option>
                                <option>Admitted</option>
                                <option>Discharged</option>
                            </select></div></td>
                
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab"><div class="panel panel-default">
<div class="panel-heading" role="tab" id="hpatientdetails">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#patientdetails">
                                    Patient Details
                                </a>
                            </h3>
                        </div>
                        
<div role="tabpanel" class="panel-collapse collapse in" id="patientdetails">
                            <div class="row row-content">

<div class="col-xs-12 col-sm-9 col-sm-offset-1">
    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="Address">Address:</label> <br>                       
                        <label for="MaritalStatus">Marital Status:</label><br>
                        <label for="Religion">Religion:</label><br>
                        <label for="Telephone">Telephone:</label><br>
                       <label for="Gender">Gender:</label><br>
                        <label for="Age">Age:</label><br>
                        <label for="Status">Status:</label><br>
                        <label for="DateOfAdmission">Date Of Admission:</label><br>
                        <label for="DateOfDischarge">Date Of Discharge:</label><br>
                        <div class="inpatient">
                            <label for="Dept">Dept:</label><br>
                            <label for="Ward">Ward:</label><br>
                            <label for="Room">Room:</label><br>
                        </div>

                        
                        </div>
        <div class="col-sm-offset-2 col-sm-10">
            
                            <button type="submit" class="btn btn-primary">Generate Report</button>
                        </div>
                </form>
</div>
</div>
</div>

<div class="panel-heading" role="tab" id="hbillingdetails">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#billingdetails">
                                    Billing Details
                                </a>
                            </h3>
                        </div>
    <div role="tabpanel" class="panel-collapse collapse in" id="billingdetails">
    <div class="row row-content">
        
    <div class="col-xs-12 col-sm-9 col-sm-offset-1">
 
    
                        <fieldset><div class="col-xs-7">                            
                            <label for="billNo">Bill No:</label> <br>                       <label for="DateOfBill">Date Of Bill:</label><br>
                        </div>
                        <div  class="col-xs-5">Finglas Hospital<br> Finglas<br> Dublin</div>
            </fieldset>
            <div><label for="name">Patients Name:</label> <br> 
                <label for="address">Address:</label> <br> </div>
                                              
            

                     <div class="col-xs-12"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Bill at a glance</h3>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Admission Day</dt>
                            <dd>25/06/2016</dd>
                            <dt>Discharge Date</dt>
                            <dd>28/06/2016</dd>
                            <dt>Days Stayed</dt>
                            <dd>3</dd>
                            <dt>Care Type</dt>
                            <dd>Private</dd>
                            <dt>Doctors Fee</dt>
                            <dd>&euro;250.00</dd>
                            <dt>Room Charge</dt>
                            <dd>&euro;80.00</dd><br>
                            <div><dt>Total Cost:</dt>
                            <dd><strong>&euro;330.00</strong></dd></div>
                       </dl>
                        
                        
                    </div>
            
                </div>
</div> 
<div class="col-xs-4 col-sm-offset-8">
            
                            <button type="submit" class="btn btn-primary">Generate Bill</button>
                        </div>
</div>
</div>
                        </div>
                    </div></a></td>
                
            </tr>
            <tr>
                <td>John</td><td>Smith</td><td><div class="col-sm-8"><select class="form-control">
                                <option>Appointment Time</option>
                                <option>Seen</option>
                                <option>Admitted</option>
                                <option>Discharged</option>
                            </select></div></td>
                                <td><a href="#details1" aria-controls="details1"
                     role="tab" data-toggle="tab"><div class="panel panel-default">
<div class="panel-heading" role="tab" id="hpatientdetails1">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#patientdetails1">
                                    Patient Details
                                </a>
                            </h3>
                        </div>
                        
<div role="tabpanel" class="panel-collapse collapse in" id="patientdetails1">
                            <div class="row row-content">

<div class="col-xs-12 col-sm-9 col-sm-offset-1">
    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="Address">Address:</label> <br>                       
                        <label for="MaritalStatus">Marital Status:</label><br>
                        <label for="Religion">Religion:</label><br>
                        <label for="Telephone">Telephone:</label><br>
                       <label for="Gender">Gender:</label><br>
                        <label for="Age">Age:</label><br>
                        <label for="Status">Status:</label><br>
                        <label for="DateOfAdmission">Date Of Admission:</label><br>
                        <label for="DateOfDischarge">Date Of Discharge:</label><br>
                        <div class="inpatient">
                            <label for="Dept">Dept:</label><br>
                            <label for="Ward">Ward:</label><br>
                            <label for="Room">Room:</label><br>
                        </div>

                        
                        </div>
        <div class="col-sm-offset-2 col-sm-10">
            
                            <button type="submit" class="btn btn-primary">Generate Report</button>
                        </div>
                </form>
</div>
</div>
</div>

<div class="panel-heading" role="tab" id="hbillingdetails1">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#billingdetails1">
                                    Billing Details
                                </a>
                            </h3>
                        </div>
    <div role="tabpanel" class="panel-collapse collapse in" id="billingdetails1">
    <div class="row row-content">
        
    <div class="col-xs-12 col-sm-9 col-sm-offset-1">
 
    
                        <fieldset><div class="col-xs-7">                            
                            <label for="billNo">Bill No:</label> <br>                       <label for="DateOfBill">Date Of Bill:</label><br>
                        </div>
                        <div  class="col-xs-5">Finglas Hospital<br> Finglas<br> Dublin</div>
            </fieldset>
            <div><label for="name">Patients Name:</label> <br> 
                <label for="address">Address:</label> <br> </div>
                                              
            

                     <div class="col-xs-12"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Bill at a glance</h3>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Admission Day</dt>
                            <dd>25/06/2016</dd>
                            <dt>Discharge Date</dt>
                            <dd>28/06/2016</dd>
                            <dt>Days Stayed</dt>
                            <dd>3</dd>
                            <dt>Care Type</dt>
                            <dd>Private</dd>
                            <dt>Doctors Fee</dt>
                            <dd>&euro;250.00</dd>
                            <dt>Room Charge</dt>
                            <dd>&euro;80.00</dd>
                            <div><dt>Total Cost:</dt>
                            <dd><strong>&euro;330.00</strong></dd></div>
                       </dl>
                    </div>
            
                </div>
</div> 
<div class="col-xs-4 col-sm-offset-8">
            
                            <button type="submit" class="btn btn-primary">Generate Bill</button>
                        </div>
</div>
</div>
                        </div>
                    </div></a></td>
            </tr>
            <tr>
                <td>Angela</td><td>Nico</td><td><div class="col-sm-8"><select class="form-control">
                                <option>Appointment Time</option>
                                <option>Seen</option>
                                <option>Admitted</option>
                                <option>Discharged</option>
                            </select></div></td>
                                <td><a href="#details2" aria-controls="details2"
                     role="tab" data-toggle="tab"><div class="panel panel-default">
<div class="panel-heading" role="tab" id="hpatientdetails2">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#patientdetails2">
                                    Patient Details
                                </a>
                            </h3>
                        </div>
                        
<div role="tabpanel" class="panel-collapse collapse in" id="patientdetails2">
                            <div class="row row-content">

<div class="col-xs-12 col-sm-9 col-sm-offset-1">
    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="Address">Address:</label> <br>                       
                        <label for="MaritalStatus">Marital Status:</label><br>
                        <label for="Religion">Religion:</label><br>
                        <label for="Telephone">Telephone:</label><br>
                       <label for="Gender">Gender:</label><br>
                        <label for="Age">Age:</label><br>
                        <label for="Status">Status:</label><br>
                        <label for="DateOfAdmission">Date Of Admission:</label><br>
                        <label for="DateOfDischarge">Date Of Discharge:</label><br>
                        <div class="inpatient">
                            <label for="Dept">Dept:</label><br>
                            <label for="Ward">Ward:</label><br>
                            <label for="Room">Room:</label><br>
                        </div>

                        
                        </div>
        <div class="col-sm-offset-2 col-sm-10">
            
                            <button type="submit" class="btn btn-primary">Generate Report</button>
                        </div>
                </form>
</div>
</div>
</div>

<div class="panel-heading" role="tab" id="hbillingdetails2">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#billingdetails2">
                                    Billing Details
                                </a>
                            </h3>
                        </div>
    <div role="tabpanel" class="panel-collapse collapse in" id="billingdetails2">
    <div class="row row-content">
        
    <div class="col-xs-12 col-sm-9 col-sm-offset-1">
 
    
                        <fieldset><div class="col-xs-7">                            
                            <label for="billNo">Bill No:</label> <br>                       <label for="DateOfBill">Date Of Bill:</label><br>
                        </div>
                        <div  class="col-xs-5">Finglas Hospital<br> Finglas<br> Dublin</div>
            </fieldset>
            <div><label for="name">Patients Name:</label> <br> 
                <label for="address">Address:</label> <br> </div>
                                              
            

                     <div class="col-xs-12"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Bill at a glance</h3>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Admission Day</dt>
                            <dd>25/06/2016</dd>
                            <dt>Discharge Date</dt>
                            <dd>28/06/2016</dd>
                            <dt>Days Stayed</dt>
                            <dd>3</dd>
                            <dt>Care Type</dt>
                            <dd>Private</dd>
                            <dt>Doctors Fee</dt>
                            <dd>&euro;250.00</dd>
                            <dt>Room Charge</dt>
                            <dd>&euro;80.00</dd>
                            <div><dt>Total Cost:</dt>
                            <dd><strong>&euro;330.00</strong></dd></div>
                       </dl>
                    </div>
            
                </div>
</div> 
<div class="col-xs-4 col-sm-offset-8">
            
                            <button type="submit" class="btn btn-primary">Generate Bill</button>
                        </div>
</div>
</div>
                        </div>
                    </div></a></td>
            </tr>
            <tr>
                <td>Cynthia</td><td>Osbourne</td><td><div class="col-sm-8"><select class="form-control">
                                <option>Appointment Time</option>
                                <option>Seen</option>
                                <option>Admitted</option>
                                <option>Discharged</option>
                            </select></div></td>
                                <td><a href="#details3" aria-controls="details3"
                     role="tab" data-toggle="tab"><div class="panel panel-default">
<div class="panel-heading" role="tab" id="hpatientdetails3">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#patientdetails3">
                                    Patient Details
                                </a>
                            </h3>
                        </div>
                        
<div role="tabpanel" class="panel-collapse collapse in" id="patientdetails3">
                            <div class="row row-content">

<div class="col-xs-12 col-sm-9 col-sm-offset-1">
    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="Address">Address:</label> <br>                       
                        <label for="MaritalStatus">Marital Status:</label><br>
                        <label for="Religion">Religion:</label><br>
                        <label for="Telephone">Telephone:</label><br>
                       <label for="Gender">Gender:</label><br>
                        <label for="Age">Age:</label><br>
                        <label for="Status">Status:</label><br>
                        <label for="DateOfAdmission">Date Of Admission:</label><br>
                        <label for="DateOfDischarge">Date Of Discharge:</label><br>
                        <div class="inpatient">
                            <label for="Dept">Dept:</label><br>
                            <label for="Ward">Ward:</label><br>
                            <label for="Room">Room:</label><br>
                        </div>

                        
                        </div>
        <div class="col-sm-offset-2 col-sm-10">
            
                            <button type="submit" class="btn btn-primary">Generate Report</button>
                        </div>
                </form>
</div>
</div>
</div>

<div class="panel-heading" role="tab" id="hbillingdetails3">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#billingdetails3">
                                    Billing Details
                                </a>
                            </h3>
                        </div>
    <div role="tabpanel" class="panel-collapse collapse in" id="billingdetails3">
    <div class="row row-content">
        
    <div class="col-xs-12 col-sm-9 col-sm-offset-1">
 
    
                        <fieldset><div class="col-xs-7">                            
                            <label for="billNo">Bill No:</label> <br>                       <label for="DateOfBill">Date Of Bill:</label><br>
                        </div>
                        <div  class="col-xs-5">Finglas Hospital<br> Finglas<br> Dublin</div>
            </fieldset>
            <div><label for="name">Patients Name:</label> <br> 
                <label for="address">Address:</label> <br> </div>
                                              
            

                     <div class="col-xs-12"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Bill at a glance</h3>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Admission Day</dt>
                            <dd>25/06/2016</dd>
                            <dt>Discharge Date</dt>
                            <dd>28/06/2016</dd>
                            <dt>Days Stayed</dt>
                            <dd>3</dd>
                            <dt>Care Type</dt>
                            <dd>Private</dd>
                            <dt>Doctors Fee</dt>
                            <dd>&euro;250.00</dd>
                            <dt>Room Charge</dt>
                            <dd>&euro;80.00</dd>
                            <div><dt>Total Cost:</dt>
                            <dd><strong>&euro;330.00</strong></dd></div>
                       </dl>
                    </div>
            
                </div>
</div> 
<div class="col-xs-4 col-sm-offset-8">
            
                            <button type="submit" class="btn btn-primary">Generate Bill</button>
                        </div>
</div>
</div>
                        </div>
                    </div></a></td>
            </tr>
        </tbody>
    </table>
     
        
    <div class="btn btn-primary pull-right" role="group">
        <a type="button" class="btn btn-primary" href="adduser.html"><i class="fa fa-user"></i> Add Patient</a>
        <a type="button" class="btn btn-success" href="updateuser.html"><i class="fa fa-user"></i>Discharge</a>
        <a type="button" class="btn btn-danger" href="deleteuser.html"><i class="fa fa-user"></i> Generate Report</a>
    </div>
                    </div>
    
    <div role="tabpanel" class="tab-pane fade in active" id="doctors">
        <h3>Doctors Details</h3>
                        <table class="table table-striped">
        <thead>
            <tr>
                <td>First Name</td><td>Last Name</td><td>Dept</td><td>Details</td>
            </tr>

        </thead>
        <tbody>
            
            <tr>
                <td>Philip</td><td>Moss</td><td><div class="col-sm-7"><select class="form-control">
                                <option>Radiology</option>
                                <option>Antenatal</option>
                                <option>Surgery</option>
                                <option>Research</option>
                            </select></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab"><td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab"><div class="panel panel-default">
<div class="panel-heading" role="tab" id="hdoctordetails">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#doctordetails">
                                    Doctor Details
                                </a>
                            </h3>
                        </div>
                        
<div role="tabpanel" class="panel-collapse collapse in" id="doctordetails">
                            <div class="row row-content">

<div class="col-xs-12 col-sm-10 col-sm-offset-1">
    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="firstname">First Name:</label> <br>
                        <label for="secondname">Second Name:</label> <br>
                        <label for="Address">Address:</label> <br>               <label for="Telephone">Telephone:</label><br>
                        <label for="Gender">Gender:</label><br>
                        <label for="dept">Dept:</label><br>
                        <label for="noOfPatients">No. Of Patients:</label><br>
                                                
                        </div>
        
                </form>
</div>
</div>
</div>

<div class="panel-heading" role="tab" id="hbillingdetails">
                            <h3 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#billingdetails">
                                    Billing Details
                                </a>
                            </h3>
                        </div>
    <div role="tabpanel" class="panel-collapse collapse in" id="billingdetails">
    <div class="row row-content">
        
    <div class="col-xs-12 col-sm-9 col-sm-offset-1">
 
    
                        <fieldset><div class="col-xs-7">                            
                            <label for="billNo">Bill No:</label> <br>                       <label for="DateOfBill">Date Of Bill:</label><br>
                        </div>
                        <div  class="col-xs-5">Finglas Hospital<br> Finglas<br> Dublin</div>
            </fieldset>
            <div><label for="name">Patients Name:</label> <br> 
                <label for="address">Address:</label> <br> </div>
                                              
            

                     <div class="col-xs-12"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Bill at a glance</h3>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Admission Day</dt>
                            <dd>25/06/2016</dd>
                            <dt>Discharge Date</dt>
                            <dd>28/06/2016</dd>
                            <dt>Days Stayed</dt>
                            <dd>3</dd>
                            <dt>Care Type</dt>
                            <dd>Private</dd>
                            <dt>Doctors Fee</dt>
                            <dd>&euro;250.00</dd>
                            <dt>Room Charge</dt>
                            <dd>&euro;80.00</dd><br>
                            <div><dt>Total Cost:</dt>
                            <dd><strong>&euro;330.00</strong></dd></div>
                       </dl>
                        
                        
                    </div>
            
                </div>
</div> 
<div class="col-xs-4 col-sm-offset-8">
            
                            <button type="submit" class="btn btn-primary">Generate Bill</button>
                        </div>
</div>
</div>
                        </div>
                    </div></a></td>
                </a></td>
            </tr>
            <tr>
                <td>John</td><td>Smith</td><td><div class="col-sm-7"><select class="form-control">
                                <option>Research</option>
                                <option>Radiology</option>
                                <option>Antenatal</option>
                                <option>Surgery</option>
                                
                            </select></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab">Show Details</a></td>
            </tr>
            <tr>
                <td>Angela</td><td>Nico</td><td><div class="col-sm-7"><select class="form-control">
                                <option>Surgery</option>
                                <option>Radiology</option>
                                
                                <option>Antenatal</option>                            
                                <option>Research</option>
                            </select></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab">Show Details</a></td>
            </tr>
            <tr>
                <td>Cynthia</td><td>Osbourne</td><td><div class="col-sm-7"><select class="form-control">
                                <option>Radiology</option>
                                <option>Antenatal</option>
                                <option>Surgery</option>
                                <option>Research</option>
                            </select></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab">Show Details</a></td>
            </tr>
        </tbody>
    </table>
        <div class="btn btn-primary pull-right" role="group">
       
        <a type="button" class="btn btn-danger" href="deleteuser.html"><i class="fa fa-user"></i> Generate Report</a>
                    </div>
    </div>
    <div role="tabpanel" class="tab-pane fade in active" id="dept">
                        <table class="table table-striped">
         <thead>
            <tr>
                <td>Dept Name</td><td>Location</td><td>No. of patients</td><td>No. of Doctors</td>
            </tr>

        </thead>
      
        <tbody>
            
            <tr>
                <td></td><td></td><td><div class="col-sm-8"></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab"></a></td>
            </tr>
            <tr>
                <td></td><td></td><td><div class="col-sm-8"></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab"></a></td>
            </tr>
            <tr>
                <td></td><td></td><td><div class="col-sm-8"></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab"></a></td>
            </tr>
            <tr>
                <td></td><td></td><td><div class="col-sm-8"></div></td>
                <td><a href="#details" aria-controls="details"
                     role="tab" data-toggle="tab"></a></td>
            </tr>
        </tbody>
    </table>
     
<div class="btn btn-primary pull-right" role="group">
       
        <a type="button" class="btn btn-danger" href="deptReport.html"><i class="fa fa-user"></i> Generate Report</a>
    </div>               
    </div>
   
</div>
</div>
</div>
    
</div>

<footer class="row row-footer">
<div class="container">
    <div>             
        <div class="col-xs-5 col-xs-offset-1 col-sm-2  col-sm-offset-1">
            <h5>Links</h5>
            <ul class="list-unstyled">
                <li><a href="index.html">Home</a></li>
                <li><a href="aboutus.html">About Us</a></li>                
                <li><a href="contact.html">Contact Us</a></li>
                <li><a href="login.html">Login</a></li>
            </ul>
        </div>
        <div class="col-xs-6 col-sm-5">
            <h5>Our Address</h5>
            <address>
              121, Poppintree Road<br>
              Jamestown Road, Finglas<br>
              Dublin 11<br>
              <i class="fa fa-phone"></i>: +353 1 814 0250<br>
              <i class="fa fa-fax"></i>: +353 1 834 6336<br>
              <i class="fa fa-envelope"></i>:
                <a href="mailto:softwaredeveloper@ftc.ie">softwaredeveloper@ftc.ie</a>
           </address>
        </div>
        <div class="col-xs-12 col-sm-4">
            <div class="nav navbar-nav" style="padding: 40px 10px;">
                <a class="btn btn-social-icon btn-google-plus" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
                <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
                <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
                <a class="btn btn-social-icon btn-youtube" href="http://youtube.com/"><i class="fa fa-youtube"></i></a>
                <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o"></i></a>
            </div>
        </div>
        <div class="col-xs-12">
            <p style="padding:10px;"></p>
            <p align=center>© Copyright 2016 Finglas Hospital Management Board</p>
        </div>
    </div>
</div>
</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
</script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>

</html>