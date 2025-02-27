package egovframework.let.uat.uia.service;

import egovframework.com.cmm.ChangePassVO;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.SearchPassVO;
import egovframework.com.cmm.SearchVO;
import egovframework.let.citizen.service.CitizenVO;

import java.util.List;

/**
 * 일반 로그인을 처리하는 비즈니스 구현 클래스
 * @author 공통서비스 개발팀 박지욱
 * @since 2009.03.06
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2009.03.06  박지욱          최초 생성
 *  2011.08.31  JJY            경량환경 템플릿 커스터마이징버전 생성
 *
 *  </pre>
 */
public interface EgovLoginService {

	/**
	 * 일반 로그인을 처리한다
	 * @return LoginVO
	 *
	 * @param vo    LoginVO
	 * @exception Exception Exception
	 */
	public LoginVO actionLogin(LoginVO vo) throws Exception;

	/**
	 * 아이디를 찾는다.
	 * @return LoginVO
	 *
	 * @param vo    LoginVO
	 * @exception Exception Exception
	 */
	public List<CitizenVO> searchId(SearchVO vo) throws Exception;

	/**
	 * 비밀번호를 찾는다.
	 * @return boolean
	 *
	 * @param vo    LoginVO
	 * @exception Exception Exception
	 */
	public boolean searchPassword(LoginVO vo) throws Exception;
	
	/**
	 * 비밀번호를 찾는다.
	 * @return boolean
	 *
	 * @param vo    LoginVO
	 * @exception Exception Exception
	 */
	public CitizenVO searchPassword(SearchPassVO vo) throws Exception;

	/**
	 * update Password
	 *
	 * @param vo
	 * @throws Exception
	 */
	public void updatePassword(ChangePassVO vo) throws Exception;

	/**
	 * 사용자 ID 검색.
	 * @return boolean
	 *
	 * @param uid    String
	 * @exception Exception Exception
	 */
	public boolean searchUserID(String uid);

	/**
	 * register
	 * @param citizenVO
	 * @return
	 */
	public CitizenVO register(CitizenVO citizenVO) throws Exception;

	public boolean checkValid(String userId) throws Exception;

	public void delete(CitizenVO citizenVO) throws Exception;
}