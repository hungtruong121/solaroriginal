package egovframework.let.uat.token.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.TokenVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

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
@Repository("tokenDAO")
public class TokenDAO extends EgovAbstractDAO {

	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	/**
	 * verify Token
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public boolean verifyToken(TokenVO vo) throws Exception {
		String expiryTime = egovMessageSource.getMessage("apis.aligo.expiryTime");
		int time = Integer.parseInt(expiryTime);
		TokenVO token = (TokenVO) select("tokenDAO.verifyToken", vo);
		return token != null && new Date(System.currentTimeMillis() - 1000 * time ).before(token.getCreatedAt());
	}
	/**
	 * verify Token
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public boolean compareVerifyToken(TokenVO vo) throws Exception {
		TokenVO token = (TokenVO) select("tokenDAO.verifyToken", vo);
		return token != null;
	}

	/**
	 * insert Token
	 *
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public int insertToken(TokenVO vo) throws Exception {
		return  (int) insert("tokenDAO.insertToken", vo);
	}

	/**
	 * search Token
	 * @param tokenVO
	 * @return
	 * @throws Exception
	 */
	public boolean searchToken(TokenVO tokenVO) {
		TokenVO token = (TokenVO) select("tokenDAO.verifyToken", tokenVO);
		return token != null && !token.getPhone().equals("");
	}
}
