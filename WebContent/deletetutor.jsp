<%@page import="icsd.DBHandlertutor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body>
<%

String strBtn=request.getParameter("btn");
if(strBtn!=null)
{
	if(strBtn.equals("Delete Values"))
	{
		DBHandlertutor objDH= new DBHandlertutor();
		String strSelectedSaIds[]=request.getParameterValues("chb");
		for(String strimage:strSelectedSaIds)
		{
			System.out.println(strimage);
		}
		objDH.deleteMultipalRows(strSelectedSaIds);;
		out.println("data deleted");
		
		 out.println("<script>");
   	 out.println("alert('Data Deleted')");
   	 out.println("</script>");
		System.out.println("tutor deleted");
	}
	
}
%>
<a href='admintutor.jsp' class="btn btn-primary">go to Admin tutor Page</a>





</body>
</html>