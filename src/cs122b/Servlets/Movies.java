package cs122b.Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import cs122b.DB.MovieDB;
import cs122b.Models.*;

public class Movies extends HttpServlet {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request,
             HttpServletResponse response) throws ServletException, IOException {
		int movieId = 0;
		try {
			movieId = Integer.parseInt(request.getParameter("id"));
			MovieDB db = new MovieDB();
			Movie m = db.Movies.get(movieId);
			if (m != null) {
				// any session here
		        HttpSession session = request.getSession();
		        synchronized(m) {
		        	session.setAttribute("movie", m);
		        }
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/movies.jsp");
			rd.forward(request, response);
		}catch (Exception e) {
	        movieId = 0;
	        e.printStackTrace();
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/404.html");
			rd.forward(request, response);
		}
	}
}
