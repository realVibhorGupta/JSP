<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" 
 			
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FIRST JSP</title>
</head>
<body style="background-color:yellow;">
		
		
		<%@include file="/jsp/hello world.jsp" %> 
		TODAY'S DATE:<%out.println(new Date()); %><br/>
		TODAY'S DATE:<%=new Date()%><br/>
		
		
		
	
</body>
</html>