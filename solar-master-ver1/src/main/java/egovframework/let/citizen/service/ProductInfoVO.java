package egovframework.let.citizen.service;

import java.text.DecimalFormat;

public class ProductInfoVO {
	private String supplier;
	private String kinds;
	private String productName;
	private String capacity;
	private String specification;
	private String price;
	private String charge;
	private String efficiency;
	private String weight;
	private String period;
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getKinds() {
		return kinds;
	}
	public void setKinds(String kinds) {
		this.kinds = kinds;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public String getPrice() {
		return convertNumber(price);
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCharge() {
		return convertNumber(charge);
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	public String getEfficiency() {
		return efficiency;
	}
	public void setEfficiency(String efficiency) {
		this.efficiency = efficiency;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	private String convertNumber(String input) {
		String pattern = "#,###";
		DecimalFormat decimalFormat = new DecimalFormat(pattern);
		return decimalFormat.format(Double.parseDouble(input));
	}
}
