package egovframework.com.cmm;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	/*
	 * Checking the selected date must not take the past date Format according to
	 * format: dd/MM/yyyy
	 */
	public static boolean isValidDate(String pDateString) throws ParseException {
		try {
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(pDateString);
			boolean currentDay = ((date.getDate() == new Date().getDate()) 
					&& (new Date().getYear() == date.getYear())
					&& (new Date().getMonth() == date.getMonth()));
			return new Date().before(date) || currentDay;
		} catch (Exception e) {
			return false;
		}
	}
	
	public static String convertFormatDateYYYYMMDD(String strDate) {
		String[] arDate = strDate.split("\\.");
		return arDate[2] +"-"+arDate[1]+"-"+arDate[0];
	}
}
