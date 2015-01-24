package cs122b.restcontroller;

import java.util.ArrayList;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.*;

import com.sun.jersey.api.json.JSONWithPadding;

import cs122b.DB.*;
import cs122b.Models.Customer;
import cs122b.Models.ModelStatus;
import cs122b.Response.ResponseCustomer;
import cs122b.Response.ResponseMovie;

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
	@Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
	public ResponseCustomer login(@FormParam("username") final String username, @FormParam("password") final String pswd) {
		Customer c = new Customer(null, null, null, null, username, pswd);
		ResponseCustomer response = new ResponseCustomer();
		response.getModelStatus().setStatusCode(ModelStatus.StatusCode.USER_NOT_AUTHENTICATED, true);
		try {
			MovieDB db = new MovieDB();
			c = db.Customers.authenticateUser(new Customer(null, null, null, null, username, pswd));
			if (c != null) {
				ArrayList<Customer> ca = new ArrayList<Customer>();
				ca.add(c);
				response.setData(ca);
				response.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}
	
	@POST
	@Path("/jsonp")
	@Produces({"application/javascript"})
	public JSONWithPadding loginJSONP(@Context UriInfo uriInfos, @FormParam("username") final String username, @FormParam("password") final String pswd) {
		ResponseCustomer response = login(username, pswd);
		MultivaluedMap<String, String> params = uriInfos.getQueryParameters();
		String callback = params.getFirst("callback");
		return new JSONWithPadding(new GenericEntity<ResponseCustomer>(response) {}, callback);
	}
}
