package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class MessageTableDTO {

	private int messageCode;
	private String messageContent;
	private Date messageDate;
	private int userCode1;
	private int userCode;
	
	public MessageTableDTO() {}

	public MessageTableDTO(int messageCode, String messageContent, Date messageDate, int userCode1, int userCode) {
		super();
		this.messageCode = messageCode;
		this.messageContent = messageContent;
		this.messageDate = messageDate;
		this.userCode1 = userCode1;
		this.userCode = userCode;
	}

	public int getMessageCode() {
		return messageCode;
	}

	public void setMessageCode(int messageCode) {
		this.messageCode = messageCode;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	public Date getMessageDate() {
		return messageDate;
	}

	public void setMessageDate(Date messageDate) {
		this.messageDate = messageDate;
	}

	public int getUserCode1() {
		return userCode1;
	}

	public void setUserCode1(int userCode1) {
		this.userCode1 = userCode1;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	@Override
	public String toString() {
		return "MessageTableDTO [messageCode=" + messageCode + ", messageContent=" + messageContent + ", messageDate="
				+ messageDate + ", userCode1=" + userCode1 + ", userCode=" + userCode + "]";
	}
	
}
