package egovframework.let.uat.token.service;

import egovframework.com.cmm.TokenVO;

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
public interface TokenService {

	/**
	 * 일반 로그인을 처리한다
	 * @return LoginVO
	 *
	 * @param vo    LoginVO
	 * @exception Exception Exception
	 */
	public boolean verifyToken(TokenVO vo) throws Exception;
	/**
	 * 일반 로그인을 처리한다
	 * @return LoginVO
	 *
	 * @param vo    LoginVO
	 * @exception Exception Exception
	 */
	public boolean compareVerifyToken(TokenVO vo) throws Exception;
	/**
	 * 일반 로그인을 처리한다
	 * @return LoginVO
	 *
	 * @param vo    LoginVO
	 * @exception Exception Exception
	 */
	public int insertToken(TokenVO vo) throws Exception;

	/**
	 * 검색 토큰
	 * @return boolean
	 *
	 * @param tokenVO    TokenVO
	 * @exception Exception Exception
	 */
	public boolean searchToken(TokenVO tokenVO)throws Exception;
}