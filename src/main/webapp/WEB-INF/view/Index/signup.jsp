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
                            <li><a href="aboutus.html"><span class="glyphicon glyphicon-info-sign"></span>About Us</a></li>
                               <li class="active" data-target="#myModal"><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                               <li><a href="contact.html"><span class="glyphicon glyphicon-envelope"></span>Contact Us</a></li>
                               <li class="dropdown">
                                <a href="login.html" class="dropdown-toggle" data-toggle="dropdown"
                                 role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span>
                                 Login <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="login.html">Admin</a></li>
                                    <li><a href="#">Administrator</a></li>
                                    <li><a href="#">HR</a></li>
                                    <li><a href="#">Doctor</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Appointments</li>
                                    <li><a href="#">Outdoor Patients</a></li>
                                    <li><a href="#">Indoor Patients</a></li>
                                </ul>
                             </li>
                           </ul>
                       </div>
                       </div>
                   </nav>
               <header class="jumbotron">
                   <div class="container">
                    <div class="row row-header">
                        <div class="col-xs-12 col-sm-8">
                            <h1>Finglas Hospital Board - sign-up</h1>
                            <p style="padding:40px;"></p>
                            <p>We take inspiration from the World's best cuisines, and create a unique fusion experience. Our lipsmacking creations will tickle your culinary senses!</p>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                        </div>
                    </div>
                </div>
            </header>
               <div class="container">
               <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="aboutus.html">About</a></li>
                    <li class="active">Sign Up</li>
                   <li><a href="contact.html">Contact</a></li>
                    <li><a href="login.html">Login</a></li>
                </ol>
            </div>

<div class="container">
<div class="row row-content">
<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">Login modal</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    ×</button>
                <h4 class="modal-title" id="myModalLabel">
                    Login/Registration - <a href="http://www.jquery2dotnet.com">jquery2dotnet.com</a></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-8" style="border-right: 1px dotted #C2C2C2;padding-right: 30px;">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
                            <li><a href="#Registration" data-toggle="tab">Registration</a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="Login">
                                <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">
                                        Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="email1" placeholder="Email" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1" class="col-sm-2 control-label">
                                        Password</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Email" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary btn-sm">
                                            Submit</button>
                                        <a href="javascript:;">Forgot your password?</a>
                                    </div>
                                </div>
                                </form>
                            </div>
                            <div class="tab-pane" id="Registration">
                                <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">
                                        Name</label>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select class="form-control">
                                                    <option>Admin</option>
                                                    <option>User</option>
                                                    <option>Doctor</option>
                                                </select>
                                            </div>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" placeholder="Name" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-sm-2 control-label">
                                        Email</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="email" placeholder="Email" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="mobile" class="col-sm-2 control-label">
                                        Mobile</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="mobile" placeholder="Mobile" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-sm-2 control-label">
                                        Password</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="password" placeholder="Password" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-10">
                                        <button type="button" class="btn btn-primary btn-sm">
                                            Save & Continue</button>
                                        <button type="button" class="btn btn-default btn-sm">
                                            Cancel</button>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div id="OR" class="hidden-xs">
                            OR</div>
                    </div>
                    <div class="col-md-4">
                        <div class="row text-center sign-with">
                            <div class="col-md-12">
                                <h3>
                                    Sign in with</h3>
                            </div>
                            <div class="col-md-12">
                                <div class="btn-group btn-group-justified">
                                    <a href="#" class="btn btn-primary">Facebook</a> <a href="#" class="btn btn-danger">
                                        Google</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Menu</a></li>
                                <li><a href="#">Contact</a></li>
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