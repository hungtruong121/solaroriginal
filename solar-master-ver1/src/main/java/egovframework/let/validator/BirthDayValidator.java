package egovframework.let.validator;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

/**
 * @author itphutran
 */

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.let.citizen.service.BuildOrderVO;
import egovframework.let.citizen.service.RegisterAsVO;

@Component("birthDayValidator")
public class BirthDayValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return RegisterAsVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		BuildOrderVO buildOrderVO = (BuildOrderVO) target;
		String regex = "([0-9]{4}\\.[0-9]{2}\\.[0-9]{2})";
		if (!Pattern.matches(regex, buildOrderVO.getUserBirth().toString())) {
			errors.rejectValue("userBirth", "buildOrderVO.birthday.format",null, null);
		}
	}
	
	public static void main(String[] args) {
		//@test
		String regex = "([0-9]{4}\\.[0-9]{2}\\.[0-9]{2})";
		System.out.println(Pattern.matches(regex, "1990.05.12"));
	}
}
