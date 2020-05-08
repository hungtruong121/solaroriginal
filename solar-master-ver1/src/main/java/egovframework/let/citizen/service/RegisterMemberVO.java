package egovframework.let.citizen.service;

import java.io.Serializable;

public class RegisterMemberVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1L;
	/** index id */
	private String id;

	/** user Id */
	private String user_id;

	/** name */
	private String name;

	/** password */
	private String password;
	
	/** code verify phone */
	private String number;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
}
