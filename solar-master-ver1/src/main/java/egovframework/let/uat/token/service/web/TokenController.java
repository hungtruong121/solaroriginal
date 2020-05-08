package egovframework.let.uat.token.service.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.TokenVO;
import egovframework.let.uat.token.service.TokenService;
import egovframework.rte.fdl.cmmn.trace.LeaveaTrace;
import egovframework.rte.fdl.property.EgovPropertyService;

/**
 * 일반 로그인을 처리하는 컨트롤러 클래스
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
@Controller
public class TokenController {

	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** TRACE */
	@Resource(name = "leaveaTrace")
	protected LeaveaTrace leaveaTrace;

	/** TokenService */
	@Resource(name = "tokenService")
	private TokenService tokenService;

	/**
	 * member Login
	 * @param loginVO -  LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/verify-token")
	public @ResponseBody Boolean verifyToken(@ModelAttribute("tokenVO") TokenVO tokenVO, HttpServletRequest request, ModelMap model) throws Exception {
		/*tokenVO.setToken(EgovNumberUtil.generateToken());
		int token = tokenService.insertToken(tokenVO);
		// 1. 일반 로그인 처리
		boolean verifiedToken = tokenService.verifyToken(tokenVO);

		return verifiedToken;*/
		return null;
	}
}