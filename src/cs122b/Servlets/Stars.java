package cs122b.Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs122b.DB.MovieDB;
import cs122b.Models.*;

public class Stars extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		int starId = 0;
		try {
			starId = Integer.parseInt(request.getParameter("id"));
			MovieDB db = new MovieDB();
			Star s = db.Stars.get(starId);
			if (s != null) {
				// any session here
		        HttpSession session = request.getSession();
		        synchronized(s) {
		        	session.setAttribute("star", s);
		        }
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/stars.jsp");
			rd.forward(request, response);
		}catch (Exception e) {
	        e.printStackTrace();
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/404.html");
			rd.forward(request, response);
		}
	}
}
