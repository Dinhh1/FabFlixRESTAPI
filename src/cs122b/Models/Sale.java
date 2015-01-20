package cs122b.Models;
import cs122b.DB.*;

import java.sql.Date;

/**
 * Created by dinhho on 1/12/15.
 */


import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Sale extends BaseModel {
    private int id;
    private int customer_id;
    private int movie_id;
    private Date sale_date;

    public Sale(int id, int cid, int mid, Date sdate) {
        super();
        this.id = id;
        this.customer_id = cid;
        this.movie_id = mid;
        this.sale_date = sdate;
    }

    public Sale() {
        super();
        this.id = MovieDB.DBConstant.INVALID_ID;
        this.customer_id = MovieDB.DBConstant.INVALID_ID;
        this.movie_id = MovieDB.DBConstant.INVALID_ID;
        this.sale_date = null;
    }

    public int getId() {
        return this.id;
    }

    public int getCustomerId() {
        return this.customer_id;
    }

    public int getMovieId() {
        return this.movie_id;
    }

    public Date getSalesDate() {
        return this.sale_date;
    }

    public void setId(int id) {
        this.isDirty = true;
        this.id = id;
    }

    public void setCustomerId(int cid) {
        this.isDirty = true;
        this.customer_id = cid;
    }

    public void setMovieId(int mid) {
        this.isDirty = true;
        this.movie_id = mid;
    }

    public void setSalesDate(Date sdate) {
        this.isDirty = true;
        this.sale_date = sdate;
    }
}
