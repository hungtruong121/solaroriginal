package egovframework.let.utl.fcc.service;

import java.util.HashMap;
import java.util.Map;

public class CitizenEnumUtil {
	public static HashMap<Integer, String> statustype(){
		Map<Integer, String> map=new HashMap<Integer, String>();
		map.put(0, "신청 및 확인");
		map.put(1, "신청 및 확인");
		map.put(2, "설치예정");
		map.put(3, "설치 완료");
		map.put(4, "설치 완료");
		return (HashMap<Integer, String>) map;
	}
	
	public static HashMap<Integer, String> aptType(){
		Map<Integer, String> map=new HashMap<Integer, String>();	
		map.put(1, "일반아파트+SH 분양");
		map.put(2, "sh 임대 지원");
		map.put(3, "다세대(빌라)");
		map.put(4, "다가구");
		map.put(5, "단독주택");
		return (HashMap<Integer, String>) map;
	}

}
