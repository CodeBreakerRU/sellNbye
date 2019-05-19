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
          <th>Description</th>
          <th>Price</th>
          <th>Edit</th>
          <th>Delete</th>
       </tr>
       
          <tr>
             <td> 001</td>
			 <td> Benq Monitor </td>
			 <td> 240 HZ 5 Yrs waranty</td>
			 <td> 250000</td>
             <td><a href="editProduct?code=${product.code}">Edit</a></td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
            <tr>
             <td> 002</td>
			 <td> Kingston SSD 240GB </td>
			 <td> 3 Yrs waranty</td>
			 <td> 10000</td>
             <td><a href="editProduct?code=${product.code}">Edit</a></td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
            <tr>
             <td> 003</td>
			 <td> Kraken 7.1 V2 </td>
			 <td> Razer Kraken Headphone 1 Yrs waranty</td>
			 <td> 14500</td>
             <td><a href="editProduct?code=${product.code}">Edit</a></td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
            <tr>
             <td> 004</td>
             <td> GTX 1070 Ti </td>
			 <td> Gigabyte GTX 1070 Ti Gaming 8G </td>
			 <td> 88000</td>
             <td><a href="editProduct?code=${product.code}">Edit</a></td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
         
      
    </table>
    
 </div>
 
 <div class="container">
   <a href="createProduct" class="btn btn-info" role="button">Insert a Product</a>
 </div>
 
 
  
  
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>