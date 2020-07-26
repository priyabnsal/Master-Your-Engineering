<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="emailsend" method="post">    
  <table>
    <tr>
      <td>Enter Your Email Address</td>
      <td><input type="text" name="mailid" size="50"/></td>
    </tr>
    <tr>
      <td>subject</td>
      <td><input type="text" name="emp_subject" size="50"/></td>
    </tr>
    <tr>
      <td>message</td>
      <td><input type="text" name="emp_message" size="50"/></td>
    </tr>
    <tr>
      <td><input type="submit"style="margin-left:100px" name="forgot" value="SUBMIT">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="cancel" value="RESET"/></td>
    </tr>
  </table>
</form>
</body>
</html>