package egovframework.let.validator;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

/**
 * @author itphutran
 */

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.let.citizen.service.RegisterMemberVO;
import egovframework.let.utl.fcc.service.EgovStringUtil;

@Component("passwordValidator")
public class PasswordValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return RegisterMemberVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {

		RegisterMemberVO registerMember = (RegisterMemberVO) target;
		String regex = "([A-Za-z0-9\\\\\\!\\@\\#\\$\\%\\^\\&\\*\\(\\)\\_\\-\\=\\+\\|]{8,20})";
		if(EgovStringUtil.isEmptyOrWhitespace(registerMember.getPassword())){ 
			errors.rejectValue("password", "registerMember.password");
			return;
		}
		if (!Pattern.matches(regex, registerMember.getPassword())) {
			errors.rejectValue("password", "registerMember.password", new Object[] { 8, 20 }, null);
		}
	}
}
