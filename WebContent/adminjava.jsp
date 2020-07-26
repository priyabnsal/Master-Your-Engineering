<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.LinkedList"%>
    <%@page import="icsd.JavaDBHandler"%>
    <%@page import="icsd.Clsjava"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Programming Language</title>
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
/* Style the sidebar - fixed full height */
.sidebar {
height: 100%;
width: 210px;
position: fixed;
z-index: 1;
top: 0;
left: 0;
background-color: #111;
overflow-x: hidden;
padding-top: 16px;
}
/* Style sidebar links */
.sidebar a {
padding: 6px 8px 6px 16px;
text-decoration: none;
font-size: 20px;
color: #818181;
display: block;
}
/* Style links on mouse-over */
.sidebar a:hover {
color: #f1f1f1;
}
/* Style the main content */
.main {
margin-left: 160px; /* Same as the width of the sidenav */
padding: 0px 10px;
}
/* Add media queries for small screens (when the height of the screen is less than 450px, add a smaller padding and font-size) */
@media screen and (max-height: 450px) {
.sidebar {padding-top: 15px;}
.sidebar a {font-size: 18px;}
}
/* ------------------------------------------- */
* {
/* box-sizing: border-box; */
}
/* Add a gray background color with some padding */
body {
font-family: Arial;
padding: 0px;
background: #f1f1f1;
}
/* Header/Blog Title */
.header {
padding: 0px;
font-size: 40px;
text-align: center;
/* background: white; */
background-image: linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.7)),url(img/bg.jpg);
background-size: cover;
background-position: center;
color: #fff;
background-attachment: fixed;
text-align: center;
padding: 100px;
font-family: sans-serif;
font-size: 38px;
}
/* Create two unequal columns that floats next to each other */
/* Left column */
.rightcolumn {
float: left;
width: 75%;
}
/* Right column */
.leftcolumn
{
float: left;
width: 25%;
padding-right: 20px;

}
/* Fake image */
.fakeimg {
background-color: #aaa;
width: 80px;
padding: 0px;
}
/* Add a card effect for articles */
.card {
background-color: white;
padding: 20px;
margin-top: 20px;
}
/* Clear floats after the columns */
.row:after {
content: "";
display: table;
clear: both;
}
/* Footer */
.footer {
padding: 20px;
text-align: center;
background: #ddd;
margin-top: 20px;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
.leftcolumn, .rightcolumn {
width: 100%;
padding: 0;
}
}
/* form------------------------------------ */
input[type=text], select, textarea{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  resize: vertical;
}

/* Style the label to display next to the inputs */
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

/* Style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

/* Style the container */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

/* Floating column for labels: 25% width */
.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

/* Floating column for inputs: 75% width */
.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<!--
<section id="contact">
<p>E-books</p>
</section>  -->
<div class="header">
<h2>Admin Dashboard</h2>
</div>
<section class="container">
<div class="row">
<div class="leftcolumn">
<div class="card">
<h2>Hi, welcome back!</h2>
<br>
<div>
<img src="img/person_2.jpg" class="fakeimg"><span class="text-right"> Priya Bansal</span>

</div>
<br>

<!-- <ul class="nav flex-column ">
<li class="nav-item">

</li>
</ul -->
<!-- A vertical navbar -->
<nav class="navbar navbar-light bg-light">

  <!-- Links -->
  <ul class="navbar-nav flex-column ">
  <li class="nav-item my-2">
      <a href="FrontPage.jsp" class="nav-link"><i class="fa fa-fw fa-home"></i> Home</a>    
    </li>
    <li class="nav-item my-2">
      <a href="admin.jsp" class="nav-link "><i class="fa fa-fw fa-home"></i> E-Books</a>
    </li>
    <li class="nav-item my-2">
      <a href="adminsub.jsp" class="nav-link"><i class="fa fa-fw fa-wrench"></i> Study Material</a>
    </li>
    <li class="nav-item my-2">
      <a href="adminyoutube.jsp" class="nav-link "><i class="fa fa-fw fa-user"></i> Youtube</a>
    </li>
    <li class="nav-item my-2">
      <a href="pladmin.jsp" class="nav-link active"><i class="fa fa-fw fa-envelope"></i> Programming Languages</a>
    </li>
     <li class="nav-item my-2">
      <a href="admintutor.jsp" class="nav-link active"><i class="fa fa-fw fa-envelope"></i>Tutor</a>
    </li>
    
    <li class="nav-item my-2">
    <a class="nav-link" href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Logout</i></a> 
    </li>
  </ul>

</nav>
<div class="">

</div>
</div>
</div>
<div class="rightcolumn">
<div class="card">


<h3 class="text-center text-capitalize">Java Languages</h3>
<!-- <div><h6>Name</h6>
<textarea name=""></textarea>
</div>
<div>Image
<img src="#">
</div>
<div>Link</div> -->
<div class="container">
  <form action="adminjava.jsp" method="post">
    <div class="row">
      <div class="col-25">
        <label for="fname">Id</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" placeholder="Id">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Link</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="link" placeholder="Link">
      </div>
    </div>
      <div class="row">
    <div class="col-25"><input type="submit" name="btn" value="Submit"></div>
    <div class="col-25">
    <button type="button" value="Display Schemes" class="btn btn-success btn-lg" style="margin-left:120px;" data-toggle="modal" data-target="#myModal">View 
	</button>
	</div>
	</div>
  </form>
</div>

</div>
</div>
</section>

<%
	JavaDBHandler objD=new JavaDBHandler();
	LinkedList<Clsjava> lst=objD.getadminjava();
	%>
	
	<div class="modal" id="myModal">
	    <div class="modal-dialog modal-lg">
	      <div class="modal-content">
	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h4 class="modal-title">Display Content</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	<div class="">
				<div class="row">
					
					<div class="col-md-6">
						<form action="deletejava.jsp" method="post">
							<table class="table table-bordered table-dark table-hover table-sm">
								<tr>
								<th>Id</th>
								<th>Link</th>
								
								<%
								for(Clsjava obj:lst)
								{
									%>
									<tr>
									<td><%=obj.getStrid()%></td>
									<td><%=obj.getStrlink()%></td>
	
									
									<td><input type="checkbox" name ="chb" value="<%=obj.getStrid()%>"/></td>
									</tr>
								<%
								}%>
							</table>
							<div class="modal-footer">
								<input type="submit" value="Delete Values" name="btn" class="btn btn-default">
							</div>
						</form>
		
			<%
				System.out.println("data displayed");
			%>
	</div>
	</div>

</div>
        
</div>
</div>
</div>
</div>


	<script>
$(document).ready(function(){
    $("#display").click(function(){
        $("#myModal").modal();
    });
});
</script>

<%
JavaDBHandler obj=new JavaDBHandler();
String strBtn=request.getParameter("btn");
if(strBtn!=null)
{
////////////////////////insert
if(strBtn.equals("Submit"))
{
System.out.println("page loaded insert butn clicked");
String strid,strlink;
strid=request.getParameter("firstname");
strlink=request.getParameter("link");


obj.InsertIntoadminjava(strid,strlink);
%>

<%
   // response.sendRedirect(request.getContextPath()+"/Login?selRole="+"register");
  }
else
{
System.out.println("No Btn Clicked");
}
}
else
{
System.out.println("...");
}
%>

</body>
</html>