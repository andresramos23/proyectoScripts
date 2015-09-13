<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8" >
	<meta name="description" content="Ejemplo HTML" />
	<meta charset="keywords" content="HTML5, CSS3, Javascript" />
	<title>Welcome To Looking!</title>
	<link rel="stylesheet" href="js/estilos.css"/>
	<link rel="stylesheet" href="js/fonts.css"/>
	
	
</head>

<body>
	
	<div class="main">
		<div class="slides">
			<img src="css/images/1.png" alt="" >
			<img src="css/images/2.png" alt="">
			<img src="css/images/3.png" alt="">
			<img src="css/images/4.png" alt="">
		</div>
	</div>
	
	
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="js/jquery.slides.js"></script>
	<script>
		$(function(){
			$(".slides").slidesjs({
					play:{
						active:false,
						//boolean used to generate the play and stop buttons
						effect:"fade",
						//efecto del slide : slide o fade
						interval:5000,
						//intervalo de tiempo entre cada slide milisegundos
						auto:true,
						//bool ture reproducir de forma automatica false si no
						swap: false,
						//show or hide botones play stop
						pauseOnHover:false,
						//para el slide al estar mouse encima
						restarDelay:5000
						//retardo de reinicio del slideshow
					}
			});
				
				
			});
	</script>
	<div id="welcome">
		<h1 id="tituloW">Welcome to Looking</h1>
		<form>
			<a id="start" href="#openModal">Let's Start</a>
		</form>
		
	</div>
    
    <!--Inicio de caja  para panel modal :) -->        
    <div id="openModal" class="modalDialog">
        <div>
		<div class="Content">
        <a href="#close" id="equis" title="Close" class="close">X</a> 
            
        <h2 id="Find">Find your perfect match, just keep Looking!</h2>
	<!--Inicio de caja  info personal -->
	<div id="wLogin">
        
	<h1>Login</h1>
	<h2 id="tLogin">Enter your acount details to continue</h2>
	
	<h2 id="tLog">Username:</h2>
	<form>
		<input type="text" name="userName" placeholder="Enter your username"/>
	</form>
	<h2 id="tPass">Password:</h2>
	<form>
		<input type="password" name="userPass" placeholder="Enter your password" />
	</form>
	<!-- Botones del div -->
		<input onclick="location.href='Pages/User Profile.html'" id="btnlg" type="submit"  name="btnLogin" value="Login"/>

		<input type="submit"  name="btnLogin" value="Register" onclick="location.href='Pages/Some Info.html'" />


		
	</div>
	</div>
	</div>

		
	</div>
    
    
    
</body>



















