<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Master Your Engineering</title>
<link rel="stylesheet" type="text/css" href="style.css">
<!-- <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

body {font-family: Arial, Helvetica, sans-serif;}

@media screen and (max-width: 500px) {
.navbar a {
float: none;
display: block;
}
}
*{
margin: 0;
padding: 0;
}
.contact-info .fab{
margin:10px;
color: #FF0000;
font-weight: bold;
font-size: 20px;
}
body{
font-family:'Raleway', sans-serif;
font-size: 14px;
font-weight: 400;
}
h1{
font-size: 40px;
text-transform: capitalize;
font-weight: bold;
font-family: 'Lato', sans-serif;
color: #FF0000;
padding-top: 50px;
padding-bottom: 50px;
}
h1:after
{
content: '';
background: #ff0000;
display: block;
height: 3px;
width: 170px;
margin: 20px auto 5px;
}
/*---------------------------- Our team------------------------ */
#team #team_img{
margin-top: -50px;
}
#team{
font-size: 36px;
}
#team p{
font-weight: 200px;
font-size: 24px;

}
#team .card{
border-radius: 0;
box-shadow: 5px 5px 15px #e74c3c;
transition: all 0 .3s ease-in;
-webkit-transition: all .3s ease-in;
-moz-transition:  all 0.3s ease-in;
}
#team .card:hover{
background: #e74c3c;
color: #fff;
border-radius: 5px;
border: none
box-shadow: 5px 5px 10px #9E9E9E;
}
#team .card:hover h3, #team .card:hover i{
color: #fff;
}
/*------------------ Our team ends ------------------------ */
/* -------------------- Make the image fully responsive---------------------------- */

.container {
position:relative ;
width: 100%;
}
.image {
opacity: 1;
display: block;
width: 100%;
height: auto;
transition: .5s ease;
backface-visibility: hidden;
}
.middle {
transition: .5s ease;
opacity: 0;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
text-align: center;
}
.container:hover .image {
opacity: 0.3;
}
.container:hover .middle {
opacity: 1;
}
.text {
background-color: #4CAF50;
color: white;
font-size: 16px;
padding: 16px 32px;
}
.navbar-brand .priy{
color: black;
font-weight: bold;
/* color: #e74c3c; */
}
.navbar-brand .priy:hover{
color: #FF0000;
/* color: #e74c3c; */
}
.nav-link .priya{
color: black;
text-align: center;
font-family: "Times New Roman", Times, serif;
font-size: 16px;
text-transform: uppercase;
font-style: normal;
}
.nav-link .priya:hover{
color: #FF0000;
/* color:  #000080; */
}
.navbar-nav li a
{
float: right;
text-align: left;
}
/*----------------------------services------------*/
/* ----------------------new services-----------  */
#service
{
background: #efefef;
padding-top: 40px;
padding-bottom: 40px;
color: #777;
}
#service img{
filter: blur(8px);
filter: grayscale(60%);
color:#555555;
}
#service .image-text .imagetext{
/* color:white;
position:absolute;
top:40%;
width:90%;
font-family:'Raleway', sans-serif;
font-size: 24px;
text-transform: uppercase;
tex
text-align:center;
position: absolute; */
top: 45%;
text-align: center;
position: absolute;
width:90%;
font-size: 18px;
font-weight: 700;
color: #fff;
z-index: 1;
}
#service img:hover{
filter: grayscale(0%);

box-shadow: 0 2px 20px #333;
}
/* --------------------gallery */
#gallery
{
background: #efefef;
padding-top: 40px;
padding-bottom: 40px;
color: #777;
}
#gallery img:hover{
box-shadow: 0 2px 20px #333;
}
/* get in touch */
#contact 
 { 
 background: #efefef; 
 padding-top: 40px; 
 padding-bottom: 40px; 
 color: #777; 
}
.contact-form 
 { 
padding: 15px; 
 } 
 .get{
background-color:  #efefef;
}
.form-control
{
border-radius: 0 ! important;
border :none ! important;
} 
::placeholder
{
color: #999 ! important;
}
.follow
{
background: #fff;
padding: 10px;
margin: 15px;
}
.contact-info .fa
{
margin:10px;
color: #FF0000;
font-weight: bold;
}

.cont:hover{
box-shadow: 0 2px 20px #333;
}

/* ---------------video------------------------ */
.v-header{
height:100vh;
display:flex;
align-items:center;
color: #fff;
}
.container{
max-width:960px;
padding-left:1rem;
padding-right:1rem;
margin:auto;
text-align:center;
}
.fullscreen-video-wrap{
position:absolute;
top:0;
left:0;
width:100%;
height:100vh;
overflow:hidden;
}
.fullscreen-video-wrap video{
min-height:100%;
min-width:100%;
}
.header-overlay{
height:100vh;
position: absolute;
top:0;
left:0;
width:100vw;
z-index:1;
background:#037575;
opacity:0.85;
}
.header-content{
z-index:2;
}
.header-content h1{
font-size:50px;
margin-bottom:0;
}
.header-content p{
font-size:1.5rem;
display:block;
padding-bottom:2rem;
}
.btn{
background: #34b3a0;
color:#fff;
font-size:1.2rem;
padding: 1rem 2rem;
text-decoration: none;
}
.section{
padding:20px 0;
}
.section-b{
background:#333;
color:#fff;
}
@media(max-width:960px){
.container{
padding-right:3rem;
padding-left:3rem;
}
}
/* ----------------------------- */
.navigation{
padding-top:10px;
padding-bottom:10px;
position:absolute;
top:0;
width:100%;
z-index:1;
}/*
.navbar-right{
float:right;
padding-right:10%;
}
.navbar-right a{
text-decoration:none;
padding:10px;
color: #fff;
font-family:Arial;
font-weight:900;
}
.navbar-right a:hover{
text-decoration:underline;
}
.navbar-logo{
padding-left:10%;
font-family:Arial;
font-size:30px;
font-weight:bold;
text-decoration:none;
color:#fff;
} */
@media screen and (max-width: 500px) {
.navbar a {
float: none;
display: block;
}
}
*{
margin: 0;
padding: 0;
}
.contact-info .fab{
margin:10px;
color: #FF0000;
font-weight: bold;
font-size: 20px;
}
.navbar{
background-color: #000;
}
.navbar-brand .priy{
color: black;
font-weight: bold;
/* color: #e74c3c; */
}
.navbar-brand .priy:hover{
color: #FF0000;
/* color: #e74c3c; */
}
.nav-link .priya{
color: black;
text-align: center;
font-family: "Times New Roman", Times, serif;
font-size: 16px;
text-transform: uppercase;
font-style: normal;
}
.nav-link .priya:hover{
color: #FF0000;
/* color:  #000080; */
}
.navbar-nav li a
{
float: right;
text-align: left;
}
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0; // remove the gap so it doesn't close
 }
/*---------------------------footer----------------*/
</style>
</head>
<body>
<!-- -----------------------header-----------------------------navbar-light bg-light -->
<!-- <header role="banner">
<div class="top-bar">
<div class="bg-light navbar-dark">
<div class="row py-2">
<div class="col-lg-4 text-left">
<p>+918198941622</p>
</div>
<div class="col-lg-4 text-center">
<p>info@gmail.com</p>
</div>
<div class="col-lg-4 text-right d-sm-flex d-flex">
<div class="ml-auto">
<a href="create.jsp" class="btn">Register</a>
<a href="login.jsp" class="cta-btn">Login</a>
</div>
</div>
</div>
</div>
</div>
</header> -->
<!-- <header id="topnav">
<div class="navbar newnav">
<a class="" href="#"><i class="fas fa-envelope-open-text"></i> info@gmail.com</a>
<a href="#"><i class="fa fa-phone"></i> 123-456-789</a>

<a href="login.jsp"><i class="fa fa-fw fa-user"></i> Login</a>
<a href="create.jsp"><i class="fas fa-sign-in-alt"></i> Register</a>
</div>
</header> -->


<header >
<div class="header">
<div class="v-header">
<div class="fullscreen-video-wrap ">
<video autoplay muted loop src="img/typing.mp4" >
</video>
<!-- <video autoplay muted loop id="myVideo">
<source src="img/video.mp4" type="video/mp4">
</video> -->
</div>

<div class="header-overlay"></div>
<div class="header-content text-md-center">
<h1>Welcome Everyone</h1>
<p>Master Your Engineering is a portal which is very helpful for the students who choose engineering stream especially computer science and engineering. We want that students pass their four year journey smoothly and do not face any problems.

It reduces our effort to great extent.</p>
<a class="btn" href="about.jsp">Find Out More</a>
</div>

</div>
<nav class="navigation navbar navbar-expand-md navbar-light bg-white">

<a class="navbar-brand" href="index.html"><i class="priy"> Master your Engineering</i></a>
<div class="d-flex flex-row order-2 order-sm-3">
<ul class="navbar-nav flex-row contact-info">
<li class="nav-item ">
<a class="nav-link px-2 " href="#"><i class="fab fa-facebook-square"></i></a>
</li>
<li class="nav-item flex-row">
<a class="nav-link px-2" href="#"><i class="fab fa-twitter"></i></a>
</li>
<li class="nav-item flex-row">
<a class="nav-link px-2" href="#"><i class="fab fa-youtube"></i></a>
</li>
<li class="nav-item flex-row">
<a class="nav-link px-2" href="#"><i class="fab fa-instagram"></i></a>
</li>
</ul>

<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
<span class="navbar-toggler-icon"></span>
</button>
</div>
<div class="collapse navbar-collapse order-3 order-sm-2 " id="navbarNavDropdown">
<!-- ml for margin left -->
<ul class="navbar-nav ml-auto">
<li class="nav-item active">
<a class="nav-link " href="FrontPage.html"><i class="priya">Home</i> <span class="sr-only">(current)</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="about.jsp"><i class="priya">About Us</i></a>
</li>
<li class="nav-item">
<a class="nav-link" href="#service"><i class="priya">Our Services</i></a>
</li>
<li class="nav-item">
<a class="nav-link" href="#team" tabindex="-1" aria-disabled="true"><i class="priya">Our Team</i></a>
</li>
<li class="nav-item">
<a class="nav-link" href="contact.jsp"><i class="priya">Contact Us</i></a>
</li>
<!-- <li class="nav-item"> -->
<%-- <a class="nav-link" href="Login.jsp"><i class="priya">Welcome  <%=strUnm%></i></a> --%>
<!-- </li> -->
<li class="nav-item">
<a class="nav-link" href="logout.jsp"><i class="priya">Logout</i></a>
</li>
<!-- <li class="nav-item"> -->
<!-- <a class="nav-link" href="profile.jsp"><i class="priya">Profile </i></a> -->
<!-- </li> -->


</ul>
</div>
</nav>
</div>
</header>

<!--------------Services--------------->

<section id="service">
	<div class="container" >
		<h1 class="text-center text-capitalize pt-5">Our Services</h1>
		<!-- <hr class="w-25 mx-auto pt-5"> -->
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-4 image-text">
				<a href="ebooks.jsp">
					<img src="img/lib.jpg" class="img-fluid">
					<h2 class="imagetext">E-Books</h2>
				</a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-4 image-text">
				<a href="subject.jsp">
					<img src="img/lap.jpg" class="img-fluid">
					<h2 class="imagetext">Subjects</h2>
				</a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-4 image-text">
				<a href="youtube.jsp">
					<img src="img/youtube.jpg" class="img-fluid">
					<h2 class="imagetext">Youtube</h2>
				</a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-4 image-text">
				<a href="pl.jsp">
					<img src="img/comp.jpg" class="img-fluid">
					<h2 class="imagetext">Programming languages</h2>
				</a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-4 image-text">
				<a href="chatbot.jsp">
					<img src="img/chatbot.jpg" class="img-fluid">
					<h2 class="imagetext">Chat With Jarvis</h2>
				</a>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 col-12 mb-4 image-text">
				<a href="tutor.jsp">
					<img src="img/tutor1.jpg" class="img-fluid">
					<h2 class="imagetext">Find a Tutor</h2>
				</a>
			</div>

		</div>
	</div>
</section>
<!--------------------- services end -->

<!-------------------------- about us ends ----------------------------->


	<section id="team">
			<div class="container my-3 py-5 text-center">
				<div class="row mb-5">
					<div class="col">
						<h1>Our Team</h1>
						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6 px-5">
						<div class="card">
							<div class="card-body ">
								<img id="team_img" src="img/priya.jpg" class="img-fluid rounded-circle w-50 mb3">
								<h3>Priya Bansal</h3>
								
								<h5>Creative Head/ Developer</h5>

								<div class="d-flex flex-row justify-content-center">
									<div class="p-2">
										<a href="#">
											<i class="fab fa-facebook-square"></i>
										</a>
									</div>
									<div class="p-2">
										<a href="https://www.youtube.com/channel/UC5y5gI69oWufTlV2bNJ78uw" target="blank">
											<i class="fab fa-youtube"></i>
										</a>
									</div>
									<div class="p-2">
										<a href="https://www.instagram.com/priyabnsal/" target="blank">
											<i class="fab fa-instagram"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-4 col-md-6 px-5">
						<div class="card">
							<div class="card-body ">
								<img id="team_img" src="img/tanya.jpg" class="img-fluid rounded-circle w-50 mb3">
								<h3>Tanya</h3>
								<h5>Front End Developer</h5>
	
								<div class="d-flex flex-row justify-content-center">
									<div class="p-2">
										<a href="#">
											<i class="fab fa-facebook-square"></i>
										</a>
									</div>
									<div class="p-2">
										<a href="https://www.youtube.com/channel/UC5y5gI69oWufTlV2bNJ78uw" target="blank">
											<i class="fab fa-youtube"></i>
										</a>
									</div>
									<div class="p-2">
										<a href="https://www.instagram.com/tanya_dhingra/" target="blank">
											<i class="fab fa-instagram"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				
					<div class="col-lg-4 col-md-6 px-5">
						<div class="card">
							<div class="card-body">
								<img id="team_img" src="img/harshita.jpg" class="img-fluid rounded-circle w-50 mb3">
								<h3>Harshita Jain</h3>
								<h5>Back End Developer</h5>
	
								<div class="d-flex flex-row justify-content-center">
									<div class="p-2">
										<a href="#">
											<i class="fab fa-facebook-square"></i>
										</a>
									</div>
									<div class="p-2">
										<a href="https://www.youtube.com/channel/UC5y5gI69oWufTlV2bNJ78uw"target="blank">
											<i class="fab fa-youtube"></i>
										</a>
									</div>
									<div class="p-2">
										<a href="https://www.instagram.com/harshi_jain20/" target="blank">
											<i class="fab fa-instagram"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

<!----------------------------------------Get in touch----------------------->
<section id="get" class="get">
<div class="container">
<h1 class="text-center pt-5">Get In Touch</h1>
<div class="w-50 mx-auto">
<div class="contact-info text-left ">
<div class="follow cont"><b>Address</b><i class="fa fa-map-marker"></i><a href="https://www.google.com/maps/dir//Old+Housing+Board+Colony,+Panipat,+Haryana+132103/@29.3948073,76.9599588,15.26z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390dda48649c8497:0xfce0f919219821d1!2m2!1d76.971507!2d29.3986523">147-148,old housing board colony,Panipat</a></div>
<div class="follow cont"><b>Phone</b><i class="fa fa-phone"><a href="tel:9991879761"></i>9991879761</a></div>
<div class="follow cont"><b>E-mail</b><i class="fa fa-envelope"></i><a href="mailto:yourengineering.4@gmail.com">yourengineering.4@gmail.com</a></div>
<div class="follow cont"><label><b>Get Social</b></label>
<a href="#" class="text-center mx-3"><i class="fab fa-facebook"></i></a>
<a href="#" class="text-center mx-3"><i class="fab fa-instagram"></i></a>
<a href="#" class="text-center mx-3"><i class="fab fa-twitter"></i></a></div>
</div>
<br><br>
</div>
</div>
</section>

<div class="footer-copyright text-center py-3 bg-light">© 2019 Copyright:
<a href="#home">Master Your Engineering</a>
<!------------------------------------------ contact us ends ----------------------------------->

<script>
var video = document.getElementById("myVideo");
var btn = document.getElementById("myBtn");
function myFunction() {
if (video.paused) {
video.play();
btn.innerHTML = "Pause";
} else {
video.pause();
btn.innerHTML = "Play";
}
}
</script>
</body>
</html>