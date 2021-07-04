package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class MissingPictureDTO {
	
	private int boardCode;
	private Date missingDate;
	private String missingArea;
	private String missingPlace;
	private String missingPhone;
	private String missingBreed;
	private String missingGender;
	private int missingAge;
	private int mssingWeight;
	private String missingCharacter;
	private String missingRequest;
	private String missingDeleteYN;
	private int stateCode;
	private int userCode;
	private String dogOrcat;
	private String userNickname;
	private int pictureCode;
	private String pictureURL;
	private String pictureDeleteYN;
	private String pictureName;
	private String pictureNewName;
	private String pictureUtilPath;
	
	public MissingPictureDTO() {}

	public MissingPictureDTO(int boardCode, Date missingDate, String missingArea, String missingPlace,
			String missingPhone, String missingBreed, String missingGender, int missingAge, int mssingWeight,
			String missingCharacter, String missingRequest, String missingDeleteYN, int stateCode, int userCode,
			String dogOrcat, String userNickname, int pictureCode, String pictureURL, String pictureDeleteYN,
			String pictureName, String pictureNewName, String pictureUtilPath) {
		super();
		this.boardCode = boardCode;
		this.missingDate = missingDate;
		this.missingArea = missingArea;
		this.missingPlace = missingPlace;
		this.missingPhone = missingPhone;
		this.missingBreed = missingBreed;
		this.missingGender = missingGender;
		this.missingAge = missingAge;
		this.mssingWeight = mssingWeight;
		this.missingCharacter = missingCharacter;
		this.missingRequest = missingRequest;
		this.missingDeleteYN = missingDeleteYN;
		this.stateCode = stateCode;
		this.userCode = userCode;
		this.dogOrcat = dogOrcat;
		this.userNickname = userNickname;
		this.pictureCode = pictureCode;
		this.pictureURL = pictureURL;
		this.pictureDeleteYN = pictureDeleteYN;
		this.pictureName = pictureName;
		this.pictureNewName = pictureNewName;
		this.pictureUtilPath = pictureUtilPath;
	}

	public int getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}

	public Date getMissingDate() {
		return missingDate;
	}

	public void setMissingDate(Date missingDate) {
		this.missingDate = missingDate;
	}

	public String getMissingArea() {
		return missingArea;
	}

	public void setMissingArea(String missingArea) {
		this.missingArea = missingArea;
	}

	public String getMissingPlace() {
		return missingPlace;
	}

	public void setMissingPlace(String missingPlace) {
		this.missingPlace = missingPlace;
	}

	public String getMissingPhone() {
		return missingPhone;
	}

	public void setMissingPhone(String missingPhone) {
		this.missingPhone = missingPhone;
	}

	public String getMissingBreed() {
		return missingBreed;
	}

	public void setMissingBreed(String missingBreed) {
		this.missingBreed = missingBreed;
	}

	public String getMissingGender() {
		return missingGender;
	}

	public void setMissingGender(String missingGender) {
		this.missingGender = missingGender;
	}

	public int getMissingAge() {
		return missingAge;
	}

	public void setMissingAge(int missingAge) {
		this.missingAge = missingAge;
	}

	public int getMssingWeight() {
		return mssingWeight;
	}

	public void setMssingWeight(int mssingWeight) {
		this.mssingWeight = mssingWeight;
	}

	public String getMissingCharacter() {
		return missingCharacter;
	}

	public void setMissingCharacter(String missingCharacter) {
		this.missingCharacter = missingCharacter;
	}

	public String getMissingRequest() {
		return missingRequest;
	}

	public void setMissingRequest(String missingRequest) {
		this.missingRequest = missingRequest;
	}

	public String getMissingDeleteYN() {
		return missingDeleteYN;
	}

	public void setMissingDeleteYN(String missingDeleteYN) {
		this.missingDeleteYN = missingDeleteYN;
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

	public String getDogOrcat() {
		return dogOrcat;
	}

	public void setDogOrcat(String dogOrcat) {
		this.dogOrcat = dogOrcat;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public int getPictureCode() {
		return pictureCode;
	}

	public void setPictureCode(int pictureCode) {
		this.pictureCode = pictureCode;
	}

	public String getPictureURL() {
		return pictureURL;
	}

	public void setPictureURL(String pictureURL) {
		this.pictureURL = pictureURL;
	}

	public String getPictureDeleteYN() {
		return pictureDeleteYN;
	}

	public void setPictureDeleteYN(String pictureDeleteYN) {
		this.pictureDeleteYN = pictureDeleteYN;
	}

	public String getPictureName() {
		return pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}

	public String getPictureNewName() {
		return pictureNewName;
	}

	public void setPictureNewName(String pictureNewName) {
		this.pictureNewName = pictureNewName;
	}

	public String getPictureUtilPath() {
		return pictureUtilPath;
	}

	public void setPictureUtilPath(String pictureUtilPath) {
		this.pictureUtilPath = pictureUtilPath;
	}

	@Override
	public String toString() {
		return "MissingPictureDTO [boardCode=" + boardCode + ", missingDate=" + missingDate + ", missingArea="
				+ missingArea + ", missingPlace=" + missingPlace + ", missingPhone=" + missingPhone + ", missingBreed="
				+ missingBreed + ", missingGender=" + missingGender + ", missingAge=" + missingAge + ", mssingWeight="
				+ mssingWeight + ", missingCharacter=" + missingCharacter + ", missingRequest=" + missingRequest
				+ ", missingDeleteYN=" + missingDeleteYN + ", stateCode=" + stateCode + ", userCode=" + userCode
				+ ", dogOrcat=" + dogOrcat + ", userNickname=" + userNickname + ", pictureCode=" + pictureCode
				+ ", pictureURL=" + pictureURL + ", pictureDeleteYN=" + pictureDeleteYN + ", pictureName=" + pictureName
				+ ", pictureNewName=" + pictureNewName + ", pictureUtilPath=" + pictureUtilPath + "]";
	}
	
	
	

}
