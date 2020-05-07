package egovframework.let.validator;

import javax.servlet.http.HttpServletRequest;

import egovframework.let.utl.fcc.service.EgovStringUtil;

public class ContacValidatorMessage {
	
	public static boolean validMessage(HttpServletRequest request) {
		 String _fName=request.getParameter("name"); 
		 String _fTitle =request.getParameter("title");
		 String _fContent =request.getParameter("titleContent"); 
		 if (EgovStringUtil.isEmpty(_fName) || EgovStringUtil.isEmpty(_fTitle) || EgovStringUtil.isEmpty(_fContent)) {			
			  return false;
		}
		return true;
	}

}
