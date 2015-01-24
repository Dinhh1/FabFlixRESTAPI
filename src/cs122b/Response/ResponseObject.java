package cs122b.Response;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import cs122b.Models.ModelStatus;

@XmlRootElement
public abstract class ResponseObject <T> {
	protected ModelStatus status;
	protected ArrayList<T> data;
	public ResponseObject(ArrayList<T> data, ModelStatus ms) {
		this.data = data;
		this.status = ms;
	}
	
	public ResponseObject() {
		this.status = new ModelStatus(ModelStatus.StatusCode.ERROR, true);
	}
	
	@XmlElement(name="data")
	protected ArrayList<T> getData() {
		return this.data;
	}
	
	@XmlElement(name="status")
	public ModelStatus getModelStatus() {
		return this.status;
	}
	
	public void setData(ArrayList<T> data) {
		this.data = data;
	}
	
	public void setModelStatus(ModelStatus ms) {
		this.status = ms;
	}
	

}
