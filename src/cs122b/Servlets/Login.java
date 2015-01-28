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
		request.getSession().setAttribute("login_error", "");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/sign-in.jsp");
		rd.forward(request, response);
	}
	
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// i moved your  code down here, nick, logging in should be handdle in post with no info displayed in the query string
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if (email != null || password != null) {
			MovieDB db = new MovieDB();
			Customer c = db.Customers.getCustomerByEmail(email);
			HttpSession session = request.getSession();
			if (c == null || !c.getPassword().equals(password)) {
				//out.println("Not a valid email!");
				request.getSession().setAttribute("login_error", "INVALID CREDENTIALS");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/sign-in.jsp");
				rd.forward(request, response);
			}
			else if(c.getPassword().equals(password)) {
				//out.println("Login Successful!");
				c.setPassword(""); // set password to blank string so we dont store it.
				session.setAttribute("user", c); // im going to store the full user object
				response.sendRedirect("index.jsp");
			}
		}
	}
}
