<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>User Info</title>
    
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 </head>
 <body>
 
    <jsp:include page="_menu.jsp"></jsp:include>
 
 
 <div class="container">
  <h2>My Profile </h2>
  
  <ul class="list-group">
  
    <li class="list-group-item">Name : ${user.name}</li>
    <li class="list-group-item">Email : ${user.userName}</li>
    <li class="list-group-item">Address : ${user.address}</li>
    <li class="list-group-item">Phone : ${user.phone}</li>
    
  </ul>
</div>
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>