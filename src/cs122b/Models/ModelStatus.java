package cs122b.Models;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class ModelStatus {
	private int status_code;
	private String description;
	
	public ModelStatus() {
		this.status_code = StatusCode.ERROR;
		this.description = "";
	}
	
	public ModelStatus(int c, String d) {
		this.status_code = c;
		this.description = d;
	}
	
	@XmlElement(name="code")
	public int getStatusCode() {return this.status_code;}
	public String getDescription() {return this.description;}
	
    /**
     *  Sets the statuscode, and also stringify the status code if flag is set to true
     *  
     * @param s the status code
     * @param flag - whether or not to stringify the statuscode in the description
     */
	public void setStatusCode(int s, boolean flag) {
		this.status_code = s;
		if (flag)
			this.description = StatusCode.getStringForCode(s);
	}
	
	public void setDescription(String d) { this.description = d;}
	
    public static class StatusCode {
        public static final int ERROR = 99;
        public static final int OK = 200;
        public static final int NOT_FOUND = 404;
        public static final int USER_NOT_AUTHENTICATED = 2;
        
        /**
         *  Stringify the status code
         *  
         * @param code the status code
         * @return String representing given code, emptry string if code is invalid
         */
        public static String getStringForCode(int code) {
        	String s ="";
        	switch (code) {
        	case ERROR:
        		s = "ERROR";
        		break;
        	case OK:
        		s = "OK";
        		break;
        	case NOT_FOUND:
        		s = "NOT FOUND";
        		break;
        	case USER_NOT_AUTHENTICATED:
        		s = "USER NOT AUTHENTICATED";
        		break;
        	default:
        		break;
        	}
        	return s;
        }  
    }
    
}
