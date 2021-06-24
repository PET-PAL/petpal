package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class AdDTO {
	
	private int adCode;
	private String companyName;
	private Date applyDate;
	private String companyNumber;
	private String companyPhone;
	private String companyEmail;
	private String adContent;
	private String postYn;
	private String refundYn;
	private Date payDate2nd;
	private int pictureCode;
	private Date payDate1st;
	private int userCode;
	private int adTypeCode;
	private String adTitle;
	private String payMethod;
	private int decisionCode;
	private Date cancelApplyDate;
	private Date postStartDate;
	private Date postEndDate;
	private int stateCode;
	private String refundAccount;
	private Date clickDate;
	private String adTypeName;
	private int adPrice;
	private int adWeek;
	
	public AdDTO() {}

	public AdDTO(int adCode, String companyName, Date applyDate, String companyNumber, String companyPhone,
			String companyEmail, String adContent, String postYn, String refundYn, Date payDate2nd, int pictureCode,
			Date payDate1st, int userCode, int adTypeCode, String adTitle, String payMethod, int decisionCode,
			Date cancelApplyDate, Date postStartDate, Date postEndDate, int stateCode, String refundAccount,
			Date clickDate, String adTypeName, int adPrice, int adWeek) {
		super();
		this.adCode = adCode;
		this.companyName = companyName;
		this.applyDate = applyDate;
		this.companyNumber = companyNumber;
		this.companyPhone = companyPhone;
		this.companyEmail = companyEmail;
		this.adContent = adContent;
		this.postYn = postYn;
		this.refundYn = refundYn;
		this.payDate2nd = payDate2nd;
		this.pictureCode = pictureCode;
		this.payDate1st = payDate1st;
		this.userCode = userCode;
		this.adTypeCode = adTypeCode;
		this.adTitle = adTitle;
		this.payMethod = payMethod;
		this.decisionCode = decisionCode;
		this.cancelApplyDate = cancelApplyDate;
		this.postStartDate = postStartDate;
		this.postEndDate = postEndDate;
		this.stateCode = stateCode;
		this.refundAccount = refundAccount;
		this.clickDate = clickDate;
		this.adTypeName = adTypeName;
		this.adPrice = adPrice;
		this.adWeek = adWeek;
	}

	public int getAdCode() {
		return adCode;
	}

	public void setAdCode(int adCode) {
		this.adCode = adCode;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public Date getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}

	public String getCompanyNumber() {
		return companyNumber;
	}

	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public String getCompanyEmail() {
		return companyEmail;
	}

	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}

	public String getAdContent() {
		return adContent;
	}

	public void setAdContent(String adContent) {
		this.adContent = adContent;
	}

	public String getPostYn() {
		return postYn;
	}

	public void setPostYn(String postYn) {
		this.postYn = postYn;
	}

	public String getRefundYn() {
		return refundYn;
	}

	public void setRefundYn(String refundYn) {
		this.refundYn = refundYn;
	}

	public Date getPayDate2nd() {
		return payDate2nd;
	}

	public void setPayDate2nd(Date payDate2nd) {
		this.payDate2nd = payDate2nd;
	}

	public int getPictureCode() {
		return pictureCode;
	}

	public void setPictureCode(int pictureCode) {
		this.pictureCode = pictureCode;
	}

	public Date getPayDate1st() {
		return payDate1st;
	}

	public void setPayDate1st(Date payDate1st) {
		this.payDate1st = payDate1st;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public int getAdTypeCode() {
		return adTypeCode;
	}

	public void setAdTypeCode(int adTypeCode) {
		this.adTypeCode = adTypeCode;
	}

	public String getAdTitle() {
		return adTitle;
	}

	public void setAdTitle(String adTitle) {
		this.adTitle = adTitle;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public int getDecisionCode() {
		return decisionCode;
	}

	public void setDecisionCode(int decisionCode) {
		this.decisionCode = decisionCode;
	}

	public Date getCancelApplyDate() {
		return cancelApplyDate;
	}

	public void setCancelApplyDate(Date cancelApplyDate) {
		this.cancelApplyDate = cancelApplyDate;
	}

	public Date getPostStartDate() {
		return postStartDate;
	}

	public void setPostStartDate(Date postStartDate) {
		this.postStartDate = postStartDate;
	}

	public Date getPostEndDate() {
		return postEndDate;
	}

	public void setPostEndDate(Date postEndDate) {
		this.postEndDate = postEndDate;
	}

	public int getStateCode() {
		return stateCode;
	}

	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}

	public String getRefundAccount() {
		return refundAccount;
	}

	public void setRefundAccount(String refundAccount) {
		this.refundAccount = refundAccount;
	}

	public Date getClickDate() {
		return clickDate;
	}

	public void setClickDate(Date clickDate) {
		this.clickDate = clickDate;
	}

	public String getAdTypeName() {
		return adTypeName;
	}

	public void setAdTypeName(String adTypeName) {
		this.adTypeName = adTypeName;
	}

	public int getAdPrice() {
		return adPrice;
	}

	public void setAdPrice(int adPrice) {
		this.adPrice = adPrice;
	}

	public int getAdWeek() {
		return adWeek;
	}

	public void setAdWeek(int adWeek) {
		this.adWeek = adWeek;
	}

	@Override
	public String toString() {
		return "AdDTO [adCode=" + adCode + ", companyName=" + companyName + ", applyDate=" + applyDate
				+ ", companyNumber=" + companyNumber + ", companyPhone=" + companyPhone + ", companyEmail="
				+ companyEmail + ", adContent=" + adContent + ", postYn=" + postYn + ", refundYn=" + refundYn
				+ ", payDate2nd=" + payDate2nd + ", pictureCode=" + pictureCode + ", payDate1st=" + payDate1st
				+ ", userCode=" + userCode + ", adTypeCode=" + adTypeCode + ", adTitle=" + adTitle + ", payMethod="
				+ payMethod + ", decisionCode=" + decisionCode + ", cancelApplyDate=" + cancelApplyDate
				+ ", postStartDate=" + postStartDate + ", postEndDate=" + postEndDate + ", stateCode=" + stateCode
				+ ", refundAccount=" + refundAccount + ", clickDate=" + clickDate + ", adTypeName=" + adTypeName
				+ ", adPrice=" + adPrice + ", adWeek=" + adWeek + "]";
	}
	
}
