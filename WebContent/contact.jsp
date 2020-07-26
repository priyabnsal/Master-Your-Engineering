<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Contact Us</title>
<link rel="stylesheet" type="text/css" href="style.css">
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
<style type="text/css" media="screen">

#contact{
background-image: linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.7)),url(img/pic03.jpg);
background-size: cover;
background-position: center;
color: #fff;
background-attachment: fixed;
text-align: center;
padding: 100px;
font-family: sans-serif;
font-size: 38px;

}
.get{
background-color: #F8E7E7;
}
.cont:hover{
box-shadow: 0 2px 20px #333;
}

.contact-form
{
padding: 15px;
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

/* -------------------------------footer */
.context-dark, .bg-gray-dark, .bg-primary {
    color: rgba(255, 255, 255, 0.8);
}

.footer-classic a, .footer-classic a:focus, .footer-classic a:active {
    color: #ffffff;
}
.nav-list li {
    padding-top: 5px;
    padding-bottom: 5px;
}

.nav-list li a:hover:before {
    margin-left: 0;
    opacity: 1;
    visibility: visible;
}

ul, ol {
    list-style: none;
    padding: 0;
    margin: 0;
}

.social-inner {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    padding: 23px;
    font: 900 13px/1 "Lato", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    text-transform: uppercase;
    color: rgba(255, 255, 255, 0.5);
}
.social-container .col {
    border: 1px solid rgba(255, 255, 255, 0.1);
}
.nav-list li a:before {
    content: "\f14f";
    font: 400 21px/1 "Material Design Icons";
    color: #4d6de6;
    display: inline-block;
    vertical-align: baseline;
    margin-left: -28px;
    margin-right: 7px;
    opacity: 0;
    visibility: hidden;
    transition: .22s ease;
}

#footer ul.quick-links li a i{
margin-right: 5px;
margin-bottom: 15px;
}
#footer ul.quick-links li:hover a i {
    font-weight: 700;
}

</style>
</head>
<body>
<section id="contact">
<p>Contact us</p>
</section>
<!-------------------------------------------Get in touch----------------------->
<section id="get" class="get">
<div class="container">
<h1 class="text-center pt-5">Get In Touch</h1>
<div class="w-50 mx-auto">
<div class="justify-content-center contact-info ">
<div class="follow cont"><b>Address</b><i class="fa fa-map-marker"></i>147-148,old housing board colony,Panipat</div>
<div class="follow cont"><b>Phone</b><i class="fa fa-phone"></i>9991879761</div>
<div class="follow cont"><b>E-mail</b><i class="fa fa-envelope"></i>yourengineering.4@gmail.com</div>
<div class="follow cont"><label><b>Get Social</b></label>
<a href="#" class="text-center mx-3"><i class="fab fa-facebook"></i></a>
<a href="#" class="text-center mx-3"><i class="fab fa-instagram"></i></a>
<a href="#" class="text-center mx-3"><i class="fab fa-twitter"></i></a></div>
</div>
<br><br>
</div>
</div>
</section>


<!------------------------------------ footer -------------------------------------------------->
<footer class="section footer-classic context-dark bg-image" style="background: #2d3246;">
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="index.html"><img class="brand-logo-light" src="images/agency/logo-inverse-140x37.png" alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x"></a>
              <h1 class=""><span style="color: #05f7ff;">Master </span>Engineering</h1>
                <p>Master Your Engineering is a portal dedicated to providing the students who choose engineering stream especially computer science and engineering. We want that students pass their four year journey smoothly and do not face any problems and many more</p>
                <!-- Rights-->
               
              </div>
            </div>
            <div class="col-md-4">
              <h5 class="mt-3">Contacts</h5>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>147-148,old housing board colony,Panipat</dd>
              </dl>
              <dl class="contact-list">
                <dt>email:</dt>
                <dd><a href="mailto:#">yourengineering.4@gmail.com</a></dd>
              </dl>
              <dl class="contact-list">
                <dt>phones:</dt>
                <dd><a href="tel:#">+91 8198941622</a>
                </dd>
              </dl>
            </div>
            <div class="col-md-4 col-xl-3">
              <h5 class="mt-3">Quick Links</h5>
              <ul class="nav-list">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Our Services</a></li>
                <li><a href="#">Gallery</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </div>
          </div>
        </div>
       
        <div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 mb-lg-3 mt-3 mx-auto ">
<ul class="list-unstyled list-inline social text-center">
<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-facebook"></i></a></li>
<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-twitter"></i></a></li>
<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-instagram"></i></a></li>
<li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-google-plus"></i></a></li>
<li class="list-inline-item"><a href="javascript:void();" target="_blank"><i class="fa fa-envelope"></i></a></li>
</ul>
</div>
</div>
</footer>
</body>
</html>
