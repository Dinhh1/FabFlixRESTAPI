package cs122b.Servlets;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs122b.DB.MovieDB;
import cs122b.Models.*;

public class Cart extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6236040105699284041L;

	public void doGet(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
		// TODO:: needs to be implemented
		HashMap<Integer, Movie> cart = null;
		HttpSession session = request.getSession();
		try {
			synchronized(session) {
				cart = (HashMap<Integer, Movie>)session.getAttribute("cart");
				if (cart == null) {
					cart = new HashMap<Integer, Movie>();
//					cart = new ArrayList<Movie>();
					session.setAttribute("cart", cart);
				}
			}
			if (request.getParameter("action") != null) {
				String action = request.getParameter("action");
				if (action.equals("add")) {
					int movieId = Integer.parseInt(request.getParameter("mid"));
					synchronized(cart) {
						MovieDB db = new MovieDB();
						Movie m = db.Movies.get(movieId);
						if (m != null) {
							cart.put(m.getId(), m);
						}
					}
					System.out.println("Cart count: " + cart.size());
				} else if (action.equals("del")) {
					int movieId = Integer.parseInt(request.getParameter("mid"));
					synchronized(cart) {
						cart.remove(movieId);
					}
				}
			} 
			// at this point, we should have everything stored in our cart, 
			// not we're using a hashmap so we cant have more than one unique movie, quanity for movies doesnt make any sense anyways.
			// in our servlet we shoulld be able to get session.getAttribute("cart") and retrieve the hashmap
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/cart.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
	        e.printStackTrace();
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/404.html");
			rd.forward(request, response);
		}

	}
	
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("POST");
	}
}
