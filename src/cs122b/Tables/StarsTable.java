package cs122b.Tables;

import cs122b.Models.*;
import cs122b.Utilities.ConnectionManager;
import cs122b.DB.*;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by dinhho on 1/14/15.
 */
public class StarsTable extends Table {


    
    public StarsTable() {
    	super();
    }

    public Star get(int id) {
    	Star query = null;
    	ResultSet rs = null;
        Connection con = null;
        PreparedStatement pS = null;
        String sql = "select * from stars where id = ?";
        try {
			con = ConnectionManager.getConnection();
        	pS = con.prepareStatement(sql);
            pS.setInt(1, id);
            rs = pS.executeQuery();
            if (rs.next()) {
            	query = new Star(rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getDate("dob"),
                rs.getString("photo_url"));
            	MovieDB db = new MovieDB();
            	query.setMovies(db.Movies.getMovieStarring(query.getId()));
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
    
    public ArrayList<Star> get(Movie m) {
    	ArrayList<Star> query = new ArrayList<Star>();
        ResultSet rs = null;
        Connection con = null;
        PreparedStatement pS = null;
        String sql = "select * from stars where id in (select star_id from stars_in_movies where movie_id = ?);"; // retrive rows (x+1) through y
        try {
			con = ConnectionManager.getConnection();
        	pS = con.prepareStatement(sql);
            pS.setInt(1, m.getId());
            rs = pS.executeQuery();
            while (rs.next()) {
            	Star s = new Star(rs.getInt("id"), rs.getString("first_name"), rs.getString("last_name"), rs.getDate("dob"),
                rs.getString("photo_url"));
                query.add(s);
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
     * Add a star to the db
     *
     * @param f first name of star
     * @param l last name of star
     * @param dob date of birth star
     * @param purl photo_url (nullable)
     * @return the number of rows affected by the query
     */
    public int addEntry(String f, String l, Date dob, String purl) {
        String sql = "INSERT INTO stars(first_name, last_name, dob, photo_url) VALUES(?, ?, ?, ?)";
        int success = -1;
        PreparedStatement insertStatement = null;
        Connection con = null;
        try
        {
        	con = ConnectionManager.getConnection();
        	insertStatement = con.prepareStatement(sql);
            insertStatement.setString(1, f);
            insertStatement.setString(2, l);
            insertStatement.setDate(3, dob);
            insertStatement.setString(4, purl);
            success = insertStatement.executeUpdate();
        }
        catch (SQLException ex)
        {
            System.out.println(ex.getMessage());
        }
        finally {
            try {
                insertStatement.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return success;
    }

    /**
     * Add a star to the db
     *
     * @param entry properly populated star object
     * @return the number of rows affected by the query
     */
    public int addEntry(BaseModel entry) {
        Star s = (Star)entry;
        if (s.getFirstName() == null)
            s.setFirstName("");
        if (s.getLastName() == null)
            return -1;
        return this.addEntry(s.getFirstName(), s.getLastName(), s.getDateOfBirth(), s.getPhotoUrl());
    }

    public int deleteEntry(BaseModel obj) {
        return -1;
    }

    public int updateEntry(BaseModel obj) {
        return -1;
    }
    public int getTableSize() {
        return 0;
    }

    public String getTableName() {
        return MovieDB.DBConstant.TBL_STARS;
    }
}
