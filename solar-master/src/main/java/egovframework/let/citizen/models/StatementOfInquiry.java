package egovframework.let.citizen.models;

public class StatementOfInquiry {
	public StatementOfInquiry() {
		// TODO Auto-generated constructor stub
	}
	private String type;
	private String title;
	private String progress;
	private String dateCreated;
	public StatementOfInquiry(String type, String title, String progress, String dateCreated) {
		super();
		this.type = type;
		this.title = title;
		this.progress = progress;
		this.dateCreated = dateCreated;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}

}
