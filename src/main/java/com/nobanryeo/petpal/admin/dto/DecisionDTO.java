package com.nobanryeo.petpal.admin.dto;

import java.sql.Date;

public class DecisionDTO {
	
	private int decisionCode;
	private String decisionReason;
	private Date decisionDate;
	private int stateCode;
	private int code; // 유저코드
	
	public DecisionDTO() {
		super();
	}

	public DecisionDTO(int decisionCode, String decisionReason, Date decisionDate, int stateCode, int code) {
		super();
		this.decisionCode = decisionCode;
		this.decisionReason = decisionReason;
		this.decisionDate = decisionDate;
		this.stateCode = stateCode;
		this.code = code;
	}

	public int getDecisionCode() {
		return decisionCode;
	}

	public void setDecisionCode(int decisionCode) {
		this.decisionCode = decisionCode;
	}

	public String getDecisionReason() {
		return decisionReason;
	}

	public void setDecisionReason(String decisionReason) {
		this.decisionReason = decisionReason;
	}

	public Date getDecisionDate() {
		return decisionDate;
	}

	public void setDecisionDate(Date decisionDate) {
		this.decisionDate = decisionDate;
	}

	public int getStateCode() {
		return stateCode;
	}

	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}


	@Override
	public String toString() {
		return "DecisionDTO [decisionCode=" + decisionCode + ", decisionReason=" + decisionReason + ", decisionDate="
				+ decisionDate + ", stateCode=" + stateCode + ", code=" + code + "]";
	}
	
	
	
}
