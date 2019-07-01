<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>dynamic registration page</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp");
PreparedStatement ps=con.prepareStatement("select * from qualification");
ResultSet rs=ps.executeQuery();
%>
<form action="./reg.jsp">

ID:
NAME:
EMAIL:
ADDRESS:
QUALIFICATION:

<input type ="text" name ="id">
<input type ="text" name ="name">
<input type ="text" name ="email">
<input type ="text" name ="address">


<select name="qual">

<%
while(rs.next())
{
%>
	
<option value="<%=rs.getString(2) %>"><%=rs.getString(2) %></option>
		
<%
}
%>

</select>


</form>

</body>
</html>