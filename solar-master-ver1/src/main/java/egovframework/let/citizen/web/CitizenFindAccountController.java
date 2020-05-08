package egovframework.let.citizen.web;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.SearchPassVO;
import egovframework.com.cmm.TokenVO;
import egovframework.let.citizen.service.CitizenVO;
import egovframework.let.citizen.service.MessageService;
import egovframework.let.uat.token.service.TokenService;
import egovframework.let.uat.uia.service.EgovLoginService;
import egovframework.let.utl.fcc.service.CitizenPhoneUtil;
import egovframework.let.utl.fcc.service.EgovNumberUtil;
import egovframework.let.validator.EmailValidator;
import egovframework.let.validator.PhoneValidator;

@Controller
public class CitizenFindAccountController {

	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	@Autowired
	@Qualifier("phoneValidator")
	private PhoneValidator phoneValidator;

	@Resource(name = "loginService")
	private EgovLoginService loginService;

	@Autowired
	EmailValidator emailValidator;

	/** TokenService */
	@Resource(name = "tokenService")
	private TokenService tokenService;

	@Resource(name = "messageService")
	MessageService messageService;

	@RequestMapping(value = "citizen/findAccount.do", method = RequestMethod.GET)
	public String findAcount(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request, ModelMap model) {
		return "citizen/find_account/find_account";
	}

	@RequestMapping("citizen/findAccountPw.do")
	public String findAcountPw() {
		return "citizen/find_account/find_account_pw";
	}

	@RequestMapping("citizen/findAccount2.do")
	public String findAcount2() {
		return "citizen/find_account/find_account_2";
	}

	@RequestMapping(value = "citizen/verifyPhone.do", method = RequestMethod.POST)
	@ResponseBody()
	public HashMap<String, String> VerifyByPhone(@ModelAttribute("phone") String phoneTo) throws Exception {
		HashMap<String, String> rs = new HashMap<String, String>();
		rs.put("title", egovMessageSource.getMessage("success.citizen.title"));
		rs.put("message", egovMessageSource.getMessage("success.citizen.verify"));

		phoneValidator.validate(phoneTo);
		phoneTo = CitizenPhoneUtil.convertToPhoneDash(phoneTo);

		boolean checkUseID = loginService.searchUserID(phoneTo);
		if (!checkUseID) {
			rs.put("title",egovMessageSource.getMessage("fail.citizen.title"));
			rs.put("message", egovMessageSource.getMessage("fail.citizen.notexistsphone"));
			return rs;
		}
		TokenVO tokenVO = new TokenVO();
		tokenVO.setPhone(phoneTo);

		String verifyCode = EgovNumberUtil.generateToken();
		tokenVO.setNumber(verifyCode);
		String status = messageService.sendSMS(phoneTo, verifyCode);
		if ("success".equals(status)) {
			try {
				tokenService.insertToken(tokenVO);
			} catch (Exception e) {
				rs.put("title",egovMessageSource.getMessage("fail.citizen.title"));
				rs.put("message", egovMessageSource.getMessage("fail.citizen.verify"));
			}
		} else {
			rs.put("title",egovMessageSource.getMessage("fail.citizen.title"));
			rs.put("message", egovMessageSource.getMessage("fail.citizen.verify"));
		}
		return rs;
	}

	@RequestMapping(value = "/citizen/findPass.do", method = RequestMethod.POST)
	public String findPass(SearchPassVO res, Model model, RedirectAttributes redir) throws Exception {
		phoneValidator.validate(res.getPhone());
		res.setPhone(CitizenPhoneUtil.convertToPhoneDash(res.getPhone()));
		
		// 1. 일반 로그인 처리
		TokenVO tokenVO = new TokenVO();
		tokenVO.setPhone(res.getPhone());
		tokenVO.setNumber(res.getVerifyPhone());
		if(!tokenService.compareVerifyToken(tokenVO)) {
			redir.addFlashAttribute("title", "인증번호 오류");
			redir.addFlashAttribute("message", egovMessageSource.getMessage("fail.citizen.tokennotcorrect"));
			return "redirect:/citizen/findAccountPw.do";
		}
		boolean verifiedToken = tokenService.verifyToken(tokenVO);
		if (!verifiedToken) {
			redir.addFlashAttribute("title", "인증번호 시간 초과");
			redir.addFlashAttribute("message", egovMessageSource.getMessage("fail.citizen.tokenExpiryTime"));
			return "redirect:/citizen/findAccountPw.do";
		}
		res.setuIdPhone(res.getPhone());
		CitizenVO vo = loginService.searchPassword(res);
		if (vo != null && vo.getPassword() != null && !vo.getPassword().equals("")) {
			return "redirect:deep/account_02.do?uid=" + vo.getUid() + "&token=" + tokenVO.getNumber();
		} else {
			redir.addFlashAttribute("title",egovMessageSource.getMessage("fail.citizen.findpass.title"));
			redir.addFlashAttribute("message", egovMessageSource.getMessage("fail.citizen.findpass.message"));
			return "redirect:/citizen/findAccountPw.do";
		}
	}

	@RequestMapping("citizen/deepAccount01.do")
	public String deepAccount01() {
		return "citizen/find_account/deep_account_01";
	}

	@RequestMapping("citizen/deepAccount02.do")
	public String deepAccount02() {
		return "citizen/find_account/deep_account_02";
	}

	@RequestMapping("citizen/email-number.do")
	public String emailNumberWhenFind() {
		return "citizen/find_account/email_number";
	}
}