<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <!DOCTYPE html>
         <html lang="en">
             <head>
                 <meta charset="utf-8">
                 <meta http-equiv="X-UA-Compatible" content="IE=edge">
                 <meta name="viewport" content="width=device-width, initial-scale=1">
                 <link href="/HospitalManagementSystem/css/bootstrap.min.css" rel="stylesheet">
                 <link href="/HospitalManagementSystem/css/bootstrap-theme.min.css" rel="stylesheet">
                 <link href="/HospitalManagementSystem/css/font-awesome.min.css" rel="stylesheet">
                 <link href="/HospitalManagementSystem/css/bootstrap-social.css" rel="stylesheet">
                 <link href="/HospitalManagementSystem/css/mystyles.css" rel="stylesheet" >
                 <title>Hospital Management Website</title>

           </head>
           <body>
<jsp:include page="/WEB-INF/view/Index/defaultmenu.jsp"></jsp:include>
               <header class="jumbotron">
       <div class="container">
           <div class="row row-header">
               <div class="col-xs-12 col-sm-8">
                   <h1>Hospital Management Application</h1>
                   <p style="padding:40px;">When it comes to choosing a hospital, one thing is clear: quality counts. And a century-long tradition of providing medical care in a comfortable and convenient environment means peace of mind for the thousands of patients who are cared for by the doctors and nurses at The Finglas Hospital each year.
                   </p>
               </div>
               <div class="col-xs-12 col-sm-4">
                   <p style="padding:20px"></p>
                   <img src="img/pix1.jpg" class="img-responsive" height=100%; width=100%;>
               </div>
           </div>
       </div>
   </header>
   <div class="container">
   
   <ol class="breadcrumb">
       <li><a href="User">Manage Users</a></li>   
       <li><a href="Department">Manage Departments</a></li>                
       <li><a href="Patient">Manage Personnel</a></li>
   </ol>
   <div class="row row-content">
        <div class="col-xs-12 col-sm-3 col-sm-push-9">
            <p style="padding:20px;"></p>
            <h3 align=center>Your health is our concern</h3>
        </div>
        <div class="col-xs-12 col-sm-9 col-sm-pull-3">
            <div class="media">
                <div class="media-left media-middle">
                    <a href="#"><img class="media-object img-thumbnail" src="img/logo1.jpg" alt="ourbuilding"></a>
                </div>
                <div class="media-body">
                    <h2 class="media-heading"><span class="label label-primary">Welcome to Finglas Hospital</span><span class="badge">Dublin</span></h2>                      
                    <p>Our aim is to deliver the highest quality of care to our patients, excellent training to our students and a friendly, stimulating and professional environment for staff. The information on this site is organised to meet the needs of different types of users. All suggestions for improvement are gratefully received.</p>
                    <p><a class="btn btn-primary btn-xs" href="#">More &raquo;</a></p>
                </div>
            </div>
        </div>
       </div>
       <div class="row row-content"><a href="#"></a>
           <div class="col-xs-12 col-sm-3" >
            <p style="padding:20px;"></p>
            <h3 align=center></h3>
           </div>
           <div class="col-xs-12 col-sm-9">
            <h2>Meet our staffs</h2>
            <p>Upon arrival in a ward, a nurse will help to settle you in and a doctor will work with you to complete your medical history.</p>
            <p><a class="btn btn-primary btn-xs" href="#">More &raquo;</a></p>
           </div>
       </div>
       <div class="row row-content">
           <div class="col-xs-12 col-sm-3 col-sm-push-9">
            <p style="padding:20px;"></p>
            <h3 align=center>Meet our Specialists</h3>
           </div>
           <div class="col-xs-12 col-sm-9 col-sm-pull-3">
               <div class="media">
                   <div class="media-left media-middle">
                       <a href="#"><img class="media-object img-thumbnail" src="img/pix2.jpg" alt="logo"></a>
                   </div>
                   <div class="media-body">
                       <h2 class="media-heading">Your Stay in Our Wards</h2>
                       <h4>Your Healthcare Team</h4>
                       <p>Upon arrival in a ward, a nurse will help to settle you in and a doctor will work with you to complete your medical history. You will also receive an information leaflet that contains information about your care in your specific ward. You should feel comfortable asking your doctor or nurse about your condition.
                       </p>
                       <p><a class="btn btn-primary btn-xs" href="#">More &raquo;</a></p>
                   </div>
               </div>
           </div>
       </div>
  
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>
   