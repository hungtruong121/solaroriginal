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
public class ChangePassVO implements Serializable{
	/** serial Version UID */
	private static final long serialVersionUID = -1L;
	private String uid;
	private String token;
	private String newPassword;
	private String checkPassword;
	/**
	 * @return the uid
	 */
	public String getUid() {
		return uid;
	}
	/**
	 * @return the token
	 */
	public String getToken() {
		return token;
	}
	/**
	 * @return the newPassword
	 */
	public String getNewPassword() {
		return newPassword;
	}
	/**
	 * @return the checkPassword
	 */
	public String getCheckPassword() {
		return checkPassword;
	}
	/**
	 * @param uid the uid to set
	 */
	public void setUid(String uid) {
		this.uid = uid;
	}
	/**
	 * @param token the token to set
	 */
	public void setToken(String token) {
		this.token = token;
	}
	/**
	 * @param newPassword the newPassword to set
	 */
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	/**
	 * @param checkPassword the checkPassword to set
	 */
	public void setCheckPassword(String checkPassword) {
		this.checkPassword = checkPassword;
	}
}
