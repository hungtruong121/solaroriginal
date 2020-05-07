package egovframework.let.uat.uia.web;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.SearchVO;
import egovframework.com.cmm.interceptor.UserCookieGenerator;
import egovframework.let.citizen.service.CitizenVO;
import egovframework.let.uat.uia.service.EgovLoginService;
import egovframework.let.utl.fcc.service.CitizenPhoneUtil;
import egovframework.let.validator.MemberValidator;
import egovframework.let.validator.NonMemberValidator;
import egovframework.let.validator.PhoneValidator;
import egovframework.rte.fdl.cmmn.trace.LeaveaTrace;
import egovframework.rte.fdl.property.EgovPropertyService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import java.util.Collections;
import java.util.Date;
import java.util.List;

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
public class EgovLoginController {

	/** EgovLoginService */
	@Resource(name = "loginService")
	private EgovLoginService loginService;

	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** TRACE */
	@Resource(name = "leaveaTrace")
	protected LeaveaTrace leaveaTrace;

	@Autowired
	@Qualifier("memberValidator")
	private MemberValidator memberValidator;

	@Autowired
	@Qualifier("nonMemberValidator")
	private NonMemberValidator nonMemberValidator;
	
	@Autowired
	@Qualifier("phoneValidator")
	private PhoneValidator phoneValidator;

	private final UserCookieGenerator cookieGenerator = new UserCookieGenerator();

	/**
	 * 로그인 화면으로 들어간다
	 * @param vo - 로그인후 이동할 URL이 담긴 LoginVO
	 * @return 로그인 페이지
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/login.do")
	public String loginUsrView(@ModelAttribute("loginVO") LoginVO loginVO, 
			HttpServletRequest request, 
			HttpServletResponse response, 
			ModelMap model, 
			HttpSession session) throws Exception {
		if(session.getAttribute("LoginVO") != null) {
			return "redirect:/citizen/index.do";
		}
		
		return "/citizen/auth/login_01";
	}

	/**
	 * member Login
	 * @param loginVO -  LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/actionLogin.do")
	public String actionLogin(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request, ModelMap model) throws Exception {

		memberValidator.validate(loginVO);
		loginVO.setUid(CitizenPhoneUtil.convertToPhoneDash(loginVO.getUid()));
		// 1. 일반 로그인 처리
        LoginVO resultVO = loginService.actionLogin(loginVO);

		return this.navigate(resultVO, request, model);
	}

	/**
	 * member Login
	 * @param loginVO -  LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/actionRegister.do")
	public String register(@ModelAttribute("citizenVO") CitizenVO citizenVO, HttpServletRequest request, ModelMap model) throws Exception {

		//TODO memberValidator.validate(citizenVO);
		// 1. 일반 로그인 처리
		CitizenVO resultVO = loginService.register(citizenVO);

		return "forward:/citizen/index.do";
	}

	/**
	 * member leave
	 * @param loginVO -  LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/actionDelete.do")
	public String delete(@ModelAttribute("citizenVO") CitizenVO citizenVO, HttpServletRequest request, ModelMap model) throws Exception {

		//TODO memberValidator.validate(citizenVO);
		// 1. 일반 로그인 처리
		loginService.delete(citizenVO);

		return "forward:/citizen/index.do";
	}



	/**
	 *
	 * @param resultVO
	 * @param request
	 * @param model
	 * @return
	 */
	private String navigate(LoginVO resultVO, HttpServletRequest request, ModelMap model) {
		if (resultVO != null) {
			request.getSession().setAttribute("LoginVO", resultVO);
			return "redirect:/citizen/index.do";
		} else {
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
			return "citizen/auth/login_01";
		}
	}

	/**
	 * 로그아웃한다.
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/logout.do")
	public String actionLogout(HttpServletRequest request, HttpServletResponse response, ModelMap model, HttpSession session) throws Exception {
		RequestContextHolder.getRequestAttributes().removeAttribute("LoginVO", RequestAttributes.SCOPE_SESSION);
		// check exits session build order, if exits then remove status build order of user login
		if(session.getAttribute("checkExistBuildOrder") != null) {
			session.removeAttribute("checkExistBuildOrder");
		}
		cookieGenerator.removeCookie(response);
		return "forward:/citizen/login.do";
	}

	/**
	 * 일반 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/search/id")
	public @ResponseBody List<CitizenVO> searchId(@ModelAttribute("searchVo") SearchVO searchVo, HttpServletRequest request, ModelMap model) throws Exception {

		// 1. 일반 로그인 처리
		List<CitizenVO> resultVO = loginService.searchId(searchVo);

		if (resultVO != null) {
			return resultVO;
		} else {
			model.addAttribute("message", egovMessageSource.getMessage("fail.common.login"));
			return Collections.emptyList();
		}
	}

	/**
	 * 일반 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	@RequestMapping(value = "/citizen/search/pass")
	public @ResponseBody Boolean searchPass(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request, ModelMap model) throws Exception {

		// 1. 일반 로그인 처리
		boolean resultVO = loginService.searchPassword(loginVO);

		return resultVO;
	}

}