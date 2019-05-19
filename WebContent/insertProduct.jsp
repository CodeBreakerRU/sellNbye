<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
String pid=request.getParameter("pid"); 
String name=request.getParameter("name"); 
String cate=request.getParameter("cate"); 
String qty=request.getParameter("qty"); 
String price=request.getParameter("price"); 
String description=request.getParameter("description");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sellnbye","root",""); 

Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into products (pid, name ,price ,description) values ('"+pid+"','"+name+"','"+price+"','"+description+"')"); 

out.println("Inserted Successful !"); 


%>
    <meta http-equiv="refresh" content="0;URL='http://localhost:8080/SellNByeProject/login'" />    

<a href ="Login.html">Login</a><br/><br/>
<a href="index.html">Home</a>
</body>
</html>