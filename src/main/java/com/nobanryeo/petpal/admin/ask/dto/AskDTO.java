package com.nobanryeo.petpal.admin.ask.dto;

import java.util.Date;

public class AskDTO {
	private int boardCode;
	private String boardTitle;
	private String boardContent;
	private String questionType;
	private java.util.Date postDate;
	private String reply;
	private int stateCode;
	private int userCode;
	
	
	public AskDTO() {
		
	}


	public int getBoardCode() {
		return boardCode;
	}


	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public String getQuestionType() {
		return questionType;
	}


	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}


	public java.util.Date getPostDate() {
		return postDate;
	}


	public void setPostDate(java.util.Date postDate) {
		this.postDate = postDate;
	}


	public String getReply() {
		return reply;
	}


	public void setReply(String reply) {
		this.reply = reply;
	}


	public int getStateCode() {
		return stateCode;
	}


	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}


	public int getUserCode() {
		return userCode;
	}


	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}


	public AskDTO(int boardCode, String boardTitle, String boardContent, String questionType, Date postDate,
			String reply, int stateCode, int userCode) {
		super();
		this.boardCode = boardCode;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.questionType = questionType;
		this.postDate = postDate;
		this.reply = reply;
		this.stateCode = stateCode;
		this.userCode = userCode;
	}


	@Override
	public String toString() {
		return "AskDTO [boardCode=" + boardCode + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", questionType=" + questionType + ", postDate=" + postDate + ", reply=" + reply + ", stateCode="
				+ stateCode + ", userCode=" + userCode + "]";
	}
	
	
	
	
	
	
	
	
}
