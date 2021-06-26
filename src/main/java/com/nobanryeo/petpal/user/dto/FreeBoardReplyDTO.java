package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class FreeBoardReplyDTO {

	private int replyCode;
	private String replyContent;
	private Date replyDate;
	private String replyDeleteYN;
	private String reportYN;
	private int boardCode;
	private String userNickName;
	private int userCode;
	
	public FreeBoardReplyDTO() {}

	public FreeBoardReplyDTO(int replyCode, String replyContent, Date replyDate, String replyDeleteYN, String reportYN,
			int boardCode, String userNickName, int userCode) {
		super();
		this.replyCode = replyCode;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.replyDeleteYN = replyDeleteYN;
		this.reportYN = reportYN;
		this.boardCode = boardCode;
		this.userNickName = userNickName;
		this.userCode = userCode;
	}

	public int getReplyCode() {
		return replyCode;
	}

	public void setReplyCode(int replyCode) {
		this.replyCode = replyCode;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

	public String getReplyDeleteYN() {
		return replyDeleteYN;
	}

	public void setReplyDeleteYN(String replyDeleteYN) {
		this.replyDeleteYN = replyDeleteYN;
	}

	public String getReportYN() {
		return reportYN;
	}

	public void setReportYN(String reportYN) {
		this.reportYN = reportYN;
	}

	public int getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	@Override
	public String toString() {
		return "FreeBoardReplyDTO [replyCode=" + replyCode + ", replyContent=" + replyContent + ", replyDate="
				+ replyDate + ", replyDeleteYN=" + replyDeleteYN + ", reportYN=" + reportYN + ", boardCode=" + boardCode
				+ ", userNickName=" + userNickName + ", userCode=" + userCode + "]";
	}
	
}
