package egovframework.let.citizen.service;

import java.io.Serializable;

public class JoinMemberRuleVO implements Serializable {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	/** Rule 1 Join Member */
	private String rule1;

	/** Rule 2 Join Member */
	private String rule2;

	public String getRule1() {
		return rule1;
	}

	public void setRule1(String rule1) {
		this.rule1 = rule1;
	}

	public String getRule2() {
		return rule2;
	}

	public void setRule2(String rule2) {
		this.rule2 = rule2;
	}

	public JoinMemberRuleVO() {
		super();
	}

	public JoinMemberRuleVO(String rule1, String rule2) {
		super();
		this.rule1 = rule1;
		this.rule2 = rule2;
	}
}
