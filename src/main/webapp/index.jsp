<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}
%>
<form action="Search">

Enter your Name: <input type="text" name="uname"/><br/>

<input type="submit" value="search"/>

</form>
</body>
</html>