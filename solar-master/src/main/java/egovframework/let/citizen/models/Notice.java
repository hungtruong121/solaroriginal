package egovframework.let.citizen.models;


public class Notice {
	private String classIfy;
	private String problem;
	private String dateCreated;
	private String times;
	public Notice() {
		// TODO Auto-generated constructor stub
	}
	public Notice(String classIfy, String problem, String dateCreated, String times) {
		super();
		this.classIfy = classIfy;
		this.problem = problem;
		this.dateCreated = dateCreated;
		this.times = times;
	}
	public String getClassIfy() {
		return classIfy;
	}
	public void setClassIfy(String classIfy) {
		this.classIfy = classIfy;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	

}
