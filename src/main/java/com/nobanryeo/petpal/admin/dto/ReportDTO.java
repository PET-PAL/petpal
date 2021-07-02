package com.nobanryeo.petpal.admin.dto;

import java.util.Date;

public class ReportDTO {
	private int boardCode;
	private String userId;
	private String boardTitle;
	private java.util.Date postDate;
	private java.util.Date reportDate;
	private String state;
	
	public ReportDTO() {
		
	}

	public int getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public java.util.Date getPostDate() {
		return postDate;
	}

	public void setPostDate(java.util.Date postDate) {
		this.postDate = postDate;
	}

	public java.util.Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(java.util.Date reportDate) {
		this.reportDate = reportDate;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public ReportDTO(int boardCode, String userId, String boardTitle, Date postDate, Date reportDate, String state) {
		super();
		this.boardCode = boardCode;
		this.userId = userId;
		this.boardTitle = boardTitle;
		this.postDate = postDate;
		this.reportDate = reportDate;
		this.state = state;
	}

	@Override
	public String toString() {
		return "ReportDTO [boardCode=" + boardCode + ", userId=" + userId + ", boardTitle=" + boardTitle + ", postDate="
				+ postDate + ", reportDate=" + reportDate + ", state=" + state + "]";
	}
	
	
	
	
	
	
	
}
