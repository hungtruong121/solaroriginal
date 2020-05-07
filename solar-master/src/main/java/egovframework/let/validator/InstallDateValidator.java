package egovframework.let.validator;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Component;

/**
 * @author itphutran
 */

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.com.cmm.DateUtil;
import egovframework.let.citizen.service.BuildOrderVO;
import egovframework.let.citizen.service.RegisterAsVO;

@Component("installDateValidator")
public class InstallDateValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return RegisterAsVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		BuildOrderVO buildOrderVO = (BuildOrderVO) target;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		try {
			if(buildOrderVO.getInstallDate() != null) {
				if (!DateUtil.isValidDate(sdf.format(buildOrderVO.getInstallDate()))) {
					errors.rejectValue("installDate", "buildOrderVO.installDate.date", null, null);
				}
			} else {
				errors.rejectValue("installDate", "buildOrderVO.installDate.dateFormat", null, null);
			}
			
		} catch (ParseException e) {
			errors.rejectValue("installDate", "buildOrderVO.installDate.dateFormat", null, null);
		}
	}
	
	public static void main(String[] args) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		System.out.println(sdf.format(null));
	}
}
