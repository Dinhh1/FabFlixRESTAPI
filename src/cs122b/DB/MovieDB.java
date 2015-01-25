package cs122b.DB;

import cs122b.Tables.*;
import cs122b.Utilities.ConnectionManager;

import java.sql.*;

/**
 * Created by dinhho on 1/12/15.
 */
public class MovieDB {

    public CustomersTable Customers;
    public MoviesTable Movies;
    public CreditCardTable CreditCards;
    public StarsTable Stars;
    public SalesTable Sales;
    public GenreTable Genres;
    /**
     * Create an instance of our db class
     *
     * @return MovieDB instance
     */
    public MovieDB() {
        this.Customers = new CustomersTable();
        this.Movies = new MoviesTable();
        this.CreditCards = new CreditCardTable();
        this.Stars = new StarsTable();
        this.Sales = new SalesTable();
        this.Genres = new GenreTable();
    }

    /**
     * Connects to the movedb
     *
     * @param u The user name credentials to login to the db
     * @param p the password credentials to login
     * @return boolean return whether or not a connection was established
     */
//    public boolean connect(String u, String p) {
//        this.userName = u;
//        this.password = p;
//        try {
////            this.jdbcConnection = DriverManager.getConnection("jdbc:mysql:///moviedb", this.userName, this.password);
//            this.jdbcConnection = DriverManager.getConnection(this.connectionString, this.userName, this.password);
//            this.Customers = new CustomersTable(this.jdbcConnection);
//            this.Movies = new MoviesTable(this.jdbcConnection);
//            this.CreditCards = new CreditCardTable(this.jdbcConnection);
//            this.Stars = new StarsTable(this.jdbcConnection);
//            this.Sales = new SalesTable(this.jdbcConnection);
//            return true;
//        } catch (SQLException e) {
//            System.out.println(e.getMessage());
//            return false;
//        }
//    }

    /**
     * closes the jdbc connection
     *
     * @return true if successfully closed, false if failed to close, print error
     */
//    public boolean disconnect() {
//        try {
//            this.jdbcConnection.close();
//        } catch (SQLException e) {
//            System.out.println(e.getMessage());
//            return false;
//        }
//        return true;
//    }

    /**
     * Prints the metadata of moviedb
     *
     * @return void
     */
    public void printDBMetaData() {
        System.out.println("Retrieving Database MetaData");
        Connection con = null;
        ResultSet rs = null;
        try {
            System.out.println("Tables" + "\n");
            con = ConnectionManager.getConnection();
            DatabaseMetaData databaseMetaData = con.getMetaData();
            rs = databaseMetaData.getTables(null, null, "%", null);
            while (rs.next()) {
                String tableName = rs.getString(3);
                System.out.println("\t" + tableName);
                ResultSet columnSet = databaseMetaData.getColumns(null, null, tableName, "%");
                while (columnSet.next()) {
                    System.out.println("\t\t - "
                            + columnSet.getString("COLUMN_NAME")
                            + ": " + columnSet.getString("TYPE_NAME"));
                }
                System.out.println();
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                rs.close();
                con.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        System.out.println();
    }


    /******************************************************************************************************************
     *                     Custom Query Operation
     ******************************************************************************************************************/

    /**
     * This method will be used to execute any update/delete/insert query
     *
     * @param query sql query
     * @return the number of rows affected by the query
     */
//    public int executeUpdateQuery(String query) {
//        int success = -1;
//        Statement s = null;
//        Connection con = null;
//        try {
//            s = this.jdbcConnection.createStatement();
//            success = s.executeUpdate(query);
//        } catch (SQLException e) {
//            System.out.println("Query error: " + e.getMessage());
//        } finally {
//            try {
//                s.close();
//            } catch (SQLException e) {
//                System.out.println(e.getMessage());
//            }
//        }
//        return success;
//    }

    /**
     * This method will be used to execute any sql queries
     *
     * @param sql sql query
     * @return ResultSet of the query
     */
//    public ResultSet executeQuery(String sql) {
//        ResultSet query = null;
//        try {
//            Statement s = this.jdbcConnection.createStatement();
//            query = s.executeQuery(sql);
//        } catch(SQLException e) {
//            System.out.println("Query error: " + e.getMessage());
//        }
//        return query;
//    }

    /**
     * Created by dinhho on 1/12/15.
     */
    public static class DBConstant {
        public static final int INVALID_ID = -99;
        public static final String TBL_MOVIES = "movies";
        public static final String TBL_CREDITCARDS = "creditcards";
        public static final String TBL_CUSTOMERS = "customers";
        public static final String TBL_SALES = "sales";
        public static final String TBL_STARS= "stars";
        public static final String TBL_GENRES = "genres";
        public static final String TBL_GENRES_IN_MOVIES = "genres_in_movies";
        public static final String TBL_STARS_IN_MOVIES = "stars_in_movies";
    }
}
