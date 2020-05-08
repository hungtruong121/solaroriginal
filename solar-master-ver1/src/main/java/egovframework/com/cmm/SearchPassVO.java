package egovframework.com.cmm;

import java.io.Serializable;
import java.util.Date;

/**
 * @Class Name : SearchVO.java
 * @Description : Search VO class
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
public class SearchPassVO implements Serializable{
	/** serial Version UID */
	private static final long serialVersionUID = -1L;
	/** 아이디 */
	private String uIdPhone;
	/** 이름 */
	private String namePhone;
	/** Phone */
	private String phone;
	/** Verify code */
	private String verifyPhone;
	public String getuIdPhone() {
		return uIdPhone;
	}
	public void setuIdPhone(String uIdPhone) {
		this.uIdPhone = uIdPhone;
	}
	public String getNamePhone() {
		return namePhone;
	}
	public void setNamePhone(String namePhone) {
		this.namePhone = namePhone;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getVerifyPhone() {
		return verifyPhone;
	}
	public void setVerifyPhone(String verifyPhone) {
		this.verifyPhone = verifyPhone;
	}
}
