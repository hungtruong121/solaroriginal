package egovframework.let.validator;

import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author pho.vo
 */
@Component("emailValidator")
public class EmailValidator extends AbstractThrowableValidator<String, IllegalArgumentException> {

	public static final String EMAIL_REGEX = "^[_\\w\\d-]+(\\.[_\\w\\d-]+)*@[\\w\\d-]+(\\.[\\w\\d-]+)*(\\.[\\w]{2,})$";

	@Override
	public void validate(String input) throws IllegalArgumentException {
		if (StringUtils.hasText(input)) {
			Matcher matcher = Pattern.compile(EMAIL_REGEX).matcher(input);
			Assert.isTrue(matcher.find(), "invalid email@" + input);
		}
	}
}
