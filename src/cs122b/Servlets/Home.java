package cs122b.Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs122b.DB.MovieDB;
import cs122b.Models.Movie;

public class Home extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7139539686214094497L;

	public void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		try {
			MovieDB db = new MovieDB();
			ArrayList<Movie> movies = db.Movies.getLatestMovies(4);
			if (movies != null) {
				// any session here
		        HttpSession session = request.getSession();
		        synchronized(movies) {
		        	session.setAttribute("latest_movies", movies);
		        }
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			} else {
				System.out.println("movie is null in servlet");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/404.html");
				rd.forward(request, response);
			}
		}catch (Exception e) {
	        e.printStackTrace();
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/404.html");
			rd.forward(request, response);
		}
	}
}
