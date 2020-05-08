package egovframework.let.citizen.service;

import java.io.Serializable;
import java.util.Date;

/**
 * BuildAsVO
 * 
 * @author ThanhHP
 * @since 2019/05/20
 *
 *        <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2019/05/20  ThanhHP         최초 생성
 *
 *        </pre>
 */
public class BuildAsVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1L;
	private int buildOrderAsId;
	private String address;
	private String companyId;
	private String companyName;
	private String isComplate;
	private Date   asDate;
	private String etc;
	private String userContact;
	private String userName;
	private String userId;
	private String state;
	private String addr4;
	private String newAddr;
	private String addr5;
	private String buildingName;
	
	public int getBuildOrderAsId() {
		return buildOrderAsId;
	}

	public void setBuildOrderAsId(int buildOrderAsId) {
		this.buildOrderAsId = buildOrderAsId;
	}

	public String getBuildingName() {
		return buildingName;
	}

	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	public String getNewAddr() {
		return newAddr;
	}

	public void setNewAddr(String newAddr) {
		this.newAddr = newAddr;
	}

	public String getAddr5() {
		return addr5;
	}

	public void setAddr5(String addr5) {
		this.addr5 = addr5;
	}

	public String getAddr4() {
		return addr4;
	}

	public void setAddr4(String addr4) {
		this.addr4 = addr4;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getIsComplate() {
		return isComplate;
	}

	public void setIsComplate(String isComplate) {
		this.isComplate = isComplate;
	}

	public Date getAsDate() {
		return asDate;
	}

	public void setAsDate(Date asDate) {
		this.asDate = asDate;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String getUserContact() {
		return userContact;
	}

	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	/**
	 * 지원 대상(삭제될 필드) normal : 일반 basicNormal : 기초(생계급여(일반)) basicOne : 기초(의료급여(1종))
	 */
	public String installationLocation() {
		String rs = String.join(" ", checkNullOrEmpty(this.newAddr), checkNullOrEmpty(this.buildingName),
				checkNullOrEmpty(this.addr4), checkNullOrEmpty(this.addr5));
		rs = rs.replace("  ", " ");
		return rs.trim();
	}
	
	public String checkNullOrEmpty(String text) {
		if (text == null || "".equals(text)) {
			return "";
		}
		return text;
	}
}
