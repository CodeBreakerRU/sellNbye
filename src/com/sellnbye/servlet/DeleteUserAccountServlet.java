package com.sellnbye.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sellnbye.utils.DBUtils;
import com.sellnbye.utils.MyUtils;

@WebServlet(urlPatterns = { "/deleteUserAccount" })
public class DeleteUserAccountServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	   public DeleteUserAccountServlet() {
	       super();
	   }

	   @Override
	   protected void doGet(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {
	       Connection conn = MyUtils.getStoredConnection(request);

	       String userName = (String) request.getParameter("email");

	       String errorString = null;

	       try {
	           DBUtils.DeleteUserAccount(conn, userName);
	           System.out.println("hello");
	       } catch (SQLException e) {
	           e.printStackTrace();
	           errorString = e.getMessage();
	       } 
	        
	       // If has an error, redirecte to the error page.
	       if (errorString != null) {
	           // Store the information in the request attribute, before forward to views.
	           request.setAttribute("errorString", errorString);
	           // 
	           RequestDispatcher dispatcher = request.getServletContext()
	           	                   
	           .getRequestDispatcher("/WEB-INF/views/deleteProductErrorView.jsp");

	           dispatcher.forward(request, response);
	       }
	       // If everything nice.
	       // Redirect to the product listing page.        
	       else {
	           response.sendRedirect(request.getContextPath() + "/userList");
	       }

	   }

	   @Override
	   protected void doPost(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {
	       doGet(request, response);
	   }
	
}
