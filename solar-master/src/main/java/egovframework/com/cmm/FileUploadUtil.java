package egovframework.com.cmm;

import java.util.UUID;

import org.apache.commons.io.FilenameUtils;

public class FileUploadUtil {
	public static final String replaceFileUploadName(String filename) {
		String ramdomName= UUID.randomUUID().toString();
		return ramdomName+"."+FilenameUtils.getExtension(filename);
	}
	
	public static boolean checkFileNameExtension(String filename) {
		return ("png".equals(FilenameUtils.getExtension(filename)) || 
				"gif".equals(FilenameUtils.getExtension(filename)) || 
				"jpg".equals(FilenameUtils.getExtension(filename)));
	}

}
