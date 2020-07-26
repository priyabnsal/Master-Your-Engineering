<%@page import="icsd.Clstutor"%>
<%@ page import="java.util.*" %>
<%@page import="icsd.DBHandlertutor"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find a Tutor</title>
    <link rel="stylesheet" href="tutor.css">
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
      .collapsible {
  background-color: tomato;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: solid;
  font-size: 15px;
}

.active, .collapsible:hover {
  opacity: 0.7;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: white;
}
        </style>
</head>
<body>
    <header >
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
<a class="nav-link dropdown-toggle" href="FrontPage.jsp" id="navbarDropdown" role="button" data-toggle="dropdown " aria-haspopup="true" aria-expanded="false">
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
<!--     ----------------------------header end------------------ -->
    <section id="contact">
        <p>Find a Tutor</p>
    </section>
<!-- -----------------------------database begins-------------------- -->
<section class="container">
        <br>
        <br>
         <%
                DBHandlertutor obj=new DBHandlertutor();
                LinkedList<Clstutor> lst=obj.gettutor();
        		System.out.println("hellooooo");
        		 %>
        		 
<!--         ---------------Loop begins --------------->
        <div class="row">
        <%
        	    for (Clstutor e: lst) {
            %>  
        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
        
                <div class="card">
<%--                     <img src="<%=e.getStrimage()%>" alt="John" style="width:100%"> --%>
                     <img class="card-img-top" src="img/t1.png" alt="Card image" style="width:100%">
                    <h2><%=e.getStrname() %></h2>
                    
		<button type="button" class="collapsible text-center"><%=e.getStrlang() %></button>
				<div class="content ">
 					 <p>
                            <table class="table table-hover" style="font-size: 14px;">

                                <tr>
                                    <td>Course duration</td>
                                    <td><%=e.getStrduration() %></td>
                                </tr>
                                <tr>
                                    <td>Total Experience</td>
                                    <td><%=e.getStrexperience() %></td>
                                </tr>
                                <tr>
                                    <td>Fees</td>
                                    <td><%=e.getStrfees() %></td>
                                </tr>
                            </table>
				</p>
			</div>
        <br>
                    <p ><a href='tel:+918398940857' class="ui-link" style="text-decoration: none; font-size: 16px;"><%=e.getStrcontact() %></a></p>
                    <p><button><a href="mailto:<%=e.getStremail() %>" class="ui-link" style="text-decoration: none; font-size: 16px; color: white;">Send email</a></button></p>
       
                </div>
            </div>
         
   <%  } %>    
   </div> 
        <br>
        <br>
       
    </section>
<!------------------------------------ footer -------------------------------------------------->
<footer class="section footer-classic context-dark bg-image" style="background: #2d3246;">
    <div class="container">
      <div class="row row-30">
        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
            <div class="pr-xl-4"><a class="brand" href="index.html"><img class="brand-logo-light" src="images/agency/logo-inverse-140x37.png" alt="" width="140" height="37" srcset="images/agency/logo-retina-inverse-280x74.png 2x"></a>
                <h1 class=""><span style="color: #05f7ff;"> Master Your </span>Engineering</h1>
                <p>Occassion xpertz is a Panipat and Delhi based event management company dedicated to providing customers with a wide assortment of event management services for all sort of corporate and personal events.</p>
            <!-- Rights-->
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
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
        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
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
 <script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
 coll[i].addEventListener("click", function() {
   this.classList.toggle("active");
   var content = this.nextElementSibling;
   if (content.style.display === "block") {
     content.style.display = "none";
   } else {
     content.style.display = "block";
   }
 });
}
</script>
</body>
</html>