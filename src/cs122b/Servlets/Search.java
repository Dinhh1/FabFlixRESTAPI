package cs122b.Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

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
			String sql = "select * from movies where ";
			String title = (String)request.getParameter("title");
			String year = (String)request.getParameter("year");
			String director = (String)request.getParameter("director");
			String starsFirstName = (String)request.getParameter("starFirstName");
			String starsLastName = (String)request.getParameter("starLastName");
			int page = Integer.parseInt(request.getParameter("page"));
			int size = Integer.parseInt(request.getParameter("lmt"));
			boolean isFirst = true;
			if (!this.stringIsNullOrEmpty(title)) {
				if (isFirst)
					sql += "title like '%" + title + "%' ";
				else 
					sql += " and title like '%" + title + "%' ";
				isFirst = false;
			}
			if (!this.stringIsNullOrEmpty(year)) {
				if (isFirst)
					sql += "year like '%" + year + "%' ";
				else 
					sql += "and year like '%" + year + "%' ";
				isFirst = false;
			}
			if (!this.stringIsNullOrEmpty(director)) {
				if (isFirst)
					sql += "director like '%" + director + "%' ";
				else 
					sql += "and director like '%" + director + "%' ";
				isFirst = false;
			}
//			if ((starsFirstName != null || starsLastName != null) && (starsFirstName.length() > 0 || starsLastName.length() > 0)) {
			if (this.stringIsNullOrEmpty(starsFirstName) != true || this.stringIsNullOrEmpty(starsLastName) != true) {
				if (isFirst) {
					sql += "id in (select sm.movie_id from stars_in_movies as sm where sm.star_id in (select s.id from stars as s where ";
				} else {
					sql += "and id in (select sm.movie_id from stars_in_movies as sm where sm.star_id in (select s.id from stars as s where ";
				}
				isFirst = false;
				if (this.stringIsNullOrEmpty(starsFirstName) != true && this.stringIsNullOrEmpty(starsLastName) != true) {
					sql += "s.first_name like '%" + starsFirstName + "%' and s.last_name like '%" + starsLastName + "%'))";
				} else if (this.stringIsNullOrEmpty(starsFirstName) != true && this.stringIsNullOrEmpty(starsLastName) == true) {
					sql += "s.first_name like '%" + starsFirstName +"%')) ";
				} else if (this.stringIsNullOrEmpty(starsFirstName) == true && this.stringIsNullOrEmpty(starsLastName) != true) {
					sql += "s.last_name like '%" + starsLastName + "%')) ";
				}
			}
			ArrayList<Movie> query = db.Movies.getMoviesWithQueryString(sql, page, size, Table.ConvertOrderParameterToSQL(request.getParameter("order")));
			
//			HashMap<String, String> params = new HashMap<String, String>();
//			params.put("title", request.getParameter("title"));
//			params.put("year", request.getParameter("year"));
//			params.put("director", request.getParameter("director"));
//			params.put("starFirstName", request.getParameter("starFirstName"));
//			params.put("starLastName", request.getParameter("starLastName"));
//			params.put("page", request.getParameter("page"));
//			params.put("lmt", request.getParameter("lmt"));
//			params.put("order", request.getParameter("order"));
//			System.out.println("we are getting search");
//			ArrayList<Movie> query = db.Movies.getMoviesWithParms(params);
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
	
	public boolean stringIsNullOrEmpty(String s) {
		if (s == null || s.trim().length() == 0)
			return true;
		return false;
	}
}
