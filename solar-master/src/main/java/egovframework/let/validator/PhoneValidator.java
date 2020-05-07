package egovframework.let.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

/**
 * @author pho.vo
 */
@Component("phoneValidator")
public class PhoneValidator extends AbstractThrowableValidator<String, IllegalArgumentException> {

	public static final String PHONE_REGEX_DASH = "^[0-9]{3}-[0-9]{4}-[0-9]{4}$";
	public static final String PHONE_REGEX = "^\\d{11}$";

	@Override
	public void validate(String input) throws IllegalArgumentException {
		if (StringUtils.hasText(input)) {
			String phoneRegex = "";
			if(input.contains("-")){
				phoneRegex = PHONE_REGEX_DASH;
			} else {
				phoneRegex = PHONE_REGEX;
			}
			
			Matcher matcher = Pattern.compile(phoneRegex).matcher(input);
			Assert.isTrue(matcher.find(), "invalid phone number@" + input);
		}
	}
}
