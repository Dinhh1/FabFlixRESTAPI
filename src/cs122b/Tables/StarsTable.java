package cs122b.Tables;

import cs122b.Models.*;
import cs122b.Utilities.ConnectionManager;
import cs122b.DB.*;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by dinhho on 1/14/15.
 */
public class StarsTable extends Table {


    
    public StarsTable() {
    	super();
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
