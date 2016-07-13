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
                        <li  class="active"><a href="aboutus.html"><span class="glyphicon glyphicon-info-sign"></span>About Us</a></li>
                           
                           <li><a href="contact.html"><span class="glyphicon glyphicon-envelope"></span>Contact Us</a></li>

                           <li ><a href="login.html"><span class="glyphicon glyphicon-user"></span>
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
                        <h1>Finglas Hospital Board</h1>
                        <p style="padding:40px;"></p>
                        <p>Finglas Training Hospital Foundation carries out a host of events throughout the year. There is usually something to suit everyone, no matter your age or ability. There are hundreds of Finglas Training Hospital supporters taking on their own challenges for the Hospital.!</p>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                    </div>
                </div>
            </div>
        </header>
           <div class="container">
                   <ol class="breadcrumb">
                       <li><a href="index.html">Home</a></li>
                       <li class="active">About Us</li>
                       <li><a href="signup.html">Sign Up</a></li>
                       <li><a href="contact.html">Contact Us</a></li>
                       <li><a href="login.html">Login</a></li>
                   </ol>
             </div>
             <div class="container">
                 <div><h3>Department Report</h3></div>
                 <div class="container">
                 <div class="row row-content">

                     <div class="col-xs-6"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Available Beds</h3><small>Surgical Dept</small>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Ward One:</dt>
                            <dd>3/6</dd>
                            <dt>Ward Two:</dt>
                            <dd>6/10</dd>
                            <dt>Ward Three:</dt>
                            <dd>2/24</dd>
                            <dt>Ward Four:</dt>
                            <dd>8/16</dd>
                       </dl>
                    </div>
                </div>
</div>
                                         <div class="col-xs-6"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Available Beds</h3><small>Othopiadic Dept</small>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Ward One:</dt>
                            <dd>3/6</dd>
                            <dt>Ward Two:</dt>
                            <dd>6/10</dd>
                            <dt>Ward Three:</dt>
                            <dd>2/24</dd>
                            <dt>Ward Four:</dt>
                            <dd>8/16</dd>
                       </dl>
                    </div>
                </div>
</div>
                                         <div class="col-xs-6"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Available Beds</h3><small>X-Ray Dept</small>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Ward One:</dt>
                            <dd>3/6</dd>
                            <dt>Ward Two:</dt>
                            <dd>6/10</dd>
                            <dt>Ward Three:</dt>
                            <dd>2/24</dd>
                            <dt>Ward Four:</dt>
                            <dd>8/16</dd>
                       </dl>
                    </div>
                </div>
</div>
                                         <div class="col-xs-6"> 
        <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Available Beds</h3><small>Antenetal Dept</small>
                    </div>
                    <div class="panel-body">
                        <dl class="dl-horizontal">
                            <dt>Ward One:</dt>
                            <dd>3/6</dd>
                            <dt>Ward Two:</dt>
                            <dd>6/10</dd>
                            <dt>Ward Three:</dt>
                            <dd>2/24</dd>
                            <dt>Ward Four:</dt>
                            <dd>8/16</dd>
                       </dl>
                    </div>
                </div>
</div>
    <div class="btn-primary pull-right" role="group">
      Total Beds Available: <label> 20/100</label><br>
        <a type="button" class="btn btn-danger" href="deptReport.html"><i class="fa fa-user"></i> Print Report</a>
    </div>  
                </div>

    
   </div>
    </div>
<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>