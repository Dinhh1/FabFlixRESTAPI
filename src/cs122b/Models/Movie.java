package cs122b.Models;

import java.util.ArrayList;

import cs122b.DB.*;
import cs122b.Tables.*;

import javax.xml.bind.annotation.XmlElement;
/**
 * Created by dinhho on 1/12/15.
 */
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Movie extends BaseModel {
    private int id = MovieDB.DBConstant.INVALID_ID;
    private String title = "";
    private int year = 2014;
    private String director = "";
    private String banner_url = null;
    private String trailer_url = null;

    // nullable properties
    ArrayList<Star> stars_in_movie;
    ArrayList<Genre> genres_of_movie;
    
    public Movie() {
        super();
    }

    public Movie(int id, String t, int y, String d, String b, String tr) {
        super();
        this.id = id;
        this.title = t;
        this.year = y;
        this.director = d;
        this.banner_url = b;
        this.trailer_url = tr;
    }

    public int getId() {
        return this.id;
    }

    public String getTitle(){
        return this.title;
    }

    public int getYear() {
        return this.year;
    }

    public String getDirector() {
        return this.director;
    }

    public String getBannerURL() {
        return this.banner_url;
    }

    public String getTrailerURL() {
        return this.trailer_url;
    }
    
	@XmlElement(name="genre")
    public ArrayList<Genre> getGenresOfMovie() {
		if (this.genres_of_movie == null) {
			MovieDB db = new MovieDB();
			this.genres_of_movie = db.Genres.get(this);
		}
    	return this.genres_of_movie;
    }
    
	@XmlElement(name="stars")
    public ArrayList<Star> getStarsOfMovie() {
		if (this.stars_in_movie == null) {
			MovieDB db = new MovieDB();
			this.stars_in_movie = db.Stars.get(this);
		}
    	return this.stars_in_movie;
    }

    public void setId(int id) {
        this.isDirty = true;
        this.id = id;
    }

    public void setTitle(String t) {
        this.isDirty = true;
        this.title = t;
    }

    public void setYear(int y) {
        this.isDirty = true;
        this.year = y;
    }

    public void setDirector(String d) {
        this.isDirty = true;
        this.director = d;
    }

    public void setBannerURL(String burl) {
        this.isDirty = true;
        this.banner_url = burl;
    }

    public void setTrailerURL(String turl) {
        this.isDirty = true;
        this.trailer_url = turl;
    }
    
    public void setGenresOfMovies(ArrayList<Genre> g) {
    	this.genres_of_movie = g;
    }
    
    public void setStarsInMovies(ArrayList<Star> m) {
    	this.stars_in_movie = m;
    }

    @Override
    public String toString() {
        String s = "ID = " + this.id + "\n";
        s += "Title = " + this.title + "\n";
        s += "Year = " + this.year + "\n";
        s += "Director = " + this.director + "\n";
        s += "Banner URL = " + this.banner_url + "\n";
        s += "Trailer URL = " + this.trailer_url;
        return s;
    }

}
