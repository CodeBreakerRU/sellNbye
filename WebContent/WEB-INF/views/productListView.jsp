<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Product List</title>
 </head>
 <body>

    <jsp:include page="_menu.jsp"></jsp:include>
 <div class="container">
  <h3>Product List</h3>
 </div>
   
 
    <p style="color: red;">${errorString}</p>
 
 <div class="container">
    <table  cellpadding="5" cellspacing="1" class="table">
    
       <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Price</th>
           <th>Description</th>
          <th>Edit</th>
          <th>Delete</th>
       </tr>
       <c:forEach items="${productList}" var="product" >
          <tr>
             <td> ${product.pid}</td>
			 <td> ${product.name}</td>
			 <td> ${product.price}</td>
			 <td> ${product.description}</td>
             <td><a href="editProduct?code=${product.pid}">Edit</a></td>
             <td><a href="deleteProduct?code=${product.pid}">Delete</a></td>
          </tr>
          
         </c:forEach>
      
    </table>
    
 </div>
 
 <div class="container">
   <a href="createProduct" class="btn btn-info" role="button">Insert a Product</a>
 </div>
 
 
  
  
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>