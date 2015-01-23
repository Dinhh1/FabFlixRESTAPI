package cs122b.Tables;

import cs122b.DB.*;
import cs122b.Models.*;
import cs122b.Utilities.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by dinhho on 1/14/15.
 */
public class CustomersTable extends Table {

    public CustomersTable() {
    	super();
    }
    /**
     * Add a customer to the db
     *
     * @param entry properly filled customer object
     * @return the number of rows affected by the query
     */
    public int addEntry(BaseModel entry) {
        Customer c = (Customer) entry;
        if (c == null)
            return -1;
        if (c.getFirstName() == null)
            c.setFirstName("");
        if (c.getLastName() == null)
            return -1;
        if (c.getCreditCardId() == null)
            return -1;
        if (c.getAddress() == null)
            c.setAddress("");
        if (c.getEmail() == null)
            c.setEmail("");
        if (c.getPassword() == null)
            c.setPassword("password");
        return addEntry(c.getFirstName(), c.getLastName(), c.getCreditCardId(), c.getAddress(), c.getEmail(), c.getPassword());
    }

    /**
     * Add a customer to the db
     *
     * @param f first name of star
     * @param l last name of star
     * @param cid credit card id of star
     * @param email email of star of star
     * @param p photo url of star of star
     * @return the number of rows affected by the query
     */
    public int addEntry(String f, String l, String cid, String addy, String email, String p) {
        int success = -1;
        String sql = "INSERT INTO customers(first_name, last_name, cc_id, address, email, password) VALUES(?, ?, ?, ?, ?, ?)";
        PreparedStatement insertStatement = null;
        Connection con = null;
        try {
        	con = ConnectionManager.getConnection();
        	insertStatement = con.prepareStatement(sql);
            insertStatement.setString(1, f);
            insertStatement.setString(2, l);
            insertStatement.setString(3, cid);
            insertStatement.setString(4, addy);
            insertStatement.setString(5, email);
            insertStatement.setString(6, p);
            success = insertStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
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
     * Delete customer(s) given a customer object (this is the same as deleting by id)
     *
     * @param obj customer object, must have id present
     * @return the number of rows affected by the query
     */
    public  int deleteEntry(BaseModel obj) {
        Customer c = (Customer)obj;
        if (c == null || c.getId() == MovieDB.DBConstant.INVALID_ID)
            return -1;
        return this.deleteEntry(c.getId());
    }

    /**
     * Delete customer(s) given name
     *
     * @param f first name of customer to be deleted, f = f==null: ""?f
     * @param l last name of customer to be deleted
     * @return the number of rows affected by the query
     */
    public int deleteEntry(String f, String l) {
        int success = -1;
        String sql = "DELETE FROM customers where first_name  = ? and last_name = ?";
        PreparedStatement pStatement = null;
        Connection con = null;
        try {
        	con = ConnectionManager.getConnection();
        	pStatement = con.prepareStatement(sql);
//            pStatement = this.jdbcConnection.prepareStatement(sql);
            pStatement.setString(1, f);
            pStatement.setString(2, l);
            success = pStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pStatement.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return success;
    }

    /**
     * Delete customer(s) given a customer id
     *
     * @param cid id of customer to be deleted
     * @return the number of rows affected by the query
     */
    public int deleteEntry(int cid) {
        int success = -1;
        String sql = "DELETE FROM customers where id = ?";
        PreparedStatement pStatement = null;
        Connection con = null;
        try {
        	con = ConnectionManager.getConnection();
        	pStatement = con.prepareStatement(sql);
//            pStatement = this.jdbcConnection.prepareStatement(sql);
            pStatement.setInt(1, cid);
            success = pStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                pStatement.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return success;
    }


    /**
     * Update a customer in the db
     *
     * @param c properly populated creditcard object
     * @return the number of rows affected by the query or - 1 if model was unchanged.
     *
     */
    public int updateEntry(BaseModel c) {
        //TODO:: needs to be implemented, make sure to check if c.isDirty() before updating, save the trip of updating something unaltered
        int success = -1;
        if (c.isDirty())
            return success;
        return success;
    }

    /**
     * Get a list of customers by name
     *
     * @param f first name of cc holder, if f = null then f = ""
     * @param l last name of cc holder
     * @return a list of customers with given name or if l is null then return an empty list
     */
    public ArrayList<Customer> get(String f, String l) {
        ArrayList<Customer> query = new ArrayList<Customer>();
        if (f == null)
            f = "";
        if (l == null)
            return query;
        //TODO:: complete implementation of customer query
        return query;
    }
    
    /**
     * Authenticate the user against the db
     *
     * @param c The customer object, email and password must be populated
     * @return the authenticated user, and db info
     */
    public Customer authenticateUser(Customer c) throws SQLException{
//    	c.getModelStatus().setStatusCode(ModelStatus.StatusCode.USER_NOT_AUTHENTICATED, true);
    	if (c == null || c.getEmail() == null || c.getEmail() == "" || c.getPassword() == null || c.getPassword() == "")
    		return c;
        String sql = "SELECT * FROM customers where email = ? and password = ?";
    	Connection con = ConnectionManager.getConnection();
    	PreparedStatement queryStatement = con.prepareStatement(sql);
		queryStatement.setString(1, c.getEmail());
		queryStatement.setString(2, c.getPassword());
		ResultSet rs = queryStatement.executeQuery();
		if (rs.next()) {
			c.setId(rs.getInt("id"));
			c.setFirstName(rs.getString("first_name"));
			c.setLastName(rs.getString("last_name"));
			c.setCreditCardId(rs.getString("cc_id"));
			c.setAddress(rs.getString("address"));
			c.setPassword("");
//			c.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
		}
		queryStatement.close();
		rs.close();
		con.close();
		return c;
    }
    
    public int getTableSize() {
        return 0;
    }

    public String getTableName() {
        return MovieDB.DBConstant.TBL_CUSTOMERS;
    }
    
    



}
