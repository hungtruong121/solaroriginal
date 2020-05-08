 package egovframework.let.citizen.service;

import java.io.Serializable;
import java.util.Date;

public class CompanyVO implements Serializable {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	
	/** Company ID */
	private int id;
	
	/** Company Name */
	private String name;
	
	/** Picture description */
	private String logo;
	
	/** Phone number */
	private String contact;
	
	/** Address */
	private String address;
	
	/** Information company */
	private String information;
	
	/** Product Information */
	private String productInfo;
	
	private String buildOrderId;
	
	private Date installCompleteDate;

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

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public String getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}

	public CompanyVO() {
		super();
	}

	public CompanyVO(int id, String name, String logo, String contact, String address, String information,
			String productInfo) {
		super();
		this.id = id;
		this.name = name;
		this.logo = logo;
		this.contact = contact;
		this.address = address;
		this.information = information;
		this.productInfo = productInfo;
	}

	public String getBuildOrderId() {
		return buildOrderId;
	}

	public void setBuildOrderId(String buildOrderId) {
		this.buildOrderId = buildOrderId;
	}

	public Date getInstallCompleteDate() {
		return installCompleteDate;
	}

	public void setInstallCompleteDate(Date installCompleteDate) {
		this.installCompleteDate = installCompleteDate;
	}
}
