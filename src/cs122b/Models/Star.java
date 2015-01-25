package cs122b.Models;

import cs122b.DB.*;

import java.sql.Date;


import java.util.ArrayList;

/**
 * Created by dinhho on 1/12/15.
 */
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Star extends BaseModel{
    private int id;
    private String first_name;
    private String last_name;
    private Date dob;
    private String photo_url;
    private ArrayList<Movie> movies;
    public Star() {
        super();
        this.id = MovieDB.DBConstant.INVALID_ID;
        this.first_name = null;
        this.last_name = null;
        this.dob = null;
        this.photo_url = null;
    }

    public Star(int id, String f, String l, Date dob, String purl) {
        super();
        this.id = id;
        this.first_name = f;
        this.last_name = l;
        this.dob = dob;
        this.photo_url = purl;
    }

    // get methods
    public int getId() {
        return this.id;
    }

    public String getFirstName() {
        return this.first_name;
    }
    
    public String getFullName() {
    	return this.first_name + " " + this.last_name;
    }

    public String getLastName() {
        return this.last_name;
    }

    public Date getDateOfBirth() {
        return this.dob;
    }

    public String getPhotoUrl() {
        return this.photo_url;
    }
    
    public ArrayList<Movie> getMovies() {
    	return this.movies;
    }

    public void setId(int id) {
        this.isDirty = true;
        this.id = id;
    }

    // set methods
    public void setFirstName(String f) {
        this.isDirty = true;
        this.first_name = f;
    }

    public void setLastName(String l) {
        this.isDirty = true;
        this.last_name = l;
    }

    public void setDateOfBirth(Date dob) {
        this.isDirty = true;
        this.dob = dob;
    }

    public void setPhotoUrl(String purl) {
        this.isDirty = true;
        this.photo_url = purl;
    }

    public void setMovies(ArrayList<Movie> m) {
    	this.movies = m;
    }


}
