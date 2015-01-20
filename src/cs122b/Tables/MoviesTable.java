package cs122b.Tables;

import cs122b.Models.*;
import cs122b.DB.*;
import cs122b.Utilities.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
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
                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
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
     * Get a list of movies staring a movie name, this will be performed using a wild card search
     *  like %movieName%
     *  offset is calculated by (pageNum * sizeLmit) - sizeLmt;
     *  this will give us the next set of results to get
     * @param movieName name of the movie
     * @param pageNum - the page number of the query, this is used to calculate offset
     * @param sizeLmt - this limit the query to a certain size,
     * @return a list of movies that matches the name
     */
    public ArrayList<Movie> getMoviesByName(String movieName, int pageNum, int sizeLmt) {
        movieName = "%" + movieName + "%";
        int offset = Table.calculateOffset(pageNum, sizeLmt);
        ArrayList<Movie> query = new ArrayList<Movie>();
        ResultSet rs = null;
        Connection con = null;
        PreparedStatement pS = null;
        String sql = "select * from movies where title like ? limit ?, ?"; // retrive rows (x+1) through y
        try {
			con = ConnectionManager.getConnection();
        	pS = con.prepareStatement(sql);
//            pS = this.jdbcConnection.prepareStatement(sql);
            pS.setString(1, movieName);
            pS.setInt(2, offset);
            pS.setInt(3, sizeLmt);
            rs = pS.executeQuery();
            while (rs.next()) {
                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
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
//            pS = this.jdbcConnection.prepareStatement(sql);
            pS.setString(1, dname);
            pS.setInt(2, offset);
            pS.setInt(3, sizeLmt);
            rs = pS.executeQuery();
            while (rs.next()) {
                Movie m = new Movie(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5),
                        rs.getString(6));
                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
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
                m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
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
            m.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
            result.add(m);
        }
        rs.close();
        return result;
    }


}
