package egovframework.let.citizen.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.ChangePassVO;
import egovframework.com.cmm.TokenVO;
import egovframework.let.uat.token.service.TokenService;
import egovframework.let.uat.uia.service.EgovLoginService;
import egovframework.let.validator.ChangePasswordValidator;

@Controller
public class CitizenDeepAccountController {
	@Resource(name="changePasswordValidator")
	ChangePasswordValidator changePasswordValidator;
	
	/** TokenService */
	@Resource(name = "tokenService")
	private TokenService tokenService;
	
	/** EgovLoginService */
	@Resource(name = "loginService")
	private EgovLoginService loginService;

	
	@RequestMapping("citizen/deep/account.do")
	public String account() {
		return "citizen/deep_account/deep_account01";
	}
	
	@RequestMapping("citizen/deep/account_01.do")
	public String account_01() {
		return "citizen/deep_account/deep_account_01";
	}
	
	@RequestMapping("citizen/deep/account_02.do")
	public String account_02(@ModelAttribute("uid") String uid,
			@ModelAttribute("token") String token, Model model) {
		model.addAttribute("uid", uid);
		model.addAttribute("token", token);
		return "citizen/deep_account/deep_account_02";
	}
	
	@RequestMapping("citizen/deep/changePassword.do")
	public String changePassword(ChangePassVO changePassVo, Model model) throws Exception {
		changePasswordValidator.validate(changePassVo);
		
		// 1. 일반 로그인 처리
		TokenVO tokenVO  = new TokenVO();
		tokenVO.setPhone(changePassVo.getUid());
		tokenVO.setNumber(changePassVo.getToken());
		
		boolean searchToken = tokenService.searchToken(tokenVO);
		if(!searchToken){
			model.addAttribute("message","암호를 변경할 수 없습니다. 다시 시도하십시오.");
			return "citizen/deep_account/deep_account_02";
		}
		loginService.updatePassword(changePassVo);
		
		return "redirect:/citizen/login.do";
	}
}
