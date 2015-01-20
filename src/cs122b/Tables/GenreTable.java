package cs122b.Tables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.jersey.api.NotFoundException;

import cs122b.DB.MovieDB;
import cs122b.Models.BaseModel;
import cs122b.Models.Genre;
import cs122b.Models.ModelStatus;
import cs122b.Utilities.ConnectionManager;

public class GenreTable extends Table {

	public GenreTable() {super();}
	
	ArrayList<Genre> get() {
		ArrayList<Genre> query = new ArrayList<Genre>();
        Statement pS = null;
        ResultSet rs = null;
        Connection con = null;
        String sql = "select * from genres";
        try {
			con = ConnectionManager.getConnection();
			pS = con.createStatement();
            rs = pS.executeQuery(sql);
            while (rs.next()) {
            	Genre g = new Genre(rs.getInt("id"), rs.getString("name"));
                g.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
                query.add(g);
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
	
	Genre get(int id) {
		Genre g = null;
		PreparedStatement pS = null;
        ResultSet rs = null;
        Connection con = null;
        String sql = "select * from genres where id = ?";
        try {
			con = ConnectionManager.getConnection();
			pS = con.prepareStatement(sql);
			pS.setInt(1, id);
            rs = pS.executeQuery(sql);
            if (rs.next()) {
            	g = new Genre(rs.getInt("id"), rs.getString("name"));
                g.getModelStatus().setStatusCode(ModelStatus.StatusCode.OK, true);
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
		if (g == null)
			throw new NotFoundException("No such Genre with id: " + id);
		return g;
	}
	
	
	
	
	// TODO:: IMPLEMENT (MABY)
	@Override
	public int addEntry(BaseModel entry) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteEntry(BaseModel obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateEntry(BaseModel obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTableSize() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getTableName() {
		// TODO Auto-generated method stub
		return null;
	}
}
