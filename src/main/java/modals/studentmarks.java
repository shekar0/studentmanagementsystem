package modals;

public class studentmarks {
	private int id;
	private String name;
	private String telugu;
	private String  hindi;
	private String english;
	private String science;
	private String maths;
	private String social;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTelugu() {
		return telugu;
	}
	public void setTelugu(String telugu) {
		this.telugu = telugu;
	}
	public String getHindi() {
		return hindi;
	}
	public void setHindi(String hindi) {
		this.hindi = hindi;
	}
	public String getEnglish() {
		return english;
	}
	public void setEnglish(String english) {
		this.english = english;
	}
	public String getScience() {
		return science;
	}
	public void setScience(String science) {
		this.science = science;
	}
	public String getMaths() {
		return maths;
	}
	public void setMaths(String maths) {
		this.maths = maths;
	}
	public String getSocial() {
		return social;
	}
	public void setSocial(String social) {
		this.social = social;
	}
	public studentmarks(int id, String name, String telugu, String hindi, String english, String science, String maths,
			String social) {
		super();
		this.id = id;
		this.name = name;
		this.telugu = telugu;
		this.hindi = hindi;
		this.english = english;
		this.science = science;
		this.maths = maths;
		this.social = social;
	}
	public studentmarks() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
