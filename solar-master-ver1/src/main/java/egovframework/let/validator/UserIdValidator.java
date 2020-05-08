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

@Component("userIdValidator")
public class UserIdValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return RegisterMemberVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {

		RegisterMemberVO registerMember = (RegisterMemberVO) target;
		String regex = "^[0-9]{3}-[0-9]{4}-[0-9]{4}$";
		
		if(EgovStringUtil.isEmptyOrWhitespace(registerMember.getUser_id())){ 
			errors.rejectValue("user_id", "registerMember.required");
		}
		
		if (!Pattern.matches(regex, registerMember.getUser_id())) {
			errors.rejectValue("user_id", "registerMember.validUserId");
		}
	}
}
