package egovframework.let.citizen.service;

import java.io.Serializable;

public class RegisterAsVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1L;

	/** id */
	private int id;

	/** 기타사항 입력 박스 */
	private String etc;

	/** A/S 희망일자 영역 */
	private String asDate;
	/**	 Company id	 */
	private String buildCompanyId;
	
	private String usersId;
	
	private String buildOrderId;
	
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getAsDate() {
		return asDate;
	}
	public void setAsDate(String asDate) {
		this.asDate = asDate;
	}
	public String getBuildCompanyId() {
		return buildCompanyId;
	}
	public void setBuildCompanyId(String buildCompanyId) {
		this.buildCompanyId = buildCompanyId;
	}
	public String getUsersId() {
		return usersId;
	}
	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBuildOrderId() {
		return buildOrderId;
	}
	public void setBuildOrderId(String buildOrderId) {
		this.buildOrderId = buildOrderId;
	}
}
