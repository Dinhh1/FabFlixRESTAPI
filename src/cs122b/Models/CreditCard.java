package cs122b.Models;

import java.sql.Date;


/**
 * Created by dinhho on 1/12/15.
 */
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class CreditCard extends BaseModel{
    private String id;
    private String first_name;
    private String last_name;
    private Date expiration;

    /**
     * CreditCard constructor
     *
     * @param id cc_id
     * @param f first name
     * @param l last_name
     * @param exp CC expiration date
     * @return Fully Constructed CreditCard
     */
    public CreditCard(String id, String f, String l, Date exp) {
        super();
        this.id = id;
        this.first_name = f;
        this.last_name = l;
        this.expiration = exp;
    }

    public CreditCard() {
        super();
        this.id = null;
        this.first_name = null;
        this.last_name = null;
        this.expiration = null;
    }

    public String getId() {
        return this.id;
    }

    public String getFirstName() {
        return this.first_name;
    }

    public String getLastName() {
        return this.last_name;
    }

    public Date getExpiration() {
        return this.expiration;
    }

    public void setFirstName(String f) {
        this.isDirty = true;
        this.first_name = f;
    }

    public void setLastName(String l) {
        this.isDirty = true;
        this.last_name = l;
    }

    public void setExpiration(Date exp) {
        this.isDirty = true;
        this.expiration = exp;
    }

    @Override
    public String toString() {
        String s = "ID = " + this.id + "\n";
        s += "first_name = " + this.first_name + "\n";
        s += "last_name = " + this.last_name + "\n";
        s += "expiration = " + this.expiration.toString();
        return s;
    }
}
