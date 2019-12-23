package cn.bean;

public class FileProperty {
	private String name; 
	private int sizeString;
	private String time;
	
	public FileProperty(String name, int sizeString, String time) {
		super();
		this.name = name;
		this.sizeString = sizeString;
		this.time = time;
	}
	public FileProperty() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSizeString() {
		return sizeString;
	}
	public void setSizeString(int sizeString) {
		this.sizeString = sizeString;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
