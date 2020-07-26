<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.LinkedList"%>
    <%@page import="icsd.DBHandler"%>
    <%@page import="icsd.Clsyoutube"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DBHandler objDH=new DBHandler();
LinkedList<Clsyoutube> lst=objDH.getadminyoutube();
%>

<div class="container">
	<div class="row">
	
	<div class="col-md-3">
	</div>
	<div class="col-md-6">
		<form action="FrmSubmitH.jsp" method="post">
	<table class="table table-bordered table-dark table-hover">
	<tr>
	<th>HId</th>
	<th>HName</th>
	<th>HSpecialisation</th>
	<th>HContactno</th>
	<th>HAddress</th>
	<%
	for(Clsyoutube obj:lst)
	{
		%>
		<tr>
<!-- 		this.strId = strId; -->
<!-- this.strFullname = strFullname; -->
<!-- this.stryear = stryear; -->
<!-- this.strMobileno = strMobileno; -->
<!-- this.stremail = stremail; -->
<!-- this.strusername = strusername; -->
<!-- this.strUpassword = strUpassword; -->
<!-- this.strSecurityquestion = strSecurityquestion; -->
<!-- this.strSecurityanswer = strSecurityanswer; -->
		<td><%=obj.getStrvideoid()%></td>
		<td><%=obj.getStrtopicname()%></td>
		<td><%=obj.getStrsubjectname()%></td>
		<td><%=obj.getStrchannelname()%></td>
		<td><%=obj.getStryear() %></td>
		<td><%=obj.getStrlink() %></td>
		
		<td><input type="checkbox" name ="chb" value="<%=obj.getStrvideoid()%>"/></td>
		</tr>
	<%
	}%>
	</table>
	<div class="modal-footer">
	<input type="submit" value="Delete Multipal" name="btn" class="btn btn-default">
	</div>
	</form>
		
<%
	System.out.println("data displayed");

	
	%>
	</div>
	</div>
</form>
</div>
<br>
<br>
<div class="modal" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Schemes Data</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
</body>
</html>