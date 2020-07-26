<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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
margin-left: 120px;

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
<h1>Login Here</h1>
<form action="Login" method="post">
<div class="input-box custom-select" >

  <select name="selRole">
    <option value="0"><i class="fa fa-user"></i>Enter as</option>
    <option value="Admin">Admin</option>
    <option value="User">User</option>
  </select>
</div>

<div class="input-box">
<i class="fa fa-user"></i>
<input type="text" name="Username" placeholder="Username" >

</div>

<div class="input-box">
<i class="fa fa-key"></i>
<input type="Password" placeholder="Password" name="Upassword" id="myInput">
<span class="eye" onclick="myfunction()">
<i id="eye1" class="fa fa-eye"></i>
<i id="eye2" class="fa fa-eye-slash"></i>
</span>
</div>
<input type="submit" name="submit" class="btn-login">
<a href="create.jsp" class="sign">Sign up</a>
<a href="forgetpass.jsp" class="sign">Forget Password</a>
</form>
</div>


<script >
function myfunction() {
var xx=document.getElementById("myInput");
var yy=document.getElementById("eye1");
var zz=document.getElementById("eye2");

if (xx.type ==='password') {
xx.type="text";
yy.style.display ="block";
zz.style.display= "none";
}
else {
xx.type = "Password";
yy.style.display = "none";
zz.style.display = "block";
}
}

var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>
</body>
</html>