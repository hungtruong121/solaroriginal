package egovframework.let.citizen.service;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import egovframework.let.citizen.enums.HostInstallAgree;
import egovframework.let.citizen.enums.ReqTarget;
import egovframework.let.citizen.enums.ReqType;

public class BuildOrderRegVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = -1L;

	/** 번호 */
	private int id;

	/** 성명 */
	private String name;

	/** 사용자 이메일 */
	private String userEmail;

	/** 사용자 생년월일 */
	private String userBirth;

	/**
	 * 지원 대상(삭제될 필드) normal : 일반 basicNormal : 기초(생계급여(일반)) basicOne : 기초(의료급여(1종))
	 */
	private ReqTarget reqTarget;

	/** 접수일자 */
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Timestamp regDate;

	/** 지원자 형태 host : 소유자 tenant : 세입자 */
	private ReqType reqType;

	/** 건물 소유자 */
	private String host;

	/** 건물 소유자 - 신청자와의 관계 */
	private String hostRelation;

	/** 건물 소유자 설치 동의 */
	private HostInstallAgree hostInstallAgree;

	/** 설치 회사 인덱스(build_company.id) */
	private int buildCompanyId;

	/** 설치요청일자 */
	private Date installDate;

	/** 기타 */
	private String etc;

	/** 아파트 타입(1=일반아파트+SH 분양,2=sh 임대 지원,3=다세대(빌라),4=다가구,5=단독주택) */
	private int aptType;

	/** 사용자 주소(동) */
	private String addr3;

	/** 사용자 주소(상세) */
	private String addr5;

	/** 사용자 전체주소 */
	private String addrFull;

	/** 건물명 */
	private String buildingName;

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

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public ReqType getReqType() {
		return reqType;
	}

	public void setReqType(ReqType reqType) {
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

	public String getBuildingName() {
		return buildingName;
	}

	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}

	public ReqTarget getReqTarget() {
		return reqTarget;
	}

	public void setReqTarget(ReqTarget reqTarget) {
		this.reqTarget = reqTarget;
	}

	public String getAddrFull() {
		return addrFull;
	}

	public void setAddrFull(String addrFull) {
		this.addrFull = addrFull;
	}

	@Override
	public String toString() {
		return "BuildOrderVO [id=" + id + ", name=" + name + ", userEmail=" + userEmail + ", userBirth=" + userBirth
				+ ", reqTarget=" + reqTarget + ", regDate=" + regDate + ", reqType=" + reqType + ", host=" + host
				+ ", hostRelation=" + hostRelation + ", hostInstallAgree=" + hostInstallAgree + ", buildCompanyId="
				+ buildCompanyId + ", installDate=" + installDate + ", etc=" + etc + ", aptType=" + aptType + ", addr3="
				+ addr3 + ", addr5=" + addr5 + ", addrFull=" + addrFull + ", buildingName=" + buildingName + "]";
	}

}
