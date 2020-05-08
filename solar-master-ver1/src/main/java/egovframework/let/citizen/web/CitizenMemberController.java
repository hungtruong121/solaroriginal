package egovframework.let.citizen.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.TokenVO;
import egovframework.let.citizen.service.CitizenVO;
import egovframework.let.citizen.service.JoinMemberRuleVO;
import egovframework.let.citizen.service.RegisterMemberVO;
import egovframework.let.uat.token.service.TokenService;
import egovframework.let.uat.uia.service.EgovLoginService;
import egovframework.let.uat.uia.service.impl.LoginDAO;
import egovframework.let.utl.fcc.service.CitizenPhoneUtil;
import egovframework.let.validator.RegisterMemberValidator;

@Controller
public class CitizenMemberController {
	
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	@Resource(name = "tokenService")
	private TokenService tokenService;
	
	@Resource(name = "loginService")
	private EgovLoginService loginService;
	
	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;

	@Autowired
	@Qualifier("registerMemberValidator")
	private RegisterMemberValidator registerMemberValidator;

	@RequestMapping("citizen/join.do")
	public String joinMember(Model model, HttpServletRequest request) {
		LoginVO login = (LoginVO) request.getSession().getAttribute("LoginVO");
		if(login != null) {
			return "redirect:index.do";
		}
		model.addAttribute("joinMemberRuleVO", new JoinMemberRuleVO());
		return "citizen/member/join_01";
	}

	@RequestMapping(value = "citizen/join.do", method = RequestMethod.POST)
	public String joinMember(@ModelAttribute("checked") Boolean acceptTerm, Model model) {
		if (!acceptTerm) {
			return "citizen/member/join_01";
		}
		model.asMap().clear();
		return "redirect:/citizen/register-member.do";
	}

	@RequestMapping("citizen/register-member.do")
	public String registerMember(Model model, HttpServletRequest request) {
		LoginVO login = (LoginVO) request.getSession().getAttribute("LoginVO");
		if(login != null) {
			return "redirect:index.do";
		}
		model.addAttribute("registerMember", new RegisterMemberVO());
		return "citizen/member/member_info";
	}

	@RequestMapping(value = "citizen/register-member.do", method = RequestMethod.POST)
	public String registerMember(@ModelAttribute("registerMember") RegisterMemberVO registerMember,
			BindingResult bindingResult, Model model, HttpServletRequest request, RedirectAttributes redir) {
		LoginVO login = (LoginVO) request.getSession().getAttribute("LoginVO");
		if(login != null) {
			return "redirect:index.do";
		}
		registerMember.setUser_id(CitizenPhoneUtil.convertToPhoneDash(registerMember.getUser_id()));
		registerMemberValidator.validate(registerMember, bindingResult);		
		
		if (bindingResult.hasErrors()) {
			// 만일 validation 에러가 있으면
			return "citizen/member/member_info";
		}
		//tokenDAO.verifyToken
		TokenVO tokenVO = new TokenVO(registerMember.getUser_id(), registerMember.getNumber());
		try {
			boolean valid = loginDAO.checkValid(registerMember.getUser_id());
			if(valid) {
				// Phone exist, send message for user
				//egovMessageSource.getMessage("fail.common.login")
				model.addAttribute("title", "오류");
				model.addAttribute("msg", egovMessageSource.getMessage("fail.citizen.alreadyexistsphone"));
				return "citizen/member/member_info";
			}
			if(!tokenService.compareVerifyToken(tokenVO)) {
				model.addAttribute("title", "인증번호 오류");
				model.addAttribute("msg", egovMessageSource.getMessage("fail.citizen.tokennotcorrect"));
				return "citizen/member/member_info";
			}
			boolean isOKToken = tokenService.verifyToken(tokenVO);
			if(isOKToken) {
				// Token it's OK
				// Convert DTO RegisterMemberVO to CitizenVO
				CitizenVO  citizenVO = new CitizenVO();
				citizenVO.setUid(registerMember.getUser_id());
				citizenVO.setName(registerMember.getName());
				citizenVO.setPassword(registerMember.getPassword());
				// insert database
				loginService.register(citizenVO);
			} else {
				// Token not OK, send message
				model.addAttribute("title", "인증번호 시간 초과");
				model.addAttribute("msg", egovMessageSource.getMessage("fail.citizen.tokenExpiryTime"));
				return "citizen/member/member_info";
			}
		} catch (Exception e) {
			model.addAttribute("title", "오류");
			model.addAttribute("msg", egovMessageSource.getMessage("fail.citizen.errorsendcode"));
			return "citizen/member/member_info";
		}
		// Performing the insert successfully then redirecting to the main screen
		redir.addFlashAttribute("title", "회원 가입 완료");
		redir.addFlashAttribute("msg", "회원 가입이 완료 되었습니다. 감사합니다.");
		return "redirect:/citizen/login.do";
	}
	
}
