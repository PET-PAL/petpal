package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class ReportManageDTO {
	
	private int reportCode; //신고관리코드
	private String title; //신고타이틀
	private String content; //신고내용
	private Date date;		//신고날짜
	private int decisionCode; //심사코드
	private int userCode; //신고자코드
	
	public ReportManageDTO() {
		
	}
	
	public ReportManageDTO(int reportCode, String title, String content, Date date, int decisionCode, int userCode) {
		super();
		this.reportCode = reportCode;
		this.title = title;
		this.content = content;
		this.date = date;
		this.decisionCode = decisionCode;
		this.userCode = userCode;
	}
	public int getReportCode() {
		return reportCode;
	}
	public void setReportCode(int reportCode) {
		this.reportCode = reportCode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getDecisionCode() {
		return decisionCode;
	}
	public void setDecisionCode(int decisionCode) {
		this.decisionCode = decisionCode;
	}
	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	@Override
	public String toString() {
		return "ReportManageDTO [reportCode=" + reportCode + ", title=" + title + ", content=" + content + ", date="
				+ date + ", decisionCode=" + decisionCode + ", userCode=" + userCode + "]";
	}
	
	
	
}
