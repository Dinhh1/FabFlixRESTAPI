package cs122b.Models;

import cs122b.DB.*;

/**
 * Created by dinhho on 1/12/15.
 */
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Customer extends BaseModel{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1297270061985330801L;
	private int id;
    private String first_name;
    private String last_name;
    private String cc_id;
    private String address;
    private String email;
    private String password;

    public Customer() {
        super();
        this.id = MovieDB.DBConstant.INVALID_ID;
        this.first_name = "";
        this.last_name = null;
        this.cc_id = null;
        this.address = null;
        this.email = null;
        this.password = null;
    }

    public Customer(String fName, String lName, String ccId, String addy, String email, String pswd) {
        super();
        this.first_name = fName;
        this.last_name = lName;
        this.cc_id = ccId;
        this.address = addy;
        this.email = email;
        this.password = pswd;
    }

    // get methods
    public int getId() {
        return this.id;
    }

    public String getFirstName() {
        return this.first_name;
    }

    public String getLastName() {
        return this.last_name;
    }

    public String getCreditCardId() {
        return this.cc_id;
    }

    public String getAddress() {
        return this.address;
    }

    public String getEmail() {
        return this.email;
    }

    public String getPassword() {
        return this.password;
    }

    // set methods
    public void setId(int id) {
        this.isDirty = true;
        this.id = id;
    }

    public void setFirstName(String fName) {
        this.isDirty = true;
        this.first_name = fName;
    }

    public void setLastName(String lName) {
        this.isDirty = true;
        this.last_name = lName;
    }

    public void setCreditCardId(String ccId) {
        this.isDirty = true;
        this.cc_id = ccId;
    }

    public void setAddress(String addy) {
        this.isDirty = true;
        this.address = addy;
    }

    public void setEmail(String email) {
        this.isDirty = true;
        this.email = email;
    }

    public void setPassword(String pswd) {
        this.isDirty = true;
        this.password = pswd;
    }

    @Override
    public String toString() {
        String s = "ID = " + this.id + "\n";
        s += "first_name = " + this.first_name + "\n";
        s += "last_name = " + this.last_name + "\n";
        s += "cc_id = " + this.cc_id + "\n";
        s += "address = " + this.address + "\n";
        s += "email = " + this.email + "\n";
        s += "password = " + this.password;
        return s;
    }
} // end class

