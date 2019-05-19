<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Login</title>
      
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   </head>
   <body>
      <jsp:include page="_menu.jsp"></jsp:include>
 
 <div class="container">
      <h3 align="Left">Login Page</h3>
      </div>
      
      <p style="color: red;">${errorString}</p>
            
            <div class="container">
            <form method="POST" action="${pageContext.request.contextPath}/login">
            <div class="form-group">
  			<label for="usr">User Name:</label>
  			<input type="text" class="form-control" name="userName" value= "${user.userName}">
			</div>
			
			<div class="form-group">
  			<label for="pwd">Password:</label>
  			<input type="password" class="form-control" name="password" value= "${user.password}">
			</div>
			
			<div class="form-group">
			 <div class="checkbox">
 				<label><input type="checkbox" name="remember"> Remember me</label>
			</div>
			
			 <button type="submit" class="btn btn-default" value= "Submit">Submit</button>
			 <a href="${pageContext.request.contextPath}/">Cancel</a>
			
			</div>

             
      </form>
 
     
 
      <jsp:include page="_footer.jsp"></jsp:include>
   </body>
</html>