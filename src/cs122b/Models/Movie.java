package cs122b.Models;

import cs122b.DB.*;

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
