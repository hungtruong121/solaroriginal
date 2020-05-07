package egovframework.let.uat.uia.service.impl;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.SearchPassVO;
import egovframework.com.cmm.SearchVO;
import egovframework.let.citizen.service.CitizenVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

import org.springframework.stereotype.Repository;

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
@Repository("loginDAO")
public class LoginDAO extends EgovAbstractDAO {
	/**
	 * create Connection Repository
	 * @param uid
	 * @return
	 * @throws Exception
	 */
	public LoginVO connectRepository(String uid) throws Exception {
		return (LoginVO) select("loginDAO.connectRepository", uid);
	};

	/**
	 * 일반 로그인을 처리한다
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	public LoginVO actionLogin(LoginVO vo) throws Exception {
		return (LoginVO) select("loginDAO.actionLogin", vo);
	}

/*
	*/
/**\
	 * 일반 로그인을 처리한다
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 *//*

	public LoginVO actionAnonyLogin(LoginVO vo) throws Exception {
		vo.setId((int) insert("loginDAO.insertAnonyUser", vo));
		return vo;
	}
*/

	/**
	 * 아이디를 찾는다.
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	public List<CitizenVO> searchId(SearchVO vo) throws Exception {
		return (List<CitizenVO>) list("loginDAO.searchId", vo);
	}

	/**
	 * 비밀번호를 찾는다.
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	public LoginVO searchPassword(LoginVO vo) throws Exception {
		return (LoginVO) select("loginDAO.searchPassword", vo);
	}
	
	/**
	 * 비밀번호를 찾는다.
	 * @param vo SearchPassVO
	 * @return CitizenVO
	 * @exception Exception
	 */
	public CitizenVO searchPassword(SearchPassVO vo) throws Exception {
		return (CitizenVO) select("loginDAO.searchPasswordByPhone", vo);		
	}
	
	/**
	 * 변경된 비밀번호를 저장한다.
	 * @param vo LoginVO
	 * @exception Exception
	 */
	public void updatePassword(LoginVO vo) throws Exception {
		update("loginDAO.updatePassword", vo);
	}

	/**
	 * insert
	 *
	 * @param vo
	 * @return
	 */
	public CitizenVO insert(CitizenVO vo) {
		vo.setId((int) insert("loginDAO.insert", vo));
		return vo;
	}

	/**
	 *
	 * @param userId
	 * @return
	 */
	public boolean exist(String userId) {
		CitizenVO vo = (CitizenVO) select("loginDAO.exist", userId);
		return vo != null;
	}

	/**
	 *
	 * @param userId
	 * @return
	 */
	public boolean checkValid(String userId) {
		CitizenVO vo = (CitizenVO) select("loginDAO.searchUserID", userId);
		if(vo != null) {
			return true;
		}
		return false;
	}

	/**
	 * delete
	 * @param vo
	 */
	public void delete(CitizenVO vo) {
		delete("loginDAO.delete", vo);
	}
}
