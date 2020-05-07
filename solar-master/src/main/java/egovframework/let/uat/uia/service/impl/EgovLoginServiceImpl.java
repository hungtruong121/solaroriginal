package egovframework.let.uat.uia.service.impl;

import egovframework.com.cmm.ChangePassVO;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.SearchPassVO;
import egovframework.com.cmm.SearchVO;
import egovframework.let.citizen.service.CitizenVO;
import egovframework.let.uat.uia.service.EgovLoginService;
import egovframework.let.utl.fcc.service.EgovNumberUtil;
import egovframework.let.utl.fcc.service.EgovStringUtil;
import egovframework.let.utl.sim.service.EgovFileScrty;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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
@Service("loginService")
public class EgovLoginServiceImpl extends EgovAbstractServiceImpl implements EgovLoginService {

	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;

	/**
	 * 일반 로그인을 처리한다
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	@Override
	public LoginVO actionLogin(LoginVO vo) throws Exception {
		// 1. 입력한 비밀번호를 암호화한다.
		vo.setPassword(EgovFileScrty.encryptPassword(vo.getPassword(), vo.getUid()));

		// 2. 아이디와 암호화된 비밀번호가 DB와 일치하는지 확인한다.
		LoginVO resultVO = loginDAO.actionLogin(vo);

		return resultVO;
	}

	/**
	 * 아이디를 찾는다.
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	@Override
	public List<CitizenVO> searchId(SearchVO vo) throws Exception {

		// 1. 이름, 이메일주소가 DB와 일치하는 사용자 ID를 조회한다.
		List<CitizenVO> citizenVO = loginDAO.searchId(vo);

		return citizenVO;
	}

	/**
	 * 비밀번호를 찾는다.
	 * @param vo LoginVO
	 * @return boolean
	 * @exception Exception
	 */
	@Override
	public boolean searchPassword(LoginVO vo) throws Exception {

		boolean result = true;

		// 1. 아이디, 이름, 이메일주소, 비밀번호 힌트, 비밀번호 정답이 DB와 일치하는 사용자 Password를 조회한다.
		LoginVO loginVO = loginDAO.searchPassword(vo);
		if (loginVO == null || loginVO.getPassword() == null || loginVO.getPassword().equals("")) {
			return false;
		}

		// 2. 임시 비밀번호를 생성한다.(영+영+숫+영+영+숫=6자리)
		String newpassword = "";
		for (int i = 1; i <= 6; i++) {
			// 영자
			if (i % 3 != 0) {
				newpassword += EgovStringUtil.getRandomStr('a', 'z');
				// 숫자
			} else {
				newpassword += EgovNumberUtil.getRandomNum(0, 9);
			}
		}

		// 3. 임시 비밀번호를 암호화하여 DB에 저장한다.
		LoginVO pwVO = new LoginVO();
		String enpassword = EgovFileScrty.encryptPassword(newpassword, String.valueOf(vo.getUid()));
		pwVO.setId(vo.getId());
		pwVO.setPassword(enpassword);
		loginDAO.updatePassword(pwVO);

		return result;
	}
	
	/**
	 * 비밀번호를 찾는다.
	 * @param vo SearchPassVO
	 * @return CitizenVO
	 * @exception Exception
	 */
	@Override
	public CitizenVO searchPassword(SearchPassVO vo) throws Exception {
		// 1. 아이디, 이름, 이메일주소, 비밀번호 힌트, 비밀번호 정답이 DB와 일치하는 사용자 Password를 조회한다.
		CitizenVO citizenVO = loginDAO.searchPassword(vo);
		if (citizenVO != null && citizenVO.getPassword() != null && !citizenVO.getPassword().equals("")) {
			return citizenVO;
		}
		return null;
	}

	@Override
	public void updatePassword(ChangePassVO vo) throws Exception {
		String enpassword = EgovFileScrty.encryptPassword(vo.getNewPassword(), String.valueOf(vo.getUid()));
		LoginVO pwVO = new LoginVO();
		pwVO.setUid(vo.getUid());
		pwVO.setPassword(enpassword);
		loginDAO.updatePassword(pwVO);
	}
	
	/**
	 * 사용자 ID 검색.
	 * @return boolean
	 *
	 * @param uid    String
	 * @exception Exception Exception
	 */
	@Override
	public boolean searchUserID(String uid)
	{
		return loginDAO.checkValid(uid);		
	}

	@Override
	public CitizenVO register(CitizenVO vo) throws Exception {
		//boolean valid = loginDAO.checkValid(vo.getUid());
		vo.setPassword(EgovFileScrty.encryptPassword(vo.getPassword(), vo.getUid()));
		return loginDAO.insert(vo);
	}

	@Override
	public boolean checkValid(String userId) throws Exception {
		return loginDAO.checkValid(userId);
	}

	@Override
	public void delete(CitizenVO vo) throws Exception {
		loginDAO.delete(vo);
	}
}