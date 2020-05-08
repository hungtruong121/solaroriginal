package egovframework.com.cmm.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

public class FileUtil {

	public static void downloadFile(HttpServletResponse response, String filePath, String fileName) throws IOException {
		OutputStream out = response.getOutputStream();
		response.setContentType("application/pdf");
		response.addHeader("Content-Disposition", "attachment; filename=" + fileName);
		FileInputStream in = new FileInputStream(filePath);
		byte[] buffer = new byte[4096];
		int length;
		while ((length = in.read(buffer)) > 0) {
			out.write(buffer, 0, length);
		}
		in.close();
		out.flush();
	}
}
