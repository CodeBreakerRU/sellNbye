package com.sellnbye;

public class UserAccount {
    
	   private String userName;
	   private String password;
	   private String name;
	   private String address;
	   private String phone;
	 
	   public UserAccount() {
	        
	   }
	    
	   public String getname() {   
		   return name;
	   }
	   
	   public String getaddress() {
		   return address;
	   }
	   
	   public String getphone() {
		   return phone;
	   }
	   public String getUserName() {
	       return userName;
	   }
	 
	   public void setname(String name) {
		   this.name = name;
	   }
	   
	   public void setaddress(String address) {
		   this.address = address;
	   }
	   public void setphone(String phone) {
		   this.phone = phone;
	   }
	   
	   public void setUserName(String userName) {
	       this.userName = userName;
	   }
	 
	   public String getPassword() {
	       return password;
	   }
	 
	   public void setPassword(String password) {
	       this.password = password;
	   }
}
