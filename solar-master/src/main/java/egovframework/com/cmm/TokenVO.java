package egovframework.com.cmm;

import java.io.Serializable;
import java.util.Date;

/**
 * @Class Name : TokenVO.java
 * @Description : Token Token VO class
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.03.03    박지욱          최초 생성
 *
 *  @author 공통서비스 개발팀 박지욱
 *  @since 2009.03.03
 *  @version 1.0
 *  @see
 *  
 */
public class TokenVO implements Serializable {
	/** serial Version UID */
	private static final long serialVersionUID = -1L;
	/** 아이디 */
	private int id;
	/** 아이디 */
	private String phone;
	/** 이름 */
	private String number;
	/** verified code */
	private String use_yn;
	/** createdAt */
	private Date createdAt;
	/** createdAt */
	private Date updateedAt;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @return the number
	 */
	public String getNumber() {
		return number;
	}
	/**
	 * @return the use_yn
	 */
	public String getUse_yn() {
		return use_yn;
	}
	/**
	 * @return the createdAt
	 */
	public Date getCreatedAt() {
		return createdAt;
	}
	/**
	 * @return the updateedAt
	 */
	public Date getUpdateedAt() {
		return updateedAt;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @param number the number to set
	 */
	public void setNumber(String number) {
		this.number = number;
	}
	/**
	 * @param use_yn the use_yn to set
	 */
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}
	/**
	 * @param createdAt the createdAt to set
	 */
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	/**
	 * @param updateedAt the updateedAt to set
	 */
	public void setUpdateedAt(Date updateedAt) {
		this.updateedAt = updateedAt;
	}
	public TokenVO(String phone, String number) {
		super();
		this.phone = phone;
		this.number = number;
	}
	public TokenVO() {
		super();
	}
	
}
