<html>
<head>
<meta charset="ISO-8859-1">
<title>Page</title>
<script src="" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="" />
<style>
/** code for rec-1**/
#mycanvas{border:1px solid red;}

/** code for rec-2**/
#canvas2{
	width:100px;
	height:100px;
	margin: 0px auto;
	}
	
/** code for rec-3**/
#canvas3{
	width:150px;
	height:150px;
	margin: 0px auto;
	}
</style>
</head>
<body id="test" onload="drawshape2(); drawshape3();">

<p>Canvas Rectangle(rec-1):</br>
<canvas id="mycanvas" width="100" height="100"></canvas>
</p>

<p>Canvas Rectangle2(rec-2):</br>
<canvas id="canvas2"></canvas>
</p>

<p>Canvas Rectangle3(rec-3):</br>
<canvas id="canvas3"></canvas>
</p>

<p>To display a Video Player on Page:<br/>
<video width="300" height="200" controls autoplay>
<source src="html5/foo.ogg" type="video/ogg"/>
<source src="html5/foo.mp4" type="video/mp4"/>
Your browser does not support the <video> element.
</video>
</p>

<p>To display audio Player on Page:<br/>
<audio src="foo.wav" controls autoplay>
Your browser does not support the <video> element.
</audio>
</p>

<p> To Display GeoLocation: <br/>
<form>
<input type="button" onclick="getLocation();" value="Geo Location"/>
</form>
</p>

<script type="text/javascript">
/** code for rec-2**/
function drawshape2(){
	var canvas=document.getElementById('canvas2');
	if(canvas.getContext){
		var ctx=canvas.getContext('2d');
		ctx.fillRect(25,25,100,100);
		ctx.clearRect(45,45,60,60);
		ctx.strokeRect(50,50,50,50);
	}
	else{
		alert("You need to use Safari or Firefox 1.5+ to see this demo.");
	}
}
/** code for rec-3**/
function drawshape3(){
	var canvas=document.getElementById('canvas3');
	if(canvas.getContext){
		var ctx=canvas.getContext('2d');
		ctx.beginPath();
		ctx.arc(75,75,50,0,Math.PI*2,true);//outer circle
		
		ctx.moveTo(110,75);
		ctx.arc(75,75,35,0,Math.PI,false);//mouth
		
		ctx.moveTo(65,65);
		ctx.arc(60,65,5,0,Math.PI*2,true);//left eye
		
		ctx.moveTo(95,65);
		ctx.arc(90,65,5,0,Math.PI*2,true);//Right eye
		
		ctx.stroke();
	}
	else{
		alert("You need to use Safari or Firefox 1.5+ to see this demo.");
	}
}

/** code for GeoLocation**/
function showLocation(position){
	var latitude=position.coords.latitude;
	var longitude=position.coords.longitude;
	alert("Latitude : "+latitude + "Longitude: " +longitude);
}
function errorHandler(err){
	if(err.code==1){
		alert("Error: Access is denied.");
	}
	else if(err.code==2){
		alert("Error: Position is unavailable.");
	}
}
function getLocation(){
	if(navigator.getlocation){
		var options={timeout:60000};
		navigator.geolocation.getCurrentPosition(showLocation,errorHandler,options);
	}
	else{
		alert("Sorry, browser does not support geolocation.");
	}
}


</script>
</body>
</html>