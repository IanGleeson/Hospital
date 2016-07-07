<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="defaultmenu.jsp"></jsp:include>
             
               <header class="jumbotron">
                   <div class="container">
                    <div class="row row-header">
                        <div class="col-xs-12 col-sm-8">
                            <h1>Finglas Hospital Management Application</h1>
                            <p style="padding:40px;"></p>
                            <p>We take inspiration from the World's best clinics, and create a unique fusion experience. Our treatments will tickle your culinary senses!</p>
                        </div>
                        <div class="col-xs-12 col-sm-4">
                        </div>
                    </div>
                </div>
            </header>

            <div>
               
                    <div class="container">
                
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="aboutus.html">About Us</a></li>                    
                    <li><a href="contact.html">Contact Us</a></li>
                    <li class="active">Login</li>
                </ol>
            </div>
                    
               </div>   

<div class="container">
    <div class="row">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please sign in</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="username" name="username" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		    <div class="checkbox">
			    	    	    <label>
                                    <input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	    </label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                <a href="contact.html">Forgot Password</a>
			    	        </div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>

 <jsp:include page="footer.jsp"></jsp:include>