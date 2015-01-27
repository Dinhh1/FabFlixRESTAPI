package cs122b.Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs122b.DB.MovieDB;
import cs122b.Models.Movie;

public class Logout extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1676999022297708583L;

	public void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		try {
			request.getSession().invalidate();
			HttpSession session = request.getSession(true); // create a new session after invalidation of the first one
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/logout.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("index.jsp");
		}
	}
}
