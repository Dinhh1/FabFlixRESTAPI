package cs122b.restcontroller;

import java.util.ArrayList;
import java.util.Collection;
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
import cs122b.Models.Movie;


@Path("/movies")
public class MovieRestController {
	@Context
	UriInfo uriInfo;
	@Context
	Request request;
	
	public MovieRestController() {
		super();
	}
	
	// TODO: THIS METHOD IS A TEST METHOD
	@GET
	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	public List<Movie> getMovies() {
		ArrayList<Movie> movies = new ArrayList<Movie>();
		MovieDB db = null;
		try {
			db = new MovieDB();
			movies = db.Movies.getMovieStarring("Christian", "Bale");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movies;
	}
	
	@GET
	@Path("/query")
	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	public List<Movie> getMovies(@Context UriInfo uriInfos) {
		ArrayList<Movie> movies = new ArrayList<Movie>();
		MovieDB db = null;
		MultivaluedMap<String, String> params = uriInfo.getQueryParameters();
		try {
			db = new MovieDB();
			String name = params.getFirst("name");
			int page =  Integer.parseInt(params.getFirst("page"));
			int limit = Integer.parseInt(params.getFirst("limit"));
			if (params.containsKey("name")) 
				movies = db.Movies.getMoviesByName(params.getFirst("name"), page, limit);	
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return movies;
	}
	
//	@GET
//	@Path("/query")
//	@Produces({"application/javascript"})
//	public JSONWithPadding getMovies(@Context UriInfo uriInfos) {
//		ArrayList<Movie> movies = new ArrayList<Movie>();
//		MovieDB db = null;
//		MultivaluedMap<String, String> params = uriInfo.getQueryParameters();
//		String callback = params.getFirst("callback");
//		try {
//			db = new MovieDB();
//			String name = params.getFirst("name");
//			int page =  Integer.parseInt(params.getFirst("page"));
//			int limit = Integer.parseInt(params.getFirst("limit"));
//			if (params.containsKey("name")) 
//				movies = db.Movies.getMoviesByName(params.getFirst("name"), page, limit);	
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			
//		}
//		  return new JSONWithPadding(new GenericEntity<Collection<Movie>>(movies) {
//		    }, callback);
//	}
	
}
