package cs122b.Response;

import java.util.ArrayList;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import cs122b.Models.ModelStatus;
import cs122b.Models.Customer;;

@XmlRootElement
public class ResponseCustomer extends ResponseObject<Customer> {
	@XmlElement(name="data")
	protected ArrayList<Customer> getData() {
		return this.data;
	}
	
	@Override
	public void setData(ArrayList<Customer> data) {
		this.data = data;
	}
	
}
