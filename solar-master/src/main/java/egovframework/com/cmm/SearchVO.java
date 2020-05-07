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
public class SearchVO implements Serializable{
	/** serial Version UID */
	private static final long serialVersionUID = -1L;
	/** 아이디 */
	private String uid;
	/** 이름 */
	private String name;
	/** search type */
	private String type;
	/** verified code */
	private String token;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
}
