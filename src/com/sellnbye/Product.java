package com.sellnbye;

public class Product {

	   private String pid;
	   private String name;
	   private float price;
	   private String description;
	 
	   public Product() {
	 
	   }
	 
	   public Product(String pid, String name, float price, String description) {
	       this.pid = pid;
	       this.name = name;
	       this.price = price;
	       this.description = description;
	   }
	 
	   public String getpid() {
	       return pid;
	   }
	 
	   public void setpid(String pid) {
	       this.pid = pid;
	   }
	 
	   public String getname() {
	       return name;
	   }
	 
	   public void setname(String name) {
	       this.name = name;
	   }
	 
	   public float getprice() {
	       return price;
	   }
	 
	   public void setprice(float price) {
	       this.price = price;
	   }
	   
	   public String getdescription() {
		   return description;
	   }
	   
	   public void setdescription(String description) {
		   this.description = description;
	   }
}
