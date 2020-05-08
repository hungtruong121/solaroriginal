package egovframework.let.citizen.service;

import java.io.Serializable;
import java.util.Date;

public class CitizenVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1L;

	/** id */
	private int id;

	/** uid*/
	private String uid;

	/** name */
	private String name;

	/** password */
	private String password;

	/** phone */
	private String phone;

	/** email */
	private String email;

	/** birthday dd/mm/yyyy */
	private String birth;

	/** createdAt dd/mm/yyyy */
	private Date createdAt;

	/** updatedAt dd/mm/yyyy */
	private Date updatedAt;

	/** deletedAt dd/mm/yyyy */
	private Date deletedAt;

	/** remember Me */
	private boolean rememberMe;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public boolean isRememberMe() {
		return rememberMe;
	}

	public void setRememberMe(boolean rememberMe) {
		this.rememberMe = rememberMe;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Date getDeletedAt() {
		return deletedAt;
	}

	public void setDeletedAt(Date deletedAt) {
		this.deletedAt = deletedAt;
	}
}
