package cs122b.Tables;


import cs122b.DB.*;
import cs122b.Models.*;
import cs122b.Utilities.ConnectionManager;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by dinhho on 1/14/15.
 */
public class CreditCardTable extends Table {

    public CreditCardTable() {
    	super();
    }
    
    /**
     * Add a creditcard to the db
     *
     * @param entry properly populated creditcard object
     * @return the number of rows affected by the query
     */
    public int addEntry(BaseModel entry) {
        CreditCard cc = (CreditCard)entry;
        return addEntry(cc.getId(), cc.getFirstName(), cc.getLastName(), cc.getExpiration());
    }

    /**
     * Add a creditcard to the db
     *
     * @param ccId cc number
     * @param f first name
     * @param l last name
     * @param exp expiration date
     * @return the number of rows affected by the query
     */
    public int addEntry(String ccId, String f, String l, Date exp) {
        int success = -1;
        String sql = "INSERT INTO creditcards(id, first_name, last_name, expiration) VALUES(?, ?, ?, ?)";
        PreparedStatement insertStatement = null;
        Connection con = null;
        try {
			con = ConnectionManager.getConnection();
			insertStatement = con.prepareStatement(sql);
            insertStatement.setString(1, ccId);
            insertStatement.setString(2, f);
            insertStatement.setString(3, l);
            insertStatement.setDate(4, exp);
            success = insertStatement.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
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

    public int deleteEntry(BaseModel obj) {
        return -1;
    }

    /**
     * Update a credit card in the db
     *
     * @param obj properly populated creditcard object
     * @return the number of rows affected by the query
     */
    public int updateEntry(BaseModel obj) {
        //TODO:: needs to be implemented, make sure to check if ccIsDirty before updating, save the trip of updating something unaltered
        return -1;
    }

    public int getTableSize() {
        return 0;
    }

    public String getTableName() {
        return MovieDB.DBConstant.TBL_CREDITCARDS;
    }

    /**
     * Get a list of creditcards from a customer
     *
     * @param f first name of cc holder
     * @param l last name of cc holder
     * @return a list of creditcards belonging to a customer
     *         - if no last name is provided, return an empty list
     */
    public ArrayList<CreditCard> get(String f, String l) {
        ArrayList<CreditCard> query = new ArrayList<CreditCard>();
        PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        if (f == null)
            f = "";
        if (l == null)
            return query;
        try {
            String sql = "SELECT * from creditcards where first_name = ? and last_name = ?";
            con = ConnectionManager.getConnection();
            pS = con.prepareStatement(sql);
            pS.setString(1,f);
            pS.setString(2,l);
            rs = pS.executeQuery();
            while (rs.next()) {
                CreditCard cc = new CreditCard(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4));
                query.add(cc);
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
     * Get a list of creditcards based off a credit card number
     *
     * @param ccId the credit card id
     * @return creditcard with cc number
     *         - return null if not found (later maybe throw a not found exception)
     */
    public CreditCard get(String ccId) {
        CreditCard query = null;
        PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        if (ccId == null || ccId == "")
            return null;
        try {
            String sql = "SELECT * from creditcards where id = ?";
            con = ConnectionManager.getConnection();
            pS = con.prepareStatement(sql);
            pS.setString(1,ccId);
            rs = pS.executeQuery();
            if (rs.next()) 
                query = new CreditCard(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4));
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
}
