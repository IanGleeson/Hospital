<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="defaultmenu.jsp"></jsp:include>
<header class="jumbotron">
   <div class="container">
    <div class="row row-header">
        <div class="col-xs-12 col-sm-8">
            <h1>Finglas Hospital Board</h1>
            <p style="padding:40px;"></p>
            <p>We take inspiration from the World's best clinics, and create a unique fusion experience. Your feedback and comments are most welcome. Please use our Comment Form or email us at softwaredeveloper@ftc.ie. It is our policy not to offer advice on conditions, injuries or treatment via email correspondence.</p>
        </div>
        <div class="col-xs-12 col-sm-4">
        </div>
    </div>
</div>
</header>
<div class="container">
<div class="row">
    <ul class="breadcrumb">
   		<li><a href="index.jsp">Home</a></li>
		<li><a href="Index?action=aboutUs">About Us</a></li>                
		<li class="active"><a href="Index?action=contactUs">Contact Us</a></li>
    </ul>
</div>
   <div class="col-xs-12"><h3>Contact Us</h3><hr></div>
</div>
<div class="row row-content">
    <div class="col-xs-12">
        <p style="padding:20px;"></p>
        <h3 align=center>Location Information</h3>
    </div>
    <div class="col-xs-12 col-sm-4 col-sm-offset-1">
        <h5>Our Address</h5>
        <address style="font-size: 100%">
              121, Poppintree Road<br>
              Jamestown Road, Finglas<br>
              Dublin 11<br>
              <i class="fa fa-phone"></i>: +353 1 814 0250<br>
              <i class="fa fa-fax"></i>: +353 1 834 6336<br>
              <i class="fa fa-envelope"></i>:
            <a href="mailto:softwaredeveloper@ftc.ie">softwaredeveloper@ftc.ie</a>
        </address>
    </div>     
</div>
    <div class="col-xs-12 col-sm-6 col-sm-offset-1"><h5>Map of our Location</h5></div>
<div class="col-xs-12 col-sm-11 col-sm-offset-1">
    
    <div class="btn-group" role="group" aria-label="...">
        <a type="button" class="btn btn-primary" href="tel:+35318140250"><i class="fa fa-phone"></i> Call</a>
        <a type="button" class="btn btn-info"><i class="fa fa-skype"></i> Skype</a>
        <a type="button" class="btn btn-success" href="mailto:softwaredeveloper@ftc.ie"><i class="fa fa-envelope-o"></i> Email</a>
    </div>
</div>

<div class="row row-content">
<div class="col-xs-12 col-sm-offset-1"><h3>Send us your Feedback</h3></div>
<div class="col-xs-12 col-sm-9 col-sm-offset-1">
    <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">First Name</label>                        <div class="col-sm-10">
                        <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter First Name">
                        </div>
                        <label for="lastname" class="col-sm-2 control-label">Last Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter Last Name">
                        </div>
                            <label for="telnum" class="col-xs-12 col-sm-2 control-label">Contact Tel.</label>
                        <div class="col-xs-5 col-sm-4 col-md-3">
                            <div class="input-group">
                                <div class="input-group-addon">(</div>
                                    <input type="tel" class="form-control" id="areacode" name="areacode" placeholder="Area code">
                                <div class="input-group-addon">)</div>
                            </div>
                    </div>
                        <div class="col-xs-7 col-sm-6 col-md-7">
                                    <input type="tel" class="form-control" id="telnum" name="telnum" placeholder="Tel. number">
                        </div>      
                        </div>

                        <label for="emailid" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="emailid" name="emailid" placeholder="Email">
                        </div>
                    
        <div class="checkbox col-sm-5 col-sm-offset-2">
                            <label class="checkbox-inline">
                                <input type="checkbox" name="approve" value="">
                                <strong>May we contact you?</strong>
                            </label>
                        </div>
                        <div class="col-sm-3 col-sm-offset-1">
                            <select class="form-control">
                                <option>Tel.</option>
                                <option>Email</option>
                            </select>
                        </div>
        <label for="feedback" class="col-sm-2 control-label">Your Feedback</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="feedback" name="feedback" rows="12"></textarea>
                        </div>
        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Send Feedback</button>
                        </div>
                </form>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>