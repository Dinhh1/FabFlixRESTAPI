package cs122b.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs122b.DB.MovieDB;
import cs122b.Models.*;

public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if (email != null || password != null) {
			MovieDB db = new MovieDB();
			Customer c = db.Customers.getCustomerByEmail(email);
			if (c == null) {
				//out.println("Not a valid email!");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/404.html");
				rd.forward(request, response);
			}
			else if(c.getPassword().equals(password)) {
				//out.println("Login Successful!");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			}
			else {
				//out.println("Login Failed!");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/sign-in.jsp");
				rd.forward(request, response);
			}
		}
	}
	
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
