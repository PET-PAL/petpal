package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class AdoptDTO {
 
	private int boardCode;
	private String adoptBreed;
	private String adoptGender;
	private int adoptAge;
	private int adoptWeight;
	private String adoptColor;
	private String adoptIntroduce;
	private String adoptPhone;
	private String adoptCaution;
	private String deleteYN;
	private int stateCode;
	private Date boardDate;
	private int userCode;
	private String dogOrcat;
	
	
	public AdoptDTO() {}


	public AdoptDTO(int boardCode, String adoptBreed, String adoptGender, int adoptAge, int adoptWeight,
			String adoptColor, String adoptIntroduce, String adoptPhone, String adoptCaution, String deleteYN,
			int stateCode, Date boardDate, int userCode, String dogOrcat) {
		super();
		this.boardCode = boardCode;
		this.adoptBreed = adoptBreed;
		this.adoptGender = adoptGender;
		this.adoptAge = adoptAge;
		this.adoptWeight = adoptWeight;
		this.adoptColor = adoptColor;
		this.adoptIntroduce = adoptIntroduce;
		this.adoptPhone = adoptPhone;
		this.adoptCaution = adoptCaution;
		this.deleteYN = deleteYN;
		this.stateCode = stateCode;
		this.boardDate = boardDate;
		this.userCode = userCode;
		this.dogOrcat = dogOrcat;
	}


	public int getBoardCode() {
		return boardCode;
	}


	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}


	public String getAdoptBreed() {
		return adoptBreed;
	}


	public void setAdoptBreed(String adoptBreed) {
		this.adoptBreed = adoptBreed;
	}


	public String getAdoptGender() {
		return adoptGender;
	}


	public void setAdoptGender(String adoptGender) {
		this.adoptGender = adoptGender;
	}


	public int getAdoptAge() {
		return adoptAge;
	}


	public void setAdoptAge(int adoptAge) {
		this.adoptAge = adoptAge;
	}


	public int getAdoptWeight() {
		return adoptWeight;
	}


	public void setAdoptWeight(int adoptWeight) {
		this.adoptWeight = adoptWeight;
	}


	public String getAdoptColor() {
		return adoptColor;
	}


	public void setAdoptColor(String adoptColor) {
		this.adoptColor = adoptColor;
	}


	public String getAdoptIntroduce() {
		return adoptIntroduce;
	}


	public void setAdoptIntroduce(String adoptIntroduce) {
		this.adoptIntroduce = adoptIntroduce;
	}


	public String getAdoptPhone() {
		return adoptPhone;
	}


	public void setAdoptPhone(String adoptPhone) {
		this.adoptPhone = adoptPhone;
	}


	public String getAdoptCaution() {
		return adoptCaution;
	}


	public void setAdoptCaution(String adoptCaution) {
		this.adoptCaution = adoptCaution;
	}


	public String getDeleteYN() {
		return deleteYN;
	}


	public void setDeleteYN(String deleteYN) {
		this.deleteYN = deleteYN;
	}


	public int getStateCode() {
		return stateCode;
	}


	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}


	public Date getBoardDate() {
		return boardDate;
	}


	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}


	public int getUserCode() {
		return userCode;
	}


	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}


	public String getDogOrcat() {
		return dogOrcat;
	}


	public void setDogOrcat(String dogOrcat) {
		this.dogOrcat = dogOrcat;
	}


	@Override
	public String toString() {
		return "AdoptDTO [boardCode=" + boardCode + ", adoptBreed=" + adoptBreed + ", adoptGender=" + adoptGender
				+ ", adoptAge=" + adoptAge + ", adoptWeight=" + adoptWeight + ", adoptColor=" + adoptColor
				+ ", adoptIntroduce=" + adoptIntroduce + ", adoptPhone=" + adoptPhone + ", adoptCaution=" + adoptCaution
				+ ", deleteYN=" + deleteYN + ", stateCode=" + stateCode + ", boardDate=" + boardDate + ", userCode="
				+ userCode + ", dogOrcat=" + dogOrcat + "]";
	}
	
	


}
