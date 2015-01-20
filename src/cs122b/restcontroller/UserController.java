package cs122b.restcontroller;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.*;

import cs122b.DB.*;
import cs122b.Models.Customer;

@Path("/login")
public class UserController {
	@Context
	UriInfo uriInfo;
	@Context
	Request request;
	
	public UserController() {
		super();
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public Response login(@FormParam("username") final String username, @FormParam("password") final String pswd) {
		String response = "LOGIN FAILED";
		boolean success = false;
		try {
			MovieDB db = new MovieDB();
			success = db.Customers.authenticateUser(new Customer(null, null, null, null, username, pswd));
		} catch (Exception e) {
			e.printStackTrace();
		}
		response = success == false ? "LOGIN FAILED": "LOGIN SUCCESSFUL";
		return Response.ok(response, MediaType.TEXT_PLAIN).build();
	}
	
}
