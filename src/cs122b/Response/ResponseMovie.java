package cs122b.Response;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import cs122b.Models.ModelStatus;
import cs122b.Models.Movie;

@XmlRootElement
public class ResponseMovie extends ResponseObject<Movie> {
	@XmlElement(name="data")
	protected ArrayList<Movie> getData() {
		return this.data;
	}
	
	@Override
	public void setData(ArrayList<Movie> data) {
		this.data = data;
	}
	


}
