<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="icsd.subjectDBHandler"%>
 <%@page import="java.util.LinkedList"%>
    <%@page import="icsd.DBHandlerSub"%>
    <%@page import="icsd.Clssubj"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Study Material</title>
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
      <a href="adminsub.jsp" class="nav-link active"><i class="fa fa-fw fa-wrench"></i> Study Material</a>
    </li>
    <li class="nav-item my-2">
      <a href="adminyoutube.jsp" class="nav-link "><i class="fa fa-fw fa-user"></i> Youtube</a>
    </li>
    <li class="nav-item my-2">
      <a href="pladmin.jsp" class="nav-link "><i class="fa fa-fw fa-envelope"></i> Programming Languages</a>
    </li>
     <li class="nav-item my-2">
      <a href="admintutor.jsp" class="nav-link"><i class="fa fa-fw fa-envelope"></i>Tutor</a>
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


<h3 class="text-center text-capitalize">Study Material</h3>
<!-- <div><h6>Name</h6>
<textarea name=""></textarea>
</div>
<div>Image
<img src="#">
</div>
<div>Link</div> -->
<div class="container">
  <form action="adminsub.jsp" method="post">
    <div class="row">
      <div class="col-25">
        <label for="fname">Subject Id</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" placeholder="Subject Id">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Subject Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="subjectname" placeholder="Subject name">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Notes</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" placeholder="Notes">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="country">Year</label>
      </div>
      <div class="col-75">
        <select id="country" name="country">
          <option value="4th">4th year</option>
          <option value="3rd">3rd year</option>
          <option value="2nd">2nd year</option>
          <option value="1st">1st year</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Previous Year</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="name" placeholder="Previous Year">
      </div>
    </div>
    <!-- <div class="row">
      <div class="col-25">
        <label for="subject">Subject</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
      </div>
    </div> -->
      <div class="row">
    <div class="col-25">
    
    <input type="submit" name="btn" value="Submit">
    
    </div>
    <div class="col-25">
    <button type="button" value="Display Schemes" class="btn btn-success btn-lg" style="margin-left:120px;" data-toggle="modal" data-target="#myModal">View 
	</button>
	</div>
  </form>
</div>

</div>
</div>
</section>

<%
	DBHandlerSub objD=new DBHandlerSub();
	LinkedList<Clssubj> lst=objD.getadminsub();
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
						<form action="deletesub.jsp" method="post">
							<table class="table table-bordered table-dark table-hover table-sm">
								<tr>
								<th>Subject Id</th>
								<th>Subject Name</th>
								<th>Notes</th>
								<th>year</th>
								<th>Previous Year</th>
								
								<%
								for(Clssubj objh:lst)
								{
									%>
									<tr>
									<td><%=objh.getStrsubjectid()%></td>
									<td><%=objh.getStrsubjectname()%></td>
									<td><%=objh.getStrnotes()%></td>
									<td><%=objh.getStryear() %></td>
									<td><%=objh.getStrpreviousyear() %></td>
									
									<td><input type="checkbox" name ="chb" value="<%=objh.getStrsubjectid()%>"/></td>
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

function myFunction(){
	alert("Study Material Added Successfully");
}
<%
subjectDBHandler objDH=new subjectDBHandler();
String strBtn=request.getParameter("btn");
if(strBtn!=null)
{
////////////////////////insert
if(strBtn.equals("Submit"))
{
System.out.println("page loaded insert butn clicked");
String strsubjectid,strsubjectname,strnotes,stryear,strpreviousyear;
strsubjectid=request.getParameter("firstname");
strsubjectname=request.getParameter("subjectname");
strnotes=request.getParameter("lastname");
stryear=request.getParameter("country");
strpreviousyear=request.getParameter("name");


objDH.InsertIntoadminsubject(strsubjectid,strsubjectname,strnotes,stryear,strpreviousyear);

 
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