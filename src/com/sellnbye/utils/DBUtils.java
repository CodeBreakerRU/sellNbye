package com.sellnbye.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sellnbye.Product;
import com.sellnbye.UserAccount;


public class DBUtils {

	public static UserAccount findUser(Connection conn, String userName, String password) throws SQLException {

		String sql = "Select u.email, u.password, u.name, u.phone, u.address from users u where u.email = ? and u.password= ?";

PreparedStatement pstm = conn.prepareStatement(sql);
pstm.setString(1, userName);
pstm.setString(2, password);

ResultSet rs = pstm.executeQuery();

if (rs.next()) {
  
	String name = rs.getString("name");
    String phone = rs.getString("phone");
    String address = rs.getString("address");
    
  UserAccount user = new UserAccount();
  
  user.setUserName(userName);
  user.setname(name);
  user.setphone(phone);
  user.setaddress(address);

  return user;
}

return null;
}
	
	 public static UserAccount findUser(Connection conn, String userName) throws SQLException {
		 
	        String sql = "Select u.name, u.phone, u.address , u.name, u.address, u.phone from users"//
	                + " where u.email = ? ";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	        pstm.setString(1, userName);
	        
	        
	        ResultSet rs = pstm.executeQuery();
	 
	        if (rs.next()) {
	            String password = rs.getString("Password");
	            String name = rs.getString("name");
	            String phone = rs.getString("phone");
	            String address = rs.getString("address");
	            
	            UserAccount user = new UserAccount();
	            user.setUserName(userName);
	            user.setPassword(password);
	            user.setname(name);
	            user.setphone(phone);
	            user.setaddress(address);
	           
	            return user;
	        }
	        return null;
	    }
	 
 
	    public static List<Product> queryProduct(Connection conn) throws SQLException {
	        String sql = "Select * from products";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        ResultSet rs = pstm.executeQuery();
	        List<Product> list = new ArrayList<Product>();
	        while (rs.next()) {
	            String pid = rs.getString("pid");
	            String name = rs.getString("name");
	            float price = rs.getFloat("price");
	            String description = rs.getString("description");
	            
	            Product product = new Product();
	            product.setpid(pid);
	            product.setname(name);
	            product.setprice(price);
	            product.setdescription(description);
	            list.add(product);
	        }
	        return list;
	    }
	 
	   
	    
	    public static Product findProduct(Connection conn, String pid ) throws SQLException {
	        String sql = "Select * from products where pid=?";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	        pstm.setString(1, pid);
	 
	        ResultSet rs = pstm.executeQuery();
	 
	        while (rs.next()) {
	            String name = rs.getString("name");
	            float price = rs.getFloat("price");
	            String description = rs.getString("description");
	            Product product = new Product(pid, name, price, description);
	            return product;
	        }
	        return null;
	    }
	 
//	    public static void updateProduct(Connection conn, Product product) throws SQLException {
//	        String sql = "Update Product set Name =?, Price=? where Code=? ";
//	 
//	        PreparedStatement pstm = conn.prepareStatement(sql);
//	 
//	        pstm.setString(1, product.getName());
//	        pstm.setFloat(2, product.getPrice());
//	        pstm.setString(3, product.getCode());
//	        pstm.executeUpdate();
//	    }
//	 
//	    public static void insertProduct(Connection conn, Product product) throws SQLException {
//	        String sql = "Insert into Product(Code, Name,Price) values (?,?,?)";
//	 
//	        PreparedStatement pstm = conn.prepareStatement(sql);
//	 
//	        pstm.setString(1, product.getCode());
//	        pstm.setString(2, product.getName());
//	        pstm.setFloat(3, product.getPrice());
//	 
//	        pstm.executeUpdate();
//	    }
//	 
//	    public static void deleteProduct(Connection conn, String code) throws SQLException {
//	        String sql = "Delete From Product where Code= ?";
//	 
//	        PreparedStatement pstm = conn.prepareStatement(sql);
//	 
//	        pstm.setString(1, code);
//	 
//	        pstm.executeUpdate();
//	    }
}