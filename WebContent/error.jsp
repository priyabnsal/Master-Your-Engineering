<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>

<%
 out.println("<script>");
    	 out.println("alert('Invaild Username or Password')");
    	 out.println("</script>");
    	 %>
    	 <p>
	<b>The Password You Have Entered Is Not Matched...</b>

	<a href="login.jsp" class="btn btn-primary">Login Page</a>
	</p>
</body>
</html>