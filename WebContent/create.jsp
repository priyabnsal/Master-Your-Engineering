<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="icsd.InsertRegisterDBHandler"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
<title>Register Here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src='js/bootstrap.min.js'></script>
<style type="text/css">
body
{
background-image: url("img/.jpg");
    background-repeat:no-repeat;
  background-size:100% 100%;
 background-color: #F8E7E7;    
}
.imgcontainer {
  text-align: center;
  margin: 12px 0 6px 0;
}
#contact{
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

img.avatar {
  width: 20%;
  border-radius: 50%;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 36px;

}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

</style>
</head>
<body>

<form action="create.jsp" method="post">


<section id="contact">
<p>Create New Account</p>
</section>

<div class="container ">
<br>

<!-- <div class="form-group"> -->
<!--      <label for="Id" class="text-danger"><b>Id:</b></label> -->
<!--  <input type="text" class="form-control" id="Id" placeholder="Enter Id" name="Id"> -->
<!-- </div> -->

<br>


<div class="form-group">
     <label for="Firstname" class="text-danger"><b>Full Name:</b></label>
 <input type="text" class="form-control" id="Firstname" placeholder="Enter Full Name" name="txtFirstname" required>
</div>
<br>


<div class="form-group">
     <label for="Mobileno" class="text-danger"><b>Mobile No:</b></label>
<input type="tel" class="form-control" id="Mobileno" placeholder="Enter Mobile No" name="txtMobileno" pattern="[0-9]{3}[0-9]{3}[0-9]{3}[0-9]{1}" required>
</div>

<br>

<div class="form-group">
     <label for="Email" class="text-danger"><b>Email:</b></label>
 <input type="email" class="form-control" id="Email" placeholder="Enter Email" name="txtEmail" required>
</div>
<br>


<div class="form-group">
     <label for="Username" class="text-danger"><b>User Name:</b></label>
 <input type="text" class="form-control" id="Username" placeholder="Enter User Name" name="Username" required>
</div>
<br>

<div class="form-group">
     <label for="Upassword" class="text-danger"><b>Password:</b></label>
 <input type="password" class="form-control" id="Upassword" placeholder="Enter Password" name="Upassword" required>
</div>
<br>

<div class="form-group">
     <label for="Securityquestion" class="text-danger"><b>Security Question:</b></label>
     <select id="country" name="country">
          <option value="select">Please Select</option>
          <option value="yourbestfriend">What is the name of your best friend in high school?</option>
          <option value="yourfirstpet">What was the name of your first pet?</option>
          <option value="yourfilm">What was the first film you saw in a theater?</option>
          <option value="plane">Where did you go the first time you flew on a plane?</option>
          <option value="phonenumber">What is your first phone number?</option>
        </select>
</div>
<br>


<div class="form-group">
     <label for="Securityanswer" class="text-danger"><b>Security Answer:</b></label>
 <input type="text" class="form-control" id="Securityanswer" placeholder="Enter Security Answer" name="txtSecurityanswer" required>
</div>

<a href="login.jsp" class="sign">Or Login</a>
<br>
<br>
    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" name="btn" class="signupbtn" value="Signup">Sign Up</button>
    </div>
</div>
</form>


<%
InsertRegisterDBHandler objDH=new InsertRegisterDBHandler();
String strBtn=request.getParameter("btn");
if(strBtn!=null)
{
////////////////////////insert
if(strBtn.equals("Signup"))
{
System.out.println("page loaded insert butn clicked");
String strFullname,strMobileno,stremail,strusername,strUpassword,strsecurityquestion,strsecurityanswer;
strFullname=request.getParameter("txtFirstname");
strMobileno=request.getParameter("txtMobileno");
stremail=request.getParameter("txtEmail");
strusername=request.getParameter("Username");
strUpassword=request.getParameter("Upassword");
strsecurityquestion=request.getParameter("country");
strsecurityanswer=request.getParameter("txtSecurityanswer");

objDH.InsertIntoregister(strFullname,strMobileno,stremail,strusername,strUpassword,strsecurityquestion,strsecurityanswer);

 /* session.setAttribute("username", strusername);
 session.setAttribute("Upassword",strUpassword);
 System.out.println("data inserted");  */
 
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