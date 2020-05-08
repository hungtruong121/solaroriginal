/**
 * @Class Name  : CitizenPhoneUtil.java
 * @Description : 
 * @author ThanhHP
 * @since 2019. 05. 17
 * @version 1.0
 * @see
 *
 */

package egovframework.let.utl.fcc.service;

public class CitizenPhoneUtil {

	public static final String STR_ZERO = "0";
	public static final String STR_PLUS = "+";
	public static String convertToPhoneArea(String phone, String contryCode){
		if(phone == null) {
			return "";
		}
		phone = phone.replace("-", "");
		if(phone.startsWith(STR_PLUS)){
			phone = phone.substring(3);
		}
		if(phone.startsWith(STR_ZERO)){
			phone = phone.substring(1);
		}
		phone = contryCode.concat(phone);
		return phone;
	}
	public static String convertToPhone(String phone){
		if(phone == null) {
			return "";
		}
		phone = phone.replace("-", "");
		if(phone.startsWith(STR_PLUS)){
			phone = phone.substring(3);
		}
		if(phone.startsWith(STR_ZERO)){
			phone = phone.substring(1);
		}
		phone = STR_ZERO.concat(phone);
		return phone;
	}
	public static String removeHash(String phone){
		if(phone == null) {
			return "";
		}
		phone = phone.replace("-", "");
		return phone;
	}
	public static String convertToPhoneDash(String phone){
		if(phone == null) {
			return "";
		}
		phone = phone.trim().replace("-", "");
		phone = phone.replaceFirst("(\\d{3})(\\d{4})(\\d{4})", "$1-$2-$3");
		return phone;
	}
	public static String removePhoneArea(String phone) {
		if(phone == null) {
			return "";
		}
		if(phone.startsWith(STR_PLUS)){
			phone = phone.substring(3);
		}
		if(phone.startsWith(STR_ZERO)){
			phone = phone.substring(1);
		}
		phone = STR_ZERO.concat(phone);
		return phone;
	}
}
