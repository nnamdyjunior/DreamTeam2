<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="d" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./styles/fansPage.css">

<!-- Set the page to the width of the device and set the zoom level -->
<meta name="viewport" content="width = device-width, initial-scale = 1">

<!-- Bootstrap --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- JQuery -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Item Information</title>

<style>
    html{
        background: radial-gradient(skyblue, white);
    }

    div#sidebar{
        background: radial-gradient(skyblue, white);
    }

    div#fanslist{
        background: radial-gradient(skyblue, white);
    }
    
    div#thumbContents{
    		text-align: center;
    }
    
    div#thumbContents:hover{
    		background: skyblue;
    }
</style>
</head>
<body>
	<div class="jumbotron">
		<div class="col-md-3" id="logo" style="position: relative; top: -25px;">
			<img src='<d:url value="/resources/images/realmadrid.jpg"></d:url> ' class="img-rounded" alt="Hala Madrid" width="200px" height="50px">	
		</div>
		<div class="col-md-6" id="search" style="position: relative; top: -15px;">
			<form action="#">
				<div class="input-group" >
					<span class="input-group-addon" style="position: relative; top: -8px;">
						<div class="dropdown" >
     						<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">HVAC Fans
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Air Conditioners</a></li>
	    						</ul>
	    					</div>
					</span>
	    				<input type="text" class="form-control" placeholder="search...">
	    				<div class="input-group-btn">
	      				<button class="btn btn-default" type="submit" style="position: relative; top: -8px;">
	        					<i class="glyphicon glyphicon-search"></i>
	      				</button>
	    				</div>
	  			</div>
	  		</form>
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-2" id="user" style="position: relative; top: -25px;">
			<div class="dropdown">
     			<button class="btn btn-link" type="button" data-toggle="dropdown">Ramos
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="./projects">Manage Projects</a></li>
					<li><a href="#">Edit Profile</a></li>
					<li class="divider"></li>
					<li><a href="#">Sign Out</a></li>
	    			</ul>
	    			<img src='<d:url value="/resources/images/ramos.jpg"></d:url> ' class="img-circle" alt="Sergio Ramos" width="50px" height="50px">
	    		</div>
	    		
		</div>
	</div>
	
    <div class="container">
    		<div class="row">
    			<div class="col-md-1">
    			
    			</div>
    			<div class="col-md-5">
    			
    			</div>
    			<div class="col-md-5">
    			
    			</div>
    			<div class="col-md-1">
    			
    			</div>
    		</div>
    		<ul class="nav nav-pills">
		    <li class="active"><a data-toggle="pill" href="#summary">Product Summary</a></li>
		    <li><a data-toggle="pill" href="#details">Product Details</a></li>
		    <li><a data-toggle="pill" href="#documentation">Product Documentation</a></li>
		    <li><a data-toggle="pill" href="#contacts">Contacts</a></li>
		</ul>
    		<div class="tab-content">
		  <div id="summary" class="tab-pane fade in active">
		      <h3>Product Summary</h3>
		  	<div class="row">
		  		<div class="col-md-6">
		  			<table class="table" style="width:100%;">
		  				<thead>
		  					<tr><th colspan="2">DESCRIPTION</th></tr>
		  				</thead>
		  				<tbody>
		  					<tr><td style="background: lightgray;">Manufacturer</td><td>xx</td></tr>
		  					<tr><td style="background: lightgray;">Series</td><td>${fansSettingsList.get(item).series }</td></tr>
		  					<tr><td style="background: lightgray;">Model</td><td>${fansSettingsList.get(item).model }</td></tr>
		  				</tbody>
		  			</table>
		  			
		  			<table class="table" style="width:100%;">
		  				<thead>
		  					<tr><th colspan="2">TYPE</th></tr>
		  				</thead>
		  				<tbody>
		  					<tr><td style="background: lightgray;">Use Type</td><td>xx</td></tr>
		  					<tr><td style="background: lightgray;">Application</td><td>xx</td></tr>
		  					<tr><td style="background: lightgray;">Mounting Location</td><td>xx</td></tr>
		  					<tr><td style="background: lightgray;">Accessories</td><td>xx</td></tr>
		  					<tr><td style="background: lightgray;">Model Year</td><td>${fansList.get(item).year }</td></tr>
		  				</tbody>
		  			</table>
		  		</div>
		  		<div class="col-md-6">
		  			<table class="table" style="width:100%;">
		  				<thead>
		  					<tr><th colspan="2">TECHNICAL SPECIFICATIONS</th></tr>
		  				</thead>
		  				<tbody>
		  					<tr><td style="background: lightgray;">Airflow (CFM)</td><td>${fansSettingsList.get(item).airflow }</td></tr>
		  					<tr><td style="background: lightgray;">Power (W)</td><td>${fansSettingsList.get(item).maxPower }</td></tr>
		  					<tr><td style="background: lightgray;">Operating Voltage (VAC)</td><td>${fansSettingsList.get(item).voltage }</td></tr>
		  					<tr><td style="background: lightgray;">Fan Speed (RPM)</td><td>${fansSettingsList.get(item).fanSpeed }</td></tr>
		  					<tr><td style="background: lightgray;">Number of Fan Speeds</td><td>${fansSettingsList.get(item).numFanSpeed }</td></tr>
		  					<tr><td style="background: lightgray;">Sound at Max Speed (dBA)</td><td>${fansSettingsList.get(item).maxSpeedSound }</td></tr>
		  					<tr><td style="background: lightgray;">Fan Sweep Diameter (in)</td><td>${fansSettingsList.get(item).fanSweepDia }</td></tr>
		  					<tr><td style="background: lightgray;">Height (in)</td><td>${fansSettingsList.get(item).height }</td></tr>
		  					<tr><td style="background: lightgray;">Weight (lbs)</td><td>${fansSettingsList.get(item).weight }</td></tr>
		  				</tbody>
		  			</table>
		  		</div>
		  	</div> 	 
		  </div>
		  
		  <div id="details" class="tab-pane fade">
		      <h3>Product Details</h3>
		      <table class="table" style="width:100%;">
		  				<thead>
		  					<tr><th colspan="2">SERIES INFORMATION</th></tr>
		  				</thead>
		  				<tbody>
		  					<tr><td style="background: lightgray;">Airfoils - </td></tr>
		  					<tr><td style="background: white;">Airfoil Finishes - </td></tr>
		  					<tr><td style="background: lightgray;">Hardware Finishes - </td></tr>
		  					<tr><td style="background: white;">Motor - </td></tr>
		  					<tr><td style="background: lightgray;">Exceeds ENERGY STAR fan efficiency requirements by up to</td></tr>
		  					<tr><td style="background: white;">Controls - </td></tr>
		  					<tr><td style="background: lightgray;">Onboard Sensors - </td></tr>
		  					<tr><td style="background: white;">Environment - </td></tr>
		  					<tr><td style="background: lightgray;">Accessories - </td></tr>
		  					<tr><td style="background: white;">Made in - </td></tr>
		  				</tbody>
		  			</table>
		  </div>
		   <div id="documentation" class="tab-pane fade">
		      <h3>Product Documentation</h3>
		      Something<br>
		      Something Else.<br>
		      Another Irrelevant Thing..<br>
		      The End...
		   </div>
		   <div id="contacts" class="tab-pane fade">
		      <h3>Contacts</h3>
		      <div class="row">
		      	<div class="col-md-6">
		      		<table class="table">
		      			<tr><td colspan="2">SALES REPRESENTATIVE</td></tr>
		      			<tr><td style="background: lightgray;">Name</td><td>xx</td></tr>
		      			<tr><td style="background: lightgray;">Phone</td><td>xx</td></tr>
		      			<tr><td style="background: lightgray;">Email</td><td>xx</td></tr>
		      			<tr><td style="background: lightgray;">Web</td><td>xx</td></tr>
		      		</table>
		      	</div>
		      	<div class="col-md-6">
		      		<table class="table">
		      			<tr><td colspan="2">MANUFACTURER</td></tr>
		      			<tr><td style="background: lightgray;">Department</td><td>xx</td></tr>
		      			<tr><td style="background: lightgray;">Phone</td><td>xx</td></tr>
		      			<tr><td style="background: lightgray;">Email</td><td>xx</td></tr>
		      			<tr><td style="background: lightgray;">Web</td><td>xx</td></tr>
		      		</table>
		      	</div>
		      </div>
		   </div>
		 </div>
    </div>
    
</body>
</html>