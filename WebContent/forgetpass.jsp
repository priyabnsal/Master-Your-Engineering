<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Forget Password</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
*{
margin: 0;
padding: 0;
}
body{
background-image: url(img/lap.jpg);
background-size: cover;
background-position: center;
font-family: sans-serif;
}
.form-box{
width: 500px;
background: rgba(0,0,0,0.8);
margin: 12% auto;
padding: 50px 0;
color: #fff;
box-shadow: 0 0 20px 2px rgba(0,0,0,0.5);
}
h1{
text-align: center;
margin-bottom: 40px;
}
.input-box{
margin: 31px auto;
width: 80%;
border-bottom: 1px solid #fff;
padding-top: 10px;
padding-bottom: 5px;
}
.input-box input{
width: 90%;
border: none;
outline: none;
background: transparent;
color: #fff;
}
::placeholder{
color: #ccc;
}
.fa{
margin-right:  10px;
}
.eye{
position: absolute;
}
#eye1{
display: none;
}
.btn-login{
margin: 40px auto 20px;
width: 80%;
display: block;
outline: none;
padding: 10px 0;
border: 1px solid #fff;
cursor: pointer;
background: transparent;
color: #fff;
font-size: 16px;
}

.sign{
text-align: center;
text-decoration: underline;
text-decoration-color: cyan;
color: white;
margin-left: 215px;

}
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element: */
}

.select-selected {
  background-color: 0 0 20px 2px rgba(0,0,0,0.5);
}
.select-selected .fa{
margin-right:  10px;
color: white;
}
/* Style the arrow inside the select element: */
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/* Point the arrow upwards when the select box is open (active): */
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/* style the items (options), including the selected item: */
.select-items div,.select-selected {
  /* color: #ffffff;
   */color: 0 0 20px 2px rgba(0,0,0,0.5);
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
}

/* Style items (options): */
.select-items {
  position: absolute;
  background-color: rgba(0,0,0,1.0);
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/* Hide the items when the select box is closed: */
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
   background-color: #ccc;
  color: black;
}
</style>
</head>
<body>
<div class="form-box" >
<h1>Forget Password</h1>
<form action="Forgetpass" method="post">
<div class="input-box">
<input type="text" class="form-control" id="username" placeholder="Enter username" name="txtusername" required>
</div>
<div class="input-box">
<!-----------------------yaha par security ques get karvana hai ------------------------->
<label for="Securityquestion" class="text-danger">Security Question</label>
<br>
     <select id="country" name="country">
          <option value="select">Please Select</option>
          <option value="yourbestfriend">What is the name of your best friend in high school?</option>
          <option value="yourfirstpet">What was the name of your first pet?</option>
          <option value="yourfilm">What was the first film you saw in a theater?</option>
          <option value="plane">Where did you go the first time you flew on a plane?</option>
          <option value="phonenumber">What is your first phone number?</option>
        </select>
</div>
<div class="input-box">
<input type="text" class="form-control" id="Securityanswer" placeholder="Enter Security Answer" name="txtSecurityanswer" required>
</div>
<div class="input-box">
<input type="text" class="form-control" id="changepassword" placeholder="New Password" name="txtChangePassword" required>
</div>

<input type="submit" name="submit" value="Reset Password" class="btn-login">

<a href="login.jsp" class="sign">Log in</a>
     
</form>
</div>

</body>
</html>
