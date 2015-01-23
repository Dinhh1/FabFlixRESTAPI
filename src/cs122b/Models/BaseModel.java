package cs122b.Models;

/**
 * Created by dinhho on 1/12/15.
 */
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlElement;

@XmlRootElement
public class BaseModel {

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
