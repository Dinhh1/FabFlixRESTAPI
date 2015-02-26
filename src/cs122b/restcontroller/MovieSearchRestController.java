package cs122b.restcontroller;

import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.UriInfo;

import org.codehaus.jettison.json.JSONArray;

import com.sun.jersey.api.json.JSONWithPadding;

import cs122b.DB.*;

@Path("/search_complete")
public class MovieSearchRestController {
	@Context
	UriInfo uriInfo;
	@Context
	Request request;
	
	public MovieSearchRestController() {
		super();
	}
	
	@GET
	@Path("/query")
	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	public JSONArray getMovies(@Context UriInfo uriInfos) {
		ArrayList<String> movies = new ArrayList<String>();
		MovieDB db = null;
		MultivaluedMap<String, String> params = uriInfo.getQueryParameters();
		try {
			db = new MovieDB();
			String query = params.getFirst("query");
			System.out.println(query);
			StringTokenizer tk = new StringTokenizer(query);
			ArrayList<String> p = new ArrayList<String>();
			// tokenize the query
			while (tk.hasMoreTokens()) {
				p.add(tk.nextToken());
			}
			movies = db.Movies.getMovieTitlesForQuery(p);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return new JSONArray(movies);
	}
	
	@GET
	@Path("/jsonp/query")
	@Produces({"application/javascript"})
	public JSONWithPadding getMoviesJSONP(@Context UriInfo uriInfos) {
		JSONArray response = getMovies(uriInfos);
		MultivaluedMap<String, String> params = uriInfo.getQueryParameters();
		String callback = params.getFirst("callback");
		return new JSONWithPadding(new GenericEntity<JSONArray>(response) {}, callback);
	}
}
