<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<nav class="navbar navbar-inverse " role="navigation">
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
       <div id="navbar" class="nav navbar-nav navbar-collapse collapse pull-right">
       <div class="col-xs-12 btn btn-primary btn-block" type="button">
           <a type="button" class="btn btn-success">Manage Users</a>
           <a type="button" class="btn btn-success">Manage Departments</a>
           <a type="button" class="btn btn-success">Manage Personnel</a>          
       </div>
       </div>
   </nav>