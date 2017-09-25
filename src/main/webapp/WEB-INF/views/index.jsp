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

<title>Login</title>

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
		<div class="row">
			<div class="col-md-11"></div>
			<div class="col-md-1"><a href="#">Sign Up</a></div>
		</div>
	</div>
	
	<div class="container">
		
	</div>
	
	<div class="container" style="background: radial-gradient(skyblue, white);">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<img src='././resources/images/realmadrid.jpg' class="img-rounded" alt="Hala Madrid" width="100%" height="100%">	
			</div>
			<div class="col-md-4"></div>
		</div>
		<br><br><br><br>
		
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form action="./select" method="post">
		  			<div class="input-group">
    						<input id="username" type="text" class="form-control" name="username" placeholder="Username or Email">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  					</div>
  					<br>
		  			<div class="input-group">
    						<input id="password" type="password" class="form-control" name="password" placeholder="Password">
    						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    					</div>
    					<br>
    					<div class="row">
    						<div class="col-md-10"></div>
    						<div class="col-md-2">
    							<button type="submit" class="btn btn-default" style="background: lightblue; width: 100%;">Log In</button>
    						</div>
    					</div>
		  			
				</form>
			</div>
			<div class="col-md-3"></div>
		</div>
		
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4" style="color: red;">${message }</div>
			<div class="col-md-4"></div>
		</div>
			
	</div>
</body>
</html>
