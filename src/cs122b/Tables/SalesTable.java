package cs122b.Tables;

import cs122b.DB.*;
import cs122b.Models.*;
import cs122b.Utilities.ConnectionManager;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by dinhho on 1/14/15.
 */
public class SalesTable extends Table {

    
    public SalesTable() {
    	super();
    }
    
    /**
     * add a sales entry to the database
     *
     * @param cid the customer's id
     * @param mid movie's id
     * @param sdate the date of the sales
     * @return the number of rows affected by the query
     */
    public int addEntry(int cid, int mid, Date sdate) {
    	//TODO:: NEEDS TO BE IMPLEMENTED
    	return -1;
    }
    
    /**
     * add a sales entry to the database
     *
     * @param entry the correctly populated sales entry to add to the db
     * @return the number of rows affected by the query
     */
    public int addEntry(BaseModel entry) {
        Sale s = (Sale)entry;
        if (s == null)
        	return -1;
        return addEntry(s.getCustomerId(), s.getMovieId(), s.getSalesDate());
    }
    


    public int deleteEntry(BaseModel obj) {
        Sale s = (Sale)obj;
        if (s == null || s.getId() == MovieDB.DBConstant.INVALID_ID)
            return -1;
        return this.deleteEntry(s.getId());

    }

    /**
     * Delete all the sales record pertaining to the given name
     *
     * @param f first name of sales record
     * @param l last name of sales record
     * @return the number of rows affected by the query
     */
    public int deleteEntry(String f, String l) {
        int success = -1;
        String sql = "DELETE from sales where customer_id = (select id from customers where first_name = ? and last_name = ?)";
        PreparedStatement salesStatement = null;
        Connection con = null;
        try {
        	con = ConnectionManager.getConnection();
        	salesStatement = con.prepareStatement(sql);
            salesStatement.setString(1, f);
            salesStatement.setString(2, l);
            success = salesStatement.executeUpdate();
            System.out.println(success + " Sales record deleted for customer = " + f + " " + l);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                salesStatement.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return success;
    }

    /**
     * Delete all the sales record pertaining to the provided customer id
     *
     * @param cid customer_id of sales record
     * @return the number of rows affected by the query
     */
    public int deleteEntry(int cid) {
        int success = -1;
        String sql = "DELETE FROM sales where customer_id = ?";
        Connection con = null;
        PreparedStatement salesStatement = null;
        try {
        	con = ConnectionManager.getConnection();
        	salesStatement = con.prepareStatement(sql);
            salesStatement.setInt(1, cid);
            success = salesStatement.executeUpdate();
            System.out.println(success + " Sales record deleted for customer_id = " + cid);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                salesStatement.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return success;
    }

    public int updateEntry(BaseModel obj) {
        return -1;
    }
    public int getTableSize() {
        return 0;
    }

    public String getTableName() {
        return MovieDB.DBConstant.TBL_SALES;
    }
}
