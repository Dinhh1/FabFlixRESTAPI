package cs122b.Servlets;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs122b.DB.MovieDB;
import cs122b.Models.CreditCard;
import cs122b.Models.Customer;
import cs122b.Models.Movie;

public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			if (request.getSession().getAttribute("user") != null) {
				request.getSession().setAttribute("checkout-status", "");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/checkout.jsp");
				rd.forward(request, response);
			} else {
				response.sendRedirect("login");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/checkout.jsp");
			rd.forward(request, response);
		}
	}
	
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("checkout-status", "");
		try {
			HashMap<Integer, Movie> cart;
			String cc_id = request.getParameter("cc_num");
			Date exp_date = Date.valueOf((request.getParameter("exp_date")));
			String first_name = request.getParameter("f_name");
			String last_name = request.getParameter("l_name");

			MovieDB db = new MovieDB();
			CreditCard cc = db.CreditCards.get(cc_id);
			Customer customer = null;
			try {
				customer = db.Customers.getCustomer(first_name, last_name, cc_id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if (cc != null && customer != null) {
				int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
				int day = Calendar.getInstance().get(Calendar.DAY_OF_WEEK);
				int year = Calendar.getInstance().get(Calendar.YEAR);
				String date = year + "-" + month + "-" + day;
				Date sqlDate = Date.valueOf(date);
				int customerID = customer.getId();
				cart = (HashMap<Integer, Movie>)session.getAttribute("cart");
				for (Map.Entry<Integer, Movie> entry : cart.entrySet()) {
					int success = db.Sales.addEntry(customerID, entry.getValue().getId(), sqlDate);
					if (success != 1) {
						RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/404.html");
						rd.forward(request, response);
						break;
					}
				}
				session.removeAttribute("cart");
				RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/checkout-complete.jsp");
				rd.forward(request, response);
				//response.sendRedirect("/checkout-complete.html");
			}
			else {
				RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/checkout.jsp");
				session.setAttribute("checkout-status", "Invalid Information!");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/checkout.jsp");
			session.setAttribute("checkout-status", "Invalid Information!");
			rd.forward(request, response);
		}	
	}
}
