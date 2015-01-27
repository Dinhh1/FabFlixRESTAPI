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
import cs122b.Tables.*;
public class Search extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5617446661957039902L;

	public void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		try {
			MovieDB db = new MovieDB();
			ArrayList<Movie> query = db.Movies.getMoviesByName("b", 1, 20, Table.SortAttributes.T_ASC);
			if (query != null && query.size() > 0) {
				HttpSession session = request.getSession();
				synchronized(session) {
					session.setAttribute("movie_query", query);
				}
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/search-results.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/nosearch.html");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("/404.html");
		}
	}
}
