package egovframework.let.validator;

import java.util.List;

/**
 * @author pho.vo
 */
public abstract class AbstractThrowableValidator <INPUT, EXCEPTION extends Exception> 
	implements IValidator<INPUT, Exception> 
{
	@Override
	public abstract void validate(INPUT input) throws EXCEPTION;

	@Override
	public void validate(List<INPUT> inputList) throws EXCEPTION {
        if (inputList != null)
        {
            for (INPUT input : inputList)
            {
            	validate(input);
            }
        }
	}
}
