package cs122b.Models;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Genre extends BaseModel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7770155209044294491L;
	private int id;
	private String name;
	
	public Genre() {
		super();
	}
	
	public Genre(int i, String n) {
		super();
		this.id = i;
		this.name = n;
	}
	
	public int getId() { return this.id;}
	public String getName() { return this.name;}
	
	public void setId(int id) {
		this.id = id;
		this.isDirty = true;
	}
	
	public void setName(String n) {
		this.name = n;
		this.isDirty = true;
	}

}
