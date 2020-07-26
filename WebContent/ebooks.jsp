<%@page import="java.util.LinkedList"%>
<%@page import="icsd.DBHandlerEbooks"%>
<%@page import="icsd.ClsEbooks"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>E-books</title>
<link rel="stylesheet" href="">
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
</head>
<style type="text/css" media="screen">
#contact{
background-image: url(img/lib.jpg);
background-size: cover;
background-position: center;
color: #fff;
background-attachment: fixed;
text-align: center;
padding: 100px;
font-family: sans-serif;
font-size: 38px;
}
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
<body>
<header>

<nav class="navbar navbar-expand-md navbar-light bg-white">

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
<a class="nav-link " href="FrontPage.jsp"><i class="priya">Home</i> <span class="sr-only">(current)</span></a>
</li>
<li class="nav-item">
<a class="nav-link" href="about.jsp"><i class="priya">About Us</i></a>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown " aria-haspopup="true" aria-expanded="false">
<i class="priya">Our Services</i>
</a>
<div class="dropdown-menu" aria-labelledby="navbarDropdown">

<a class="dropdown-item" href="ebooks.jsp">E-Books</a>
<a class="dropdown-item" href="subject.jsp">Subjects</a>
<a class="dropdown-item" href="youtube.jsp">Youtube</a>
<a class="dropdown-item" href="pl.jsp">Programming languages</a>
<a class="dropdown-item" href="chatbot.jsp">Chat with Jarvis</a>
<a class="dropdown-item" href="tutor.jsp">Find a Tutor</a>

<!-- <div class="dropdown-divider"></div>

<a class="dropdown-item" href="#">Chat-Bot</a> -->
</div>
</li>
<li class="nav-item">
<a class="nav-link" href="#team" tabindex="-1" aria-disabled="true"><i class="priya">Our Team</i></a>
</li>

<li class="nav-item">
<a class="nav-link" href="contact.jsp"><i class="priya">Contact Us</i></a>
</li>
<li class="nav-item">
<a class="nav-link" href="logout.jsp"><i class="priya">Logout</i></a>
</li>
</ul>
</div>
</nav>

</header>

<section id="contact">
<p>E-books</p>
</section>
<section id="youtube" class="container ">
<br>

<%
DBHandlerEbooks objDH=new DBHandlerEbooks();
LinkedList<ClsEbooks> lst=objDH.getadmin();
%>
<div class="row mx-auto py-5">
<%
for(ClsEbooks obj:lst)
{
%>
<%-- <h3 class="text-center text-capitalize pt-5"><%=obj.getStrsubjectname() %></h3> --%>
<div class="col-lg-3 col-md-4 col-6 mb-4">  
  <div class="card" style="width:150px; border:none">
  <a href="<%=obj.getStrlink()%>" target="_blank">
    <img class="card-img-top" src="img/pdf.png" alt="Card image" style="width:100%">
    </a>
    <div class="card-body">
      <a href="<%=obj.getStrlink()%>" target="blank">
      <h6 class="card-title"><%=obj.getStrbookname()%></h6>
      </a>
      <a href="<%=obj.getStrlink()%>" target="_blank">
      <h6 class="card-title">Buy Now</h6>
      </a>
    </div>
   
   
<!-- ---------------------new design idar edit karna hai---------------------------------- -->
    
    </div>
  </div>

<%
}

%>
</div>




</section>
<%-- <%
String strBtn=request.getParameter("btn");
if(strBtn!=null)
{
if(strBtn.equals("Delete"))
{
booksDBHandler objDH= new booksDBHandler();
String strSelectedbookid[]=request.getParameterValues("chb");
for(String strPId:strSelectedbookid)
{
out.println(strPId);
}
objDH.deleteMultipalRows(strSelectedbookid);;
out.println("data deleted");

}
}
%>

 --%><!------------------------------------ footer -------------------------------------------------->
<footer class="section footer-classic context-dark bg-image" style="background: #2d3246;">
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="index.html"><img class="brand-logo-light" src="images/agency/logo-inverse-140x37.png" alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x"></a>
              <h1 class=""><span style="color: #05f7ff;"> Master Your </span>Engineering</h1>
                <p>Occassion xpertz is a Panipat and Delhi based event management company dedicated to providing customers with a wide assortment of event management services for all sort of corporate and personal events. Be it exhibition events, celebrity events, conferences and seminar events, launch celebrations, charity events,corporate meet,sports event and many more….</p>
                <!-- Rights-->
               
              </div>
            </div>
            <div class="col-md-4">
              <h5 class="mt-3">Contacts</h5>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>Model Town, Panipat</dd>
              </dl>
              <dl class="contact-list">
                <dt>E-mail:</dt>
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
                <li><a href="FrontPage.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="youtube.jsp">Our Services</a></li>
                <li><a href="FrontPage.jsp">Our Team</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
                <li><a href="logout.jsp">Logout</a></li>
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
</hr>
</div>
      </footer>
</body>
</html>
