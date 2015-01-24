package cs122b.restcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.UriInfo;

import com.sun.jersey.api.json.JSONWithPadding;

import cs122b.DB.*;
import cs122b.Models.*;
import cs122b.Response.ResponseMovie;


@Path("/movies")
public class MovieRestController {
	@Context
	UriInfo uriInfo;
	@Context
	Request request;
	
	public MovieRestController() {
		super();
	}
	
	@GET
	@Path("/query")
	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	public ResponseMovie getMovies(@Context UriInfo uriInfos) {
		ArrayList<Movie> movies = new ArrayList<Movie>();
		ResponseMovie response = new ResponseMovie();
		MovieDB db = null;
		MultivaluedMap<String, String> params = uriInfo.getQueryParameters();
		try {
			db = new MovieDB();
			String name = params.getFirst("name");
			int page =  Integer.parseInt(params.getFirst("page"));
			int limit = Integer.parseInt(params.getFirst("limit"));
			if (params.containsKey("name")) 
				movies = db.Movies.getMoviesByName(name, page, limit);	
		} catch (Exception e) {
			e.printStackTrace();
		} 
		response.setData(movies);
		response.setModelStatus(new ModelStatus(ModelStatus.StatusCode.OK, true));
		return response;
	}
	
	@GET
	@Path("/jsonp/query")
	@Produces({"application/javascript"})
	public JSONWithPadding getMoviesJSONP(@Context UriInfo uriInfos) {
		ResponseMovie response = getMovies(uriInfos);
		MultivaluedMap<String, String> params = uriInfo.getQueryParameters();
		String callback = params.getFirst("callback");
		return new JSONWithPadding(new GenericEntity<ResponseMovie>(response) {}, callback);
	}
	
}
