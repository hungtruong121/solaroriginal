package egovframework.let.validator;

import java.util.List;

/**
 * @author pho.vo
 */
public interface IValidator<INPUT, EXCEPTION extends Exception>
{
    void validate(INPUT input) throws EXCEPTION;

    void validate(List<INPUT> inputList) throws EXCEPTION;
}
