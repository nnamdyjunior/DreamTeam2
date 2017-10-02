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

<title>HVAC Fans</title>

<style>
    html{
        background: white;
    }

    div#sidebar{
        background: white;
    }

    div#fanslist{
        background: white;
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
	    				<input type="text" class="form-control" placeholder="search..." id="searchBar1">
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

       <div class="row">
            <div class="col-md-3" id="sidebar">
            		<div>
            			Search:&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn">Save</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn" onclick="clearSearch()">Clear</button>
            		</div>
            		<br>
            		<ul class="nav nav-pills">
  					<li class="active"><a href="#">Products</a></li>
  					<li><a href="#">Projects</a></li>
				</ul>
				
				<!-- collapsible product type -->
				<a href="#prodType" class="btn btn-info" data-toggle="collapse" style="width:100%; background: radial-gradient(skyblue, white); color:black;">Product Type</a>
					
				<div id="prodType" class="collapse">
				</div>
				
				<!-- collapsible technical specs -->
				<a href="#techSpecs" class="btn btn-info" data-toggle="collapse" style="width:100%; background: radial-gradient(skyblue, white); color:black;">Technical Specifications</a>
					
				<div id="techSpecs" class="collapse">
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
	                        <input type="text" id="height" readonly style="border:0; color:black; width:100%">
	                    </p>
	
	                    <div id="slider-range7"></div>
	            		</div>
				</div>
                
                <!-- collapsible brand -->
				<a href="#brandType" class="btn btn-info" data-toggle="collapse" style="width:100%; background: radial-gradient(skyblue, white); color:black;">Brand</a>
					
				<div id="brandType" class="collapse">
				</div>
				
                <!-- collapsible past selections -->
            		<a href="#pastSel" class="btn btn-info" data-toggle="collapse" style="width:100%; background: radial-gradient(skyblue, white); color:black;">Past Selections</a>
					
				<div id="pastSel" class="collapse">
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
                
                <!-- collapsible certifications -->
				<a href="#certifications" class="btn btn-info" data-toggle="collapse" style="width:100%; background: radial-gradient(skyblue, white); color:black;">Certifications</a>
					
				<div id="certifications" class="collapse">
				</div> 
				   
			</div>
            <div class="col-md-9" id="fanslist">
            		<div class="row">
            			<div class="col-md-10">
            			<a href="./select" style="font-size:14pt; font-weight:bold;">Mechanical ></a>
            			<a style="font-size:14pt; font-weight:bold;">HVAC Fans</a>
            			</div>
            			<div class="col-md-2">
            				<button class="btn btn-primary" onclick="redirect()" style="width:100%;">Compare</button>
            			</div>
            		</div>
            		<br>
                <div class="row">
                		<c:forEach var="i" begin="0" end="9" step="1" >
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" id="thumbContents">
					    		<div class="thumbnail">
					    		<%-- <d:param name="" value=""></d:param>
					    		"<d:url value="/resources/images/fancom.jpg" />" --%>
					      		<img src='<d:url value="/resources/images/${fansList.get(i).itemImg }.jpg"></d:url> ' 
					      			 alt="..."
					      			 width="150px" height="150px">
					      		<div class="caption">
					        			<h5>${fansSettingsList.get(i).brand }</h5>
					        			<h5>${fansSettingsList.get(i).series }</h5>
					        			<h5>${fansSettingsList.get(i).model }</h5>
					        			<div style="background: lightgray;" onclick="selectItem(${i })">
					        				<p>${fansSettingsList.get(i).airflow } CFM 
						        				<br>${fansSettingsList.get(i).maxPower }W at max speed 
						        				<br>${fansSettingsList.get(i).maxSpeedSound }dBA at max speed
						        				<br>${fansSettingsList.get(i).fanSweepDia }" fan sweep diameter
					        				</p>
					        			</div>
					        			<div style="color:red;">
					        				Past Specifications:
					        				<br>${fansSettingsList.get(i).firm } firm / ${fansSettingsList.get(i).global } global
					        			</div>
                                        <input type="text" value=${fansSettingsList.get(i).airflow} hidden/>
                                        <input type="text" value=${fansSettingsList.get(i).maxPower} hidden/>
                                        <input type="text" value=${fansSettingsList.get(i).maxSpeedSound} hidden/>
                                        <input type="text" value=${fansSettingsList.get(i).fanSweepDia} hidden/>
                                        <input type="text" value=${fansSettingsList.get(i).height} hidden/>
                                        <input type="text" value=${fansSettingsList.get(i).firm} hidden/>
                                        <input type="text" value=${fansSettingsList.get(i).global} hidden/>
					        			
					        				<input type="checkbox" id="${i }"/> Compare 
					        				<div class="dropdown">
					        				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Add to
    										<span class="caret"></span>
    										</button>
    										<ul class="dropdown-menu">
    											<c:forEach items="${projectList }" var="pList">
    												<li><a href="#">${pList.projectName }</a></li>
    											</c:forEach>
									    </ul>
									    </div>
									
					      		</div>
					    		</div>
					  	</div>
					</c:forEach>
                		
				  	
                </div>
                <!-- slider values -->
                <input id="airflowValueMin" type="text" value="0" hidden/>
                <input id="airflowValueMax" type="text" value="10000" hidden/>
                <input id="maxPowerMin" type="text" value="5" hidden/>
                <input id="maxPowerMax" type="text" value="100" hidden/>
                <input id="maxSpeedSoundMin" type="text" value="20" hidden/>
                <input id="maxSpeedSoundMax" type="text" value="200" hidden/>
                <input id="fanSweepDiaMin" type="text" value="18" hidden/>
                <input id="fanSweepDiaMax" type="text" value="75" hidden/>
                <input id="heightMin" type="text" value="12" hidden/>
                <input id="heightMax" type="text" value="78" hidden/>
                <input id="firmMin" type="text" value="0" hidden/>
                <input id="firmMax" type="text" value="10" hidden/>
                <input id="globalMin" type="text" value="0" hidden/>
                <input id="globalMax" type="text" value="1492" hidden/>
            </div>
       </div>
 
    </div>
    
    <script>
    //const search = document.querySelector('searchBar1');
    document.getElementById('searchBar1').addEventListener('keyup', function(e){
    		const term = e.target.value.toLowerCase();
    		const items = [];
    		var content = document.getElementsByClassName('col-lg-3 col-md-3 col-sm-3 col-xs-3');
            Array.from(content).forEach(function(item){
                var nom = item.getElementsByTagName('h5')[1].textContent.toLowerCase();
                if(nom.indexOf(term) != -1){
                		item.style.display = 'block';
                }
                else{
                		item.style.display = 'none';
                }
            });
        
       
    		
    });
    function clearSearch(){
    		//clear airflow
    		$( "#slider-range" ).slider({values: [ 0, 10000 ]});
    		document.getElementById("airflowValueMin").setAttribute("value", 0);
        document.getElementById("airflowValueMax").setAttribute("value", 10000);
        $( "#airflow" ).val( "Airflow(CFM): " + $( "#slider-range" ).slider( "values", 0 ) + " - " + $( "#slider-range" ).slider( "values", 1 ) );
        filter();
        
      	//clear maxPower
		$( "#slider-range2" ).slider({values: [ 5, 100 ]});
		document.getElementById("maxPowerMin").setAttribute("value", 0);
	    document.getElementById("maxPowerMax").setAttribute("value", 100);
	    $( "#maxPower" ).val( "MaxPower(W): " + $( "#slider-range2" ).slider( "values", 0 ) + " - " + $( "#slider-range2" ).slider( "values", 1 ) );
	    filter();
	    
	  	//clear Sound at max speed
		$( "#slider-range3" ).slider({values: [ 20, 200 ]});
		document.getElementById("maxSpeedSoundMin").setAttribute("value", 20);
	    document.getElementById("maxSpeedSoundMax").setAttribute("value", 200);
	    $( "#sound" ).val( "Mx speed snd(dBA): " + $( "#slider-range3" ).slider( "values", 0 ) + " - " + $( "#slider-range3" ).slider( "values", 1 ) );
	    filter();
	    
	  	//clear fan sweep diameter
		$( "#slider-range4" ).slider({values: [ 18, 75 ]});
		document.getElementById("fanSweepDiaMin").setAttribute("value", 0);
	    document.getElementById("fanSweepDiaMax").setAttribute("value", 100);
	    $( "#diameter" ).val( "MaxPower(W): " + $( "#slider-range4" ).slider( "values", 0 ) + " - " + $( "#slider-range4" ).slider( "values", 1 ) );
	    filter();
	    
	  	//clear firm
		$( "#slider-range5" ).slider({values: [ 0, 10 ]});
		document.getElementById("firmMin").setAttribute("value", 0);
	    document.getElementById("firmMax").setAttribute("value", 10);
	    $( "#firm" ).val( "Firm: " + $( "#slider-range5" ).slider( "values", 0 ) + " - " + $( "#slider-range5" ).slider( "values", 1 ) );
	    filter();
	    
	  	//clear global
		$( "#slider-range6" ).slider({values: [ 0, 1492 ]});
		document.getElementById("globalMin").setAttribute("value", 0);
	    document.getElementById("globalMax").setAttribute("value", 1492);
	    $( "#global" ).val( "Global: " + $( "#slider-range6" ).slider( "values", 0 ) + " - " + $( "#slider-range6" ).slider( "values", 1 ) );
	    filter();
	    
	  	//clear height
		$( "#slider-range7" ).slider({values: [ 12, 78 ]});
		document.getElementById("heightMin").setAttribute("value", 12);
	    document.getElementById("heightMax").setAttribute("value", 78);
	    $( "#height" ).val( "Height(in): " + $( "#slider-range7" ).slider( "values", 0 ) + " - " + $( "#slider-range7" ).slider( "values", 1 ) );
	    filter();
    }
    
    function selectItem(param) {
        window.location.href = "./viewInfo?item="+param;
    }

    function redirect() {
        var xxx = [];
        var content = document.getElementsByClassName('col-lg-3 col-md-3 col-sm-3 col-xs-3');
        Array.from(content).forEach(function(item){
            if(item.getElementsByTagName('input')[7].checked){
                xxx.push(item.getElementsByTagName('input')[7].id);
            }
        });
        //console.log(xxx.length);
        window.location.href = "./compareFans?items="+xxx;
    }

    function filter() {
        var content = document.getElementsByClassName('col-lg-3 col-md-3 col-sm-3 col-xs-3');
            Array.from(content).forEach(function(item){
                
                //document.getElementById('').getElementsByTagName('').entries();
                var airflow = parseInt(item.getElementsByTagName('input')[0].value);
                var maxPower = parseInt(item.getElementsByTagName('input')[1].value);
                var maxSpeedSound = parseInt(item.getElementsByTagName('input')[2].value);
                var fanSweepDia = parseInt(item.getElementsByTagName('input')[3].value);
                var height = parseInt(item.getElementsByTagName('input')[4].value);
                var firm = parseInt(item.getElementsByTagName('input')[5].value);
                var global = parseInt(item.getElementsByTagName('input')[6].value);

                var airflowValueMin = parseInt(document.getElementById("airflowValueMin").getAttribute("value"));
                var airflowValueMax = parseInt(document.getElementById("airflowValueMax").getAttribute("value"));
                var maxPowerMin = parseInt(document.getElementById("maxPowerMin").getAttribute("value"));
                var maxPowerMax = parseInt(document.getElementById("maxPowerMax").getAttribute("value"));
                var maxSpeedSoundMin = parseInt(document.getElementById("maxSpeedSoundMin").getAttribute("value"));
                var maxSpeedSoundMax = parseInt(document.getElementById("maxSpeedSoundMax").getAttribute("value"));
                var fanSweepDiaMin = parseInt(document.getElementById("fanSweepDiaMin").getAttribute("value"));
                var fanSweepDiaMax = parseInt(document.getElementById("fanSweepDiaMax").getAttribute("value"));
                var heightMin = parseInt(document.getElementById("heightMin").getAttribute("value"));
                var heightMax = parseInt(document.getElementById("heightMax").getAttribute("value"));
                var firmMin = parseInt(document.getElementById("firmMin").getAttribute("value"));
                var firmMax = parseInt(document.getElementById("firmMax").getAttribute("value"));
                var globalMin = parseInt(document.getElementById("globalMin").getAttribute("value"));
                var globalMax = parseInt(document.getElementById("globalMax").getAttribute("value"));

                var air = (airflow<airflowValueMin || airflow>airflowValueMax);
                var pwr = (maxPower<maxPowerMin || maxPower>maxPowerMax);
                var spd = (maxSpeedSound<maxSpeedSoundMin || maxSpeedSound>maxSpeedSoundMax);
                var fan = (fanSweepDia<fanSweepDiaMin || fanSweepDia>fanSweepDiaMax);
                var hgt = (height<heightMin || height>heightMax);
                var frm = (firm<firmMin || firm>firmMax);
                var glb = (global<globalMin || global>globalMax);
                if(air || pwr || spd || fan || hgt || frm || glb){
                    item.hidden = true;
                }else{
                    item.hidden = false;
                }

                console.log(item.getElementsByTagName('input')[7].checked)
                
            });
    }
         
    filter();
    
    $( function() {
        $( "#slider-range" ).slider({
          range: true,
          min: 0,
          max: 10000,
          values: [ 0, 10000 ],
          slide: function( event, ui ) {
            $( "#airflow" ).val( "Airflow(CFM): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
            document.getElementById("airflowValueMin").setAttribute("value", ui.values[ 0 ]);
            document.getElementById("airflowValueMax").setAttribute("value", ui.values[ 1 ]);
            filter();
          }
        });
        $( "#airflow" ).val( "Airflow(CFM): " + $( "#slider-range" ).slider( "values", 0 ) +
          " - " + $( "#slider-range" ).slider( "values", 1 ) );
        
        $( "#slider-range2" ).slider({
            range: true,
            min: 5,
            max: 100,
            values: [ 5, 100 ],
            slide: function( event, ui ) {
              $( "#maxPower" ).val( "Max Power (W): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
              document.getElementById("maxPowerMin").setAttribute("value", ui.values[ 0 ]);
              document.getElementById("maxPowerMax").setAttribute("value", ui.values[ 1 ]);
              filter();
            }
          });
          $( "#maxPower" ).val( "Max Power (W): " + $( "#slider-range2" ).slider( "values", 0 ) +
            " - " + $( "#slider-range2" ).slider( "values", 1 ) );
          
          $( "#slider-range3" ).slider({
              range: true,
              min: 20,
              max: 200,
              values: [ 20, 200 ],
              slide: function( event, ui ) {
                $( "#sound" ).val( "Mx speed snd(dBA): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
                document.getElementById("maxSpeedSoundMin").setAttribute("value", ui.values[ 0 ]);
                document.getElementById("maxSpeedSoundMax").setAttribute("value", ui.values[ 1 ]);
                filter();
              }
            });
            $( "#sound" ).val( "Mx speed snd(dBA): " + $( "#slider-range3" ).slider( "values", 0 ) +
              " - " + $( "#slider-range3" ).slider( "values", 1 ) );
            
            $( "#slider-range4" ).slider({
                range: true,
                min: 18,
                max: 75,
                values: [ 18, 75 ],
                slide: function( event, ui ) {
                  $( "#diameter" ).val( "Fan sweep dia(in): " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
                  document.getElementById("fanSweepDiaMin").setAttribute("value", ui.values[ 0 ]);
                  document.getElementById("fanSweepDiaMax").setAttribute("value", ui.values[ 1 ]);
                  filter();
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
                    document.getElementById("firmMin").setAttribute("value", ui.values[ 0 ]);
                    document.getElementById("firmMax").setAttribute("value", ui.values[ 1 ]);
                    filter();
                  }
                });
                $( "#firm" ).val( "Firm: " + $( "#slider-range5" ).slider( "values", 0 ) +
                  " - " + $( "#slider-range5" ).slider( "values", 1 ) );
                
                $( "#slider-range6" ).slider({
                    range: true,
                    min: 0,
                    max: 1492,
                    values: [ 0, 1492 ],
                    slide: function( event, ui ) {
                      $( "#global" ).val( "Global: " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
                      document.getElementById("globalMin").setAttribute("value", ui.values[ 0 ]);
                      document.getElementById("globalMax").setAttribute("value", ui.values[ 1 ]);
                      filter();
                    }
                  });
                  $( "#global" ).val( "Global: " + $( "#slider-range6" ).slider( "values", 0 ) +
                    " - " + $( "#slider-range6" ).slider( "values", 1 ) );

                    $( "#slider-range7" ).slider({
                    range: true,
                    min: 12,
                    max: 78,
                    values: [ 12, 78 ],
                    slide: function( event, ui ) {
                      $( "#height" ).val( "Height: " + ui.values[ 0 ] + " - " + ui.values[ 1 ] );
                      document.getElementById("heightMin").setAttribute("value", ui.values[ 0 ]);
                      document.getElementById("heightMax").setAttribute("value", ui.values[ 1 ]);
                      filter();
                    }
                  });
                  $( "#height" ).val( "Height: " + $( "#slider-range7" ).slider( "values", 0 ) +
                    " - " + $( "#slider-range7" ).slider( "values", 1 ) );
      } );
    </script>
</body>
</html>