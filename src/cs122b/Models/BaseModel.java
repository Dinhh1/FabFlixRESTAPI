package cs122b.Models;

/**
 * Created by dinhho on 1/12/15.
 */
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
@XmlRootElement
public class BaseModel implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 9097878790450670831L;
	protected boolean isDirty;
//    protected ModelStatus model_status;
    public BaseModel() {
        this.isDirty = false;
//        this.model_status = new ModelStatus();
    }

    /**
     * Checks whether or not a model has been modified since instantiation
     *
     * @return boolean
     */
    public boolean isDirty() {
        return this.isDirty;
    }
    
//	@XmlElement(name="Status")
//    public ModelStatus getModelStatus() {
//    	return this.model_status;
//    }
//    
//    public void setModelStatus(ModelStatus ms) {
//    	this.model_status = ms;
//    }
}
