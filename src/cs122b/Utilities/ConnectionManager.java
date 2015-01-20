package cs122b.Utilities;

import javax.naming.InitialContext;
import javax.naming.Context;
import javax.sql.DataSource;

import java.sql.Connection;


public class ConnectionManager {
    
	/**
     * gets a connection from the connection pool
     *
     */
	public static Connection getConnection() {
		Connection con = null;
		try {
			Context initialContext = new InitialContext(); 
			DataSource ds =(DataSource)initialContext.lookup("java:comp/env/jdbc/moviedb");			
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
