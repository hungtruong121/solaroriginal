package egovframework.let.citizen.enums;

public enum AptType {
	// 아파트 타입(1=일반아파트+SH 분양,2=sh 임대 지원,3=다세대(빌라),4=다가구,5=단독주택)// 주택유형을 선택해주세요.
	AptType1(1, "일반아파트 + SH 분양"),
	AptType2(2, "SH 임대 지원"),
	AptType3(3, "다세대(빌라)"), 
	AptType4(4, "다가구"),
	AptType5(5, "단독주택");
	
	private int id;
	private String name;

	private AptType(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public static void main(String[] args) {
		for (AptType s : AptType.values()) {
			System.out.println(s.id );
		}
	}
}
