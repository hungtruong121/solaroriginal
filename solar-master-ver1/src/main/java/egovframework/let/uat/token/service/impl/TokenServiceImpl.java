package egovframework.let.uat.token.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cmm.TokenVO;
import egovframework.let.uat.token.service.TokenService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

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
@Service("tokenService")
public class TokenServiceImpl extends EgovAbstractServiceImpl implements TokenService {

	@Resource(name = "tokenDAO")
	private TokenDAO tokenDAO;

	@Override
	public boolean verifyToken(TokenVO vo) throws Exception {
		return tokenDAO.verifyToken(vo);
	}
	@Override
	public boolean compareVerifyToken(TokenVO vo) throws Exception {
		return tokenDAO.compareVerifyToken(vo);
	}

	@Override
	public int insertToken(TokenVO vo) throws Exception {
		return tokenDAO.insertToken(vo);
	}

	@Override
	public boolean searchToken(TokenVO tokenVO)throws Exception{
		return tokenDAO.searchToken(tokenVO);
	}
}