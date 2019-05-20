<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>User List</title>
 </head>
 <body>

    <jsp:include page="_menu.jsp"></jsp:include>
 <div class="container">
  <h3>User List</h3>
 </div>
   
 
    <p style="color: red;">${errorString}</p>
 
 <div class="container">
    <table  cellpadding="5" cellspacing="1" class="table">
    
       <tr>
          
          <th>Name</th>
          <th>Email</th>
           <th>Address</th>
           <th>Phone</th>
          <th>Edit</th>
          <th>Delete</th>
       </tr>
       <c:forEach items="${userList}" var="user" >
          <tr>
             
			 <td> ${user.name}</td>
			<td> ${user.userName}</td>
			 <td> ${user.address}</td>
			  <td> ${user.phone}</td>
            
          </tr>
          
         </c:forEach>
      
    </table>
    
 </div>

 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>