package cs122b.Tables;

import cs122b.Models.*;
import cs122b.DB.*;
import cs122b.Utilities.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by dinhho on 1/14/15.
 */
public class MoviesTable extends Table {

    public MoviesTable() {
    	super();
    }

    public int addEntry(BaseModel obj) {
        Movie m = (Movie)obj;
        return this.addEntry(m.getTitle(), m.getYear(), m.getDirector(), m.getBannerURL(), m.getTrailerURL());
    }

    public int addEntry(String t, int y, String d, String b, String tr) {
        //TODO:: NEEDS TO BE IMPLEMENTED
        return -1;
    }

    public int deleteEntry(BaseModel obj) {
        Movie m = (Movie)obj;
        if (m.getId() == MovieDB.DBConstant.INVALID_ID)
            return -1;
        return this.deleteEntry(m.getId());
    }

    public int deleteEntry(int id) {
        //TODO:: NEEDS TO BE IMPLEMENTED
        return -1;
    }

    public int updateEntry(BaseModel obj) {
        //TODO:: NEEDS TO BE IMPLEMENTED
        return -1;

    }

    public int getTableSize() {
        //TODO:: NEEDS TO BE IMPLEMENTED
        return -1;

    }

    public String getTableName() {
        return MovieDB.DBConstant.TBL_MOVIES;
    }

    public ArrayList<Movie> getMoviesWithQueryString(String sql, int page, int size, final String sortAttribute) {
    	int offset = Table.calculateOffset(page, size);
    	 ArrayList<Movie> query = new ArrayList<Movie>();
         PreparedStatement pS = null;
         ResultSet rs = null;
         Connection con = null;
         sql = sql + sortAttribute + " limit ?, ?";
         System.out.println(sql);
         try {
 			con = ConnectionManager.getConnection();
         	pS = con.prepareStatement(sql);
             pS.setInt(1, offset);
             pS.setInt(2, size);
             rs = pS.executeQuery();
             // test code
             // testing to get all genre belong to movies, and stars in that movie
             // end test code
             while (rs.next()) {
                 Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                         rs.getString(6));
                 query.add(m);
             }
         } catch (SQLException e) {
             System.out.println(e.getMessage());
         } finally {
             try {
                 pS.close();
                 rs.close();
                 con.close();
             } catch (SQLException e) {
                 System.out.println(e.getMessage());
             }
         }
         return query;
    }
    
    public ArrayList<Movie> getMoviesWithParms(HashMap<String, String> params) {
//    	String sql = "select * from movies as m where m.title like '%__title__' and m.year like '%__year__%' and m.director like '%__director__%' and m.id in ";
//        sql += "(select sm.movie_id from stars_in_movies as sm where sm.star_id in ";
//        sql += "(select s.id from stars as s where s.last_name like '%__lstarname__%' and s.first_name like '%__fstarname__%')) ";
//        sql += "__sort_order__ limit __page__, __size__";
        String sql = "select * from movies as m where m.title like '%__title__%' and m.year like '%__year__%' and m.director like '%__director__%'";
        sql += " and m.id in (select sm.movie_id from stars_in_movies as sm where sm.star_id in (select s.id from stars as s where s.last_name like '%__lstarname__%' and s.first_name like '%__fstarname__%'))";
        sql += " __sort_order__ limit __page__,__size__";
        System.out.println("we are here");
        ArrayList<Movie> query = new ArrayList<Movie>();
        // checking params for error
        if (params.get("title") == null)
        	params.put("title", "");
        if (params.get("year") == null)
        	params.put("year", "");
        if (params.get("director") == null)
        	params.put("director", "");
        if (params.get("starFirstName") == null)
        	params.put("starFirstName", "");
        if (params.get("starLastName") == null)
        	params.put("starLastName", "");
        if (params.get("page") == null)
        	params.put("page", "1");
        if (params.get("lmt") == null)
        	params.put("lmt", "6");
        if (params.get("order") == null)
        	params.put("order", "t_asc");
        // now we can make the query
        sql = sql.replace("__title__", params.get("title"));
        sql = sql.replace("__year__", params.get("year"));
        sql = sql.replace("__director__", params.get("director"));
        sql = sql.replace("__lstarname__", params.get("starLastName"));
        sql = sql.replace("__fstarname__", params.get("starFirstName"));
        sql = sql.replace("__sort_order__", Table.ConvertOrderParameterToSQL(params.get("order")));
        sql = sql.replace("__page__", params.get("page"));
        sql = sql.replace("__size__", params.get("lmt"));
        System.out.println(sql);
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;
        try {
        	con = ConnectionManager.getConnection();
			statement = con.createStatement();
			rs = statement.executeQuery(sql);
          while (rs.next()) {
              Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                      rs.getString(6));
              query.add(m);
          }
      } catch (SQLException e) {
          System.out.println(e.getMessage());
      } finally {
          try {
              statement.close();
              rs.close();
              con.close();
          } catch (SQLException e) {
              System.out.println(e.getMessage());
          }
      }
      return query;
    }
    
    /**
     * Get a list of movies staring a given star id
     *
     * @param starId the star id of the star in the movie
     * @return a list of movies starring starId
     *         - if starId is invalid, return an empty list
     */
    public ArrayList<Movie> getMovieStarring(int starId) {
        ArrayList<Movie> query = new ArrayList<Movie>();
        PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        if (starId < 1)
            return query;
        String sql = "select * from movies as m where m.id in ";
        sql += "(select sm.movie_id from stars_in_movies as sm where sm.star_id in ";
        sql += "(select s.id from stars as s where s.id = ?))";
        try {
//            pS = this.jdbcConnection.prepareStatement(sql);
			con = ConnectionManager.getConnection();
			pS = con.prepareStatement(sql);
            pS.setInt(1, starId);
            rs = pS.executeQuery();
            while (rs.next()) {
                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
//                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
                query.add(m);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }
    

    /**
     * Get a list of movies staring a given star id
     *
     * @param f the star's first name of the star in the movie
     * @param l the star's last name of the star in the movie
     * @return a list of movies starring starId
     *         - if starId is invalid, return an empty list
     */
    public ArrayList<Movie> getMovieStarring(String f, String l) {
        ArrayList<Movie> query = new ArrayList<Movie>();
        PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        if (f == null && l == null)
            return query;
        try {
            if (f == null) {
                String sql = "select * from movies as m where m.id in ";
                sql += "(select sm.movie_id from stars_in_movies as sm where sm.star_id in ";
                sql += "(select s.id from stars as s where s.last_name = ?))";
    			con = ConnectionManager.getConnection();
    			pS = con.prepareStatement(sql);
                pS.setString(1, l);
            } else if (l == null) {
                String sql = "select * from movies as m where m.id in ";
                sql += "(select sm.movie_id from stars_in_movies as sm where sm.star_id in ";
                sql += "(select s.id from stars as s where s.first_name = ?))";
    			con = ConnectionManager.getConnection();
    			pS = con.prepareStatement(sql);
                pS.setString(1, f);
            } else {
                String sql = "select * from movies as m where m.id in ";
                sql += "(select sm.movie_id from stars_in_movies as sm where sm.star_id in ";
                sql += "(select s.id from stars as s where s.first_name = ? and s.last_name = ?))";
    			con = ConnectionManager.getConnection();
    			pS = con.prepareStatement(sql);
                pS.setString(1, f);
                pS.setString(2, l);
            }
            rs = pS.executeQuery();
            while (rs.next()) {
                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
//                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
                query.add(m);
            }
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }
    
    /**
     * Get a list of latest n movies 
     *  
     * @param n name of the movie
     * @return a list of movies that matches the name
     */
    public ArrayList<Movie> getLatestMovies(int n) {
        ArrayList<Movie> query = new ArrayList<Movie>();
        ResultSet rs = null;
        Connection con = null;
        PreparedStatement pS = null;
        String sql = "select * from movies order by year desc limit ?";
//        sql += sortAttribute + " limit ?, ?"; // retrive rows (x+1) through y
        try {
			con = ConnectionManager.getConnection();
        	pS = con.prepareStatement(sql);
            pS.setInt(1, n);
            rs = pS.executeQuery();
            query = queryParser(rs);
            // end test code
//            while (rs.next()) {
//                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
//                        rs.getString(6));
//                query.add(m);
//            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }

    /**
     * Get a list of movies staring a movie name, this will be performed using a wild card search
     *  like %movieName%
     *  offset is calculated by (pageNum * sizeLmit) - sizeLmt;
     *  this will give us the next set of results to get
     * @param movieName name of the movie
     * @param pageNum - the page number of the query, this is used to calculate offset
     * @param sizeLmt - this limit the query to a certain size,
     * @return a list of movies that matches the name
     */
    public ArrayList<Movie> getMoviesStartingWith(String movieName, int pageNum, int sizeLmt, final String sortAttribute) {
        movieName += "%";
        return getMoviesNameHelper(movieName, pageNum, sizeLmt, sortAttribute);
    }
    
    private ArrayList<Movie> getMoviesNameHelper(String movieName, int pageNum, int sizeLmt, final String sortAttribute) {
    	int offset = Table.calculateOffset(pageNum, sizeLmt);
        ArrayList<Movie> query = new ArrayList<Movie>();
        ResultSet rs = null;
        Connection con = null;
        PreparedStatement pS = null;
        String sql = "select * from movies where title like ? " + sortAttribute + " limit ?, ?";
//        sql += sortAttribute + " limit ?, ?"; // retrive rows (x+1) through y
        try {
			con = ConnectionManager.getConnection();
        	pS = con.prepareStatement(sql);
            pS.setString(1, movieName);
            pS.setInt(2, offset);
            pS.setInt(3, sizeLmt);
            rs = pS.executeQuery();
            // test code
            // testing to get all genre belong to movies, and stars in that movie
            query = queryParser(rs);
            // end test code
//            while (rs.next()) {
//                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
//                        rs.getString(6));
//                query.add(m);
//            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }
    
    public ArrayList<Movie> getMoviesByName(String movieName, int pageNum, int sizeLmt, final String sortAttribute) {
        movieName = "%" + movieName + "%";
        return getMoviesNameHelper(movieName, pageNum, sizeLmt, sortAttribute);
    }
    
    /**
     * Get a list of movies given a genre object that has an id
     *  offset is calculated by (pageNum * sizeLmit) - sizeLmt;
     *  
     * @param g genre object, must have a valid genre id
     * @param pageNum - the page number of the query, this is used to calculate offset
     * @param sizeLmt - this limit the query to a certain size,
     * @return a list of movies that matches that is in the genre
     */
    public ArrayList<Movie> getMoviesByGenre(Genre g, int pageNum, int sizeLmt) {
        int offset = Table.calculateOffset(pageNum, sizeLmt);
        ArrayList<Movie> query = new ArrayList<Movie>();
        ResultSet rs = null;
        Connection con = null;
        PreparedStatement pS = null;
        String sql = "select * from movies where id in (select movie_id from genres_in_movies where genre_id = ?) limit ?, ?"; // retrive rows (x+1) through y
        try {
			con = ConnectionManager.getConnection();
        	pS = con.prepareStatement(sql);
            pS.setInt(1, g.getId());
            pS.setInt(2, offset);
            pS.setInt(3, sizeLmt);
            rs = pS.executeQuery();
            while (rs.next()) {
                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
                query.add(m);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }
    
    /**
     * Get a list of movies staring a given star id
     *
     * @param starId the star id of the star in the movie
     * @return a list of movies starring starId
     *         - if starId is invalid, return an empty list
     */
    public ArrayList<Movie> getMovieByGenre(String genre, int page, int size, final String sort) {
        ArrayList<Movie> query = new ArrayList<Movie>();
        int offset = Table.calculateOffset(page, size);
        PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        if (genre == null)
        	genre = "";
        genre = "%" + genre + "%";
        String sql = "select * from movies where id in ";
        sql += "(select movie_id from genres_in_movies where genre_id in ";
        sql += "(select id from genres where name like ?)) ";
        sql += sort + " limit ?, ?";
        try {
			con = ConnectionManager.getConnection();
			pS = con.prepareStatement(sql);
            pS.setString(1, genre);
            pS.setInt(2, offset);
            pS.setInt(3, size);
            rs = pS.executeQuery();
            query = this.queryParser(rs);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }

    /**
     * Get a list of movies directed by director name, this will be performed using a wild card search
     *  like %dname%
     *  offset is calculated by (pageNum * sizeLmit) - sizeLmt;
     *  this will give us the next set of results to get
     * @param dname name of the movie
     * @param pageNum - the page number of the query, this is used to calculate offset
     * @param sizeLmt - this limit the query to a certain size,
     * @return a list of movies that matches the name
     */
    public ArrayList<Movie>getMoviessByDirector(String dname, int pageNum, int sizeLmt) {
        dname = "%" + dname + "%";
        int offset = Table.calculateOffset(pageNum, sizeLmt);
        ArrayList<Movie> query = new ArrayList<Movie>();
        PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        String sql = "select * from movies where director like ? limit ?, ?"; // retrive rows (x+1) through y
        try {
			con = ConnectionManager.getConnection();
			pS = con.prepareStatement(sql);
            pS.setString(1, dname);
            pS.setInt(2, offset);
            pS.setInt(3, sizeLmt);
            rs = pS.executeQuery();
            while (rs.next()) {
                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
                query.add(m);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }

    /**
     * Get a list of movies released in a certain year
     *  offset is calculated by (pageNum * sizeLmit) - sizeLmt;
     *  this will give us the next set of results to get
     * @param year name of the movie
     * @param pageNum - the page number of the query, this is used to calculate offset
     * @param sizeLmt - this limit the query to a certain size,
     * @return a list of movies that matches the name
     */
    public ArrayList<Movie> getMoviesByYear(int year, int pageNum, int sizeLmt) {
        int offset = Table.calculateOffset(pageNum, sizeLmt);
        ArrayList<Movie> query = new ArrayList<Movie>();
        PreparedStatement pS = null;
        Connection con = null;
        ResultSet rs = null;
        String sql = "select * from movies where year = ? limit ?, ?"; // retrive rows (x+1) through y
        try {
//            pS = this.jdbcConnection.prepareStatement(sql);
			con = ConnectionManager.getConnection();
			pS = con.prepareStatement(sql);
            pS.setInt(1, year);
            pS.setInt(2, offset);
            pS.setInt(3, sizeLmt);
            rs = pS.executeQuery();
            while (rs.next()) {
                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
//                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
                query.add(m);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }
    
    public Movie get(int id) {
    	Movie query = null;
        PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        String sql = "select * from movies where id = ?";
        try {
			con = ConnectionManager.getConnection();
			pS = con.prepareStatement(sql);
            pS.setInt(1, id);
            rs = pS.executeQuery();
            if (rs.next()) {
            	MovieDB db = new MovieDB();
                query = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
                query.setStarsInMovies(db.Stars.get(query));
                query.setGenresOfMovies(db.Genres.get(query));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pS.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return query;
    }

    /**
     * Helper function to parses query given a ResultSet of movies
     *
     * @param rs resultSet that contain the movie query
     * @return a list of movies
     */
    private ArrayList<Movie> queryParser(ResultSet rs) throws SQLException {
        ArrayList<Movie> result = new ArrayList<Movie>();
        while (rs.next()) {
            Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                    rs.getString(6));
            // we're going to go ahead and get stars all the stars and the genre of a movie
            MovieDB db = new MovieDB();
            m.setGenresOfMovies(db.Genres.get(m));
            m.setStarsInMovies(db.Stars.get(m));
            result.add(m);
        }
        rs.close();
        return result;
    }


}
