<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<html>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SellNbye</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="${pageContext.request.contextPath}/">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/productList">Products</a></li>
      <li><a href="${pageContext.request.contextPath}/userInfo">My Account Info</a></li>
      <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
      
    </ul>
  </div>
</nav>
<div class="container">
      <h3 align="Left">Manage Orders</h3>
      </div>
<div class="container">
    <table  cellpadding="5" cellspacing="1" class="table">
       <tr>
          <th>Order ID</th>
          <th>Product ID</th>
          <th>Customer ID</th>
          <th>Date</th>
          <th>QTY</th>
          <th>Discount</th>
          <th></th>
          
       </tr>
       
          <tr>
             <td> 002</td>
			 <td> 003 </td>
			 <td> 1 </td>
			 <td> 2019-04-24</td>
			 <td> 1</td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
            <tr>
             <td> 003 </td>
			 <td> 002 </td>
			 <td> 1 </td>
			 <td> 2019-04-24 </td>
			 <td> 10</td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
            <tr>
             <td> 003 </td>
			 <td> 002 </td>
			 <td> 4 </td>
			 <td> 2019-04-24 </td>
			 <td> 3</td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
            <tr>
            <td> 003 </td>
			 <td> 002 </td>
			 <td> 3 </td>
			 <td> 2019-04-24 </td>
			 <td> 25</td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
           <tr>
             <td> 003 </td>
			 <td> 002 </td>
			 <td> 4 </td>
			 <td> 2019-04-24 </td>
			 <td> 5</td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
           <tr>
             <td> 003 </td>
			 <td> 002 </td>
			 <td> 2 </td>
			 <td> 2019-04-24 </td>
			 <td> 130</td>
             <td><a href="deleteProduct?code=${product.code}">Delete</a></td>
          </tr>
         
      
    </table>
    
 </div>
</html>