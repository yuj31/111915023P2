<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos</title>
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
<iframe width="560" height="315" src="https://www.youtube.com/embed/RUovEL4iT8s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


<form action="Logout">
<input type="submit" value="Logout">
</form>
</body>
</html>