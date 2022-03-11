<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","manager");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from olympics") ;
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>Country</TH>
      <TH>Medals</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></td>
      </TR>
      <% } %>
     </TABLE>
</body>
</html>