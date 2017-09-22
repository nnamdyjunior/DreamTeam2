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
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- JQuery -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>HVAC Fans</title>

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
    
</style>
</head>
<body>

    <div class="container">

       <div class="row">
            <div class="col-md-3" id="sidebar">
                <div class="well well-sm">
					<p>
  						<input type="text" id="airflow" readonly style="border:0; color:black; width:100%">
					</p>
 
					<div id="slider-range"></div>
            		</div>
            		
            		<div class="well well-sm">
					<p>
  						<input type="text" id="maxPower" readonly style="border:0; color:black; width:100%">
					</p>
 
					<div id="slider-range2"></div>
            		</div>
            		
            		<div class="well well-sm">
					<p>
  						<input type="text" id="sound" readonly style="border:0; color:black; width:100%">
					</p>
 
					<div id="slider-range3"></div>
            		</div>
            		
            		<div class="well well-sm">
					<p>
  						<input type="text" id="diameter" readonly style="border:0; color:black; width:100%">
					</p>
 
					<div id="slider-range4"></div>
            		</div>
            		
            		<div class="well well-sm">
					<p>
  						<input type="text" id="firm" readonly style="border:0; color:black; width:100%">
					</p>
 
					<div id="slider-range5"></div>
            		</div>
            		
            		<div class="well well-sm">
					<p>
  						<input type="text" id="global" readonly style="border:0; color:black; width:100%">
					</p>
 
					<div id="slider-range6"></div>
            		</div>
			</div>
            <div class="col-md-9" id="fanslist">
                <div class="row">
                		<c:forEach items="${fansList}" var="fan">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
					    		<div class="thumbnail">
					    		<%-- <d:param name="" value=""></d:param>
					    		"<d:url value="/resources/images/fancom.jpg" />" --%>
					      		<img src='<d:url value="/resources/images/${fan.itemImg }.png"></d:url> ' 
					      			 alt="..."
					      			 width="40px" height="40px">
					      		<div class="caption">
					        			<h5>${fan.itemName }</h5>
					        			<p>${fan.productType } <br>${fan.year } <br>${fansSettingsList.get(2).model }</p>
					        			
					        			<p><a href="./projects" class="btn btn-primary" role="button">Add to Project</a></p>
					      		</div>
					    		</div>
					  	</div>
					</c:forEach>
                		
				  	
				  	
                </div>
            </div>
       </div>

    </div>
    
    <script>
    $( function() {
        $( "#slider-range" ).slider({
          range: true,
          min: 0,
          max: 10000,
          values: [ 5000, 10000 ],
          slide: function( event, ui ) {
            $( "#airflow" ).val( "Airflow(CFM): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
          }
        });
        $( "#airflow" ).val( "Airflow(CFM): " + $( "#slider-range" ).slider( "values", 0 ) +
          " - " + $( "#slider-range" ).slider( "values", 1 ) );
        
        $( "#slider-range2" ).slider({
            range: true,
            min: 5,
            max: 100,
            values: [ 10, 25 ],
            slide: function( event, ui ) {
              $( "#maxPower" ).val( "Max Power (W): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
            }
          });
          $( "#maxPower" ).val( "Max Power (W): " + $( "#slider-range2" ).slider( "values", 0 ) +
            " - " + $( "#slider-range2" ).slider( "values", 1 ) );
          
          $( "#slider-range3" ).slider({
              range: true,
              min: 20,
              max: 200,
              values: [ 20, 35 ],
              slide: function( event, ui ) {
                $( "#sound" ).val( "Mx speed snd(dBA): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
              }
            });
            $( "#sound" ).val( "Mx speed snd(dBA): " + $( "#slider-range3" ).slider( "values", 0 ) +
              " - " + $( "#slider-range3" ).slider( "values", 1 ) );
            
            $( "#slider-range4" ).slider({
                range: true,
                min: 18,
                max: 75,
                values: [ 18, 60 ],
                slide: function( event, ui ) {
                  $( "#diameter" ).val( "Fan sweep dia(in): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
                }
              });
              $( "#diameter" ).val( "Fan sweep dia(in): " + $( "#slider-range4" ).slider( "values", 0 ) +
                " - " + $( "#slider-range4" ).slider( "values", 1 ) );
              
              $( "#slider-range5" ).slider({
                  range: true,
                  min: 0,
                  max: 10,
                  values: [ 0, 10 ],
                  slide: function( event, ui ) {
                    $( "#firm" ).val( "Firm: " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
                  }
                });
                $( "#firm" ).val( "Firm: " + $( "#slider-range5" ).slider( "values", 0 ) +
                  " - " + $( "#slider-range5" ).slider( "values", 1 ) );
                
                $( "#slider-range6" ).slider({
                    range: true,
                    min: 0,
                    max: 1492,
                    values: [ 0, 1000 ],
                    slide: function( event, ui ) {
                      $( "#global" ).val( "Global: " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
                    }
                  });
                  $( "#global" ).val( "Global: " + $( "#slider-range6" ).slider( "values", 0 ) +
                    " - " + $( "#slider-range6" ).slider( "values", 1 ) );
      } );
    </script>
</body>
</html>