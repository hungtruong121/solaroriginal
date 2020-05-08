package egovframework.let.citizen.service;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import egovframework.let.citizen.enums.HostInstallAgree;
import egovframework.let.citizen.enums.ReqTarget;
import egovframework.let.utl.fcc.service.CitizenEnumUtil;

/**
 * BuildOrderVO
 * 
 * @author Phu Tran
 * @since 2019.17.05
 *
 *        <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2019.17.05  Phu Tran         최초 생성
 *
 *        </pre>
 */
public class BuildOrderVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1L;

	/** 번호 */
	private int id;
	
	/** 설치 회사 인덱스(build_company.id) */
	private int buildCompanyId;
	
	/** 진행 상태 (접수|보류|취소|완료) */
	private int stateType;
	
	/** 아파트 타입(1=일반아파트+SH 분양,2=sh 임대 지원,3=다세대(빌라),4=다가구,5=단독주택) */
	private int aptType;
	
	/** 작성자 ID*/
	private int writeUserId;
	
	/** 성명 */
	private String name;

	/** 사용자 이메일 */
	private String userEmail;

	/** 사용자 생년월일 */
	private String userBirth;

	/** 접수일자 */
	// @DateTimeFormat(pattern = "dd/MM/yyyy")
	private String regDate;

	/** 지원자 형태 host : 소유자 tenant : 세입자 */
	private String reqType;

	/** 건물 소유자 */
	private String host;

	/** 건물 소유자 - 신청자와의 관계 */
	private String hostRelation;
	
	/** 설치요청일자 */
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date installDate;
	
	/** 설치예정일 */
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date installDueDate;
	
	/** 기타 */
	private String etc;
	
	/** 사용자 주소(시/도) */
	private String addr1;
	
	/** 사용자 주소(군/구) */
	private String addr2;
	
	/** 사용자 주소(동) */
	private String addr3;
	
	/** 사용자 주소(기타) */
	private String addr4;
	
	/** 사용자 주소(상세) */
	private String addr5;
	
	/** 사용자 전체주소 */
	private String addrFull;
	
	/** 우편 번호 */
	private String postCode;
	
	/** 주문 등록 회원 정보 - user : 관리자\ncitizen_user : 시민회원*/
	private String writeUserType;

	/** 건물명 */
	private String buildingName;
	
	/** 입금확인 */
	private String paymentCheck;
	
	/** 엔지니어 전화 번호*/
	private String engineerPhone;
	
	/** 사용자 휴대전화 */
	private String userPhone;
	
	/** 엔지니어의 이름 */
	private String engineerName;
	
	/** 사용자 도로명 주소 */
	private String newAddr;
	
	/** 보급업체명	*/
	private String productsProvided;
	
	/** 고객부담금  */
	private Integer payment;
	
	/** 시보조금 */
	private Integer priceSi;
	
	/** 자치구보조 */
	private Integer priceBorough;
	
	private Integer paymentReal;
	/** PDF명 */
	private String fileName;
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Date getInstallDueDate() {
		return installDueDate;
	}

	public void setInstallDueDate(Date installDueDate) {
		this.installDueDate = installDueDate;
	}

	public Integer getPayment() {
		return payment;
	}

	public void setPayment(Integer payment) {
		this.payment = payment;
	}

	public Integer getPaymentReal() {
		return paymentReal;
	}

	public void setPaymentReal(Integer paymentReal) {
		this.paymentReal = paymentReal;
	}

	/** 건물 소유자 설치 동의 */
	private HostInstallAgree hostInstallAgree;
	
	/**
	 * 지원 대상(삭제될 필드) normal : 일반 basicNormal : 기초(생계급여(일반)) basicOne : 기초(의료급여(1종))
	 */
	public String installationLocation() {
		String rs =  String.join(" ", checkNullOrEmpty(this.newAddr), checkNullOrEmpty(this.buildingName), checkNullOrEmpty(this.addr4), checkNullOrEmpty(this.addr5));
		rs = rs.replace("  ", " ");
		return rs.trim();
	}
	
	private ReqTarget reqTarget;
	
	public String getEngineerName() {
		return engineerName;
	}

	public void setEngineerName(String engineerName) {
		this.engineerName = engineerName;
	}

	public String getEngineerPhone() {
		return engineerPhone;
	}

	public void setEngineerPhone(String engineerPhone) {
		this.engineerPhone = engineerPhone;
	}


	public Integer getPriceBorough() {
		return priceBorough;
	}

	public void setPriceBorough(Integer priceBorough) {
		this.priceBorough = priceBorough;
	}
	
	public String getPaymentCheck() {
		return paymentCheck;
	}

	public void setPaymentCheck(String paymentCheck) {
		this.paymentCheck = paymentCheck;
	}


	public Integer getPriceSi() {
		return priceSi;
	}

	public void setPriceSi(Integer priceSi) {
		this.priceSi = priceSi;
	}

	public int getStateType() {
		return stateType;
	}

	public void setStateType(int stateType) {
		this.stateType = stateType;
	}

	public String getInstallStatus() {
		return installStatus;
	}

	public void setInstallStatus(String installStatus) {
		this.installStatus = installStatus;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	/* 설치완료 / N : 미완료, Y : 설치완료, C : */
	private String installStatus;

	private String companyName;

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

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public ReqTarget getReqTarget() {
		return reqTarget;
	}

	public void setReqTarget(ReqTarget reqTarget) {
		this.reqTarget = reqTarget;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getReqType() {
		return reqType;
	}

	public void setReqType(String reqType) {
		this.reqType = reqType;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getHostRelation() {
		return hostRelation;
	}

	public void setHostRelation(String hostRelation) {
		this.hostRelation = hostRelation;
	}

	public HostInstallAgree getHostInstallAgree() {
		return hostInstallAgree;
	}

	public void setHostInstallAgree(HostInstallAgree hostInstallAgree) {
		this.hostInstallAgree = hostInstallAgree;
	}

	public int getBuildCompanyId() {
		return buildCompanyId;
	}

	public void setBuildCompanyId(int buildCompanyId) {
		this.buildCompanyId = buildCompanyId;
	}

	public Date getInstallDate() {
		return installDate;
	}

	public void setInstallDate(Date installDate) {
		this.installDate = installDate;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public int getAptType() {
		return aptType;
	}

	public void setAptType(int aptType) {
		this.aptType = aptType;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	public String getAddr5() {
		return addr5;
	}

	public void setAddr5(String addr5) {
		this.addr5 = addr5;
	}

	public String getAddrFull() {
		return addrFull;
	}

	public void setAddrFull(String addrFull) {
		this.addrFull = addrFull;
	}

	public String getBuildingName() {
		return buildingName;
	}

	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	public String getWriteUserType() {
		return writeUserType;
	}

	public void setWriteUserType(String writeUserType) {
		this.writeUserType = writeUserType;
	}

	// The database has changed the data type on ec2
	public String getStatus() {
		return CitizenEnumUtil.statustype().get(this.stateType);
	}
	
	/*
	 * 1=일반아파트+SH 분양, 2=sh 임대 지원, 3=다세대(빌라), 4=다가구,5=단독주택)
	 * return String
	 */
	public String getApt() {
		return CitizenEnumUtil.aptType().get(this.aptType).toString();
	}

	public int getWriteUserId() {
		return writeUserId;
	}

	public void setWriteUserId(int writeUserId) {
		this.writeUserId = writeUserId;
	}

	public String getAddr4() {
		return addr4;
	}

	public void setAddr4(String addr4) {
		this.addr4 = addr4;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getNewAddr() {
		return newAddr;
	}

	public void setNewAddr(String newAddr) {
		this.newAddr = newAddr;
	}
	
	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	
	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	
	public String getProductsProvided() {
		return productsProvided;
	}
	
	public void setProductsProvided(String productsProvided) {
		this.productsProvided = productsProvided;
	}

	public String checkNullOrEmpty(String text) {
		if (text == null || "".equals(text)) {
			return "";
		}
		return text;
	}
}
