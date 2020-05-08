package egovframework.let.citizen.models;


public class Fund {
	private String area;
	private String basicAutonomy;
	private String budgetAmount;
	private String amountPerHousehold;
	private String supportedHouseholds;
	private int rowspan;
	public Fund(String area, String basicAutonomy, String budgetAmount, String amountPerHousehold,
			String supportedHouseholds) {
		super();
		this.area = area;
		this.basicAutonomy = basicAutonomy;
		this.budgetAmount = budgetAmount;
		this.amountPerHousehold = amountPerHousehold;
		this.supportedHouseholds = supportedHouseholds;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getBasicAutonomy() {
		return basicAutonomy;
	}
	public void setBasicAutonomy(String basicAutonomy) {
		this.basicAutonomy = basicAutonomy;
	}
	public String getBudgetAmount() {
		return budgetAmount;
	}
	public void setBudgetAmount(String budgetAmount) {
		this.budgetAmount = budgetAmount;
	}
	public String getAmountPerHousehold() {
		return amountPerHousehold;
	}
	public void setAmountPerHousehold(String amountPerHousehold) {
		this.amountPerHousehold = amountPerHousehold;
	}
	public String getSupportedHouseholds() {
		return supportedHouseholds;
	}
	public void setSupportedHouseholds(String supportedHouseholds) {
		this.supportedHouseholds = supportedHouseholds;
	}
	public int getRowspan() {
		return rowspan;
	}
	public void setRowspan(int rowspan) {
		this.rowspan = rowspan;
	}
}
