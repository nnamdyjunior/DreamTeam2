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

<title>Comparison</title>
</head>
<body>

<div class="jumbotron" style="background: radial-gradient(skyblue, white);">
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
					<li><a href="./logout">Sign Out</a></li>
	    			</ul>
	    			<img src='<d:url value="/resources/images/ramos.jpg"></d:url> ' class="img-circle" alt="Sergio Ramos" width="50px" height="50px">
	    		</div>
	    		
		</div>
	</div>
	
	<div class="container">
		<table class="table table-bordered">
			<tr>
				<td></td>
				<c:forEach items="${items }" var="item">
					<td><img src='<d:url value="/resources/images/${fansList.get(item).itemImg }.jpg"></d:url> ' 
					      			 alt="..."
					      			 width="150px" height="150px">
					</td>
				</c:forEach>
			</tr>
			<tr>
				<td>DESCRIPTION</td>
				<c:forEach items="${items }" var="item">
					<td></td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Manufacturer</td>
				<c:forEach items="${items }" var="item">
					<td>${fansSettingsList.get(item).brand }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Series</td>
				<c:forEach items="${items }" var="item">
					<td>${fansSettingsList.get(item).series }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Model</td>
				<c:forEach items="${items }" var="item">
					<td>${fansSettingsList.get(item).model }</td>
				</c:forEach>
			</tr>
			<tr>
				<td>TYPE</td>
				<c:forEach items="${items }" var="item">
					<td></td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Use Type</td>
				<c:forEach items="${items }" var="item">
					<td>${fansList.get(item).productType }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Application</td>
				<c:forEach items="${items }" var="item">
					<td>${fansList.get(item).itemName }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Mounting Location</td>
				<c:forEach items="${items }" var="item">
					<td>${fansList.get(item).itemName }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Accessories</td>
				<c:forEach items="${items }" var="item">
					<td>${fansList.get(item).itemName }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Model Year</td>
				<c:forEach items="${items }" var="item">
					<td>${fansList.get(item).year }</td>
				</c:forEach>
			</tr>
			<tr>
				<td>TECHNICAL SPECIFICATIONS</td>
				<c:forEach items="${items }" var="item">
					<td></td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Airflow (CFM)</td>
				<c:forEach items="${items }" var="item">
					<td>${fansSettingsList.get(item).airflow }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Power (W)</td>
				<c:forEach items="${items }" var="item">
					<td>${fansSettingsList.get(item).maxPower }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Operating Voltage (VAC)</td>
				<c:forEach items="${items }" var="item">
					<td>${fansSettingsList.get(item).voltage }</td>
				</c:forEach>
			</tr>
			<tr>
				<td bgcolor="lightgray">Fan Speed (RPM)</td>
				<c:forEach items="${items }" var="item">
					<td>${fansSettingsList.get(item).fanSpeed }</td>
				</c:forEach>
			</tr>
		</table>
		
	</div>

</body>
</html>