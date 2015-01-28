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
import cs122b.Models.*;
import cs122b.Tables.Table;
public class Browse extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6875044344732817774L;

	public void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<Movie> query = null;
			MovieDB db = new MovieDB();
			String browseParm = request.getParameter("by");
			String arg = request.getParameter("arg");
			String order = request.getParameter("order");
			String page = request.getParameter("page");
			String lmt = request.getParameter("lmt");
			if (browseParm.equalsIgnoreCase("title")) {
				query = db.Movies.getMoviesStartingWith(arg, Integer.parseInt(page), 
						Integer.parseInt(lmt), this.determineSort(order));
			} else if (browseParm.equalsIgnoreCase("genre")) {
				query = db.Movies.getMovieByGenre(arg, Integer.parseInt(page),
						Integer.parseInt(lmt), this.determineSort(order));
			} else if (browseParm.equalsIgnoreCase("search")) {
				query = db.Movies.getMoviesByName(arg, Integer.parseInt(page), Integer.parseInt(lmt), this.determineSort(order));
			}
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
	
	private String determineSort(String order) {
		String sort = Table.SortAttributes.T_ASC;
		if (order.equalsIgnoreCase("t_asc")) 
			sort = Table.SortAttributes.T_ASC;
		 else if (order.equalsIgnoreCase("t_desc")) 
			sort = Table.SortAttributes.T_DESC;
		 else if (order.equalsIgnoreCase("y_asc"))
			 sort = Table.SortAttributes.Y_ASC;
		 else if (order.equalsIgnoreCase("y_desc"))
			 sort = Table.SortAttributes.Y_DESC;
		return sort;
	}
}
