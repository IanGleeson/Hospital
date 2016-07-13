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
            <p style="padding:40px;"></p>
            
        </div>
      
    </div>
</div>
</header>
<div class="container">

<div class="row row-content">
        <div class="btn btn-primary pull-right">
            <a type="button" class="btn btn-success" href="#">Hello Admin</a>
        <a type="button" class="btn btn-primary" href="#">Log-Out</a>
        </div>
 <div class="row row-content">
<div class="col-xs-12 col-sm-9 offset-1"><h3>Add User</h3></div>
<div class="col-xs-12 col-sm-9 col-sm-offset-1">
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label for="username" class="col-sm-2 control-label">User Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter User Name">
            </div>
            <label for="password" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="password" name="password" placeholder="Enter Password">
            </div>
            <label for="name" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter User Name">
            </div>
            <label for="usertypee" class="col-sm-2 control-label">User Type</label>
            <div class="col-sm-5 col-sm-offset-5">
            <select class="form-control">
                                <option>Doctor</option>
                                <option>Admin</option>
                                <option>HR</option>
                            </select>
                        </div>
            </div>

                        
                        
       
        <div class="pull-right">
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
        
                </form>

     </div>
    </div>
    
</div>
    
</div>

<jsp:include page="/WEB-INF/view/Index/footer.jsp"></jsp:include>
