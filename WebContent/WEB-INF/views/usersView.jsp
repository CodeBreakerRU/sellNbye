<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>User List</title>
 </head>
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include>
 
    <h3>User List</h3>
 
    <p style="color: red;">${errorString}</p>
 
    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Name</th>
          <th>Gender</th>
          
          <th>Edit</th>
          <th>Delete</th>
       </tr>
       <c:forEach items="${usersList}" var="users" >
          <tr>
             <td>${users.userName}</td>
             <td>${users.gender}</td>
             <td>
                <a href="editProduct?code=${users.code}">Edit</a>
             </td>
             <td>
                <a href="deleteProduct?code=${users.code}">Delete</a>
             </td>
          </tr>
       </c:forEach>
    </table>
 
    <a href="createProduct" >Add User</a>
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>