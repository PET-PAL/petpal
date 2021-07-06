package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class FriendlyPlaceDTO {

	private int boardCode;
	private String boardTitle;
	private String boardContent;
	private int boardViews;
	private Date boardPostDate;
	private String boardDeleteYn;
	private int decisionCode;
	private int userCode;
	private String placeName;
	private String placePhone;
	private String placeAddress;
	private String userNickName;
	private int pictureCode;
	private String pictureURL;
	private String pictureDeleteYN;
	private String pictureName;
	private String pictureNewName;
	private String pictureUtilPath;
	
	public FriendlyPlaceDTO() {}

	public FriendlyPlaceDTO(int boardCode, String boardTitle, String boardContent, int boardViews, Date boardPostDate,
			String boardDeleteYn, int decisionCode, int userCode, String placeName,
			String placePhone, String placeAddress, String userNickName, int pictureCode, String pictureURL,
			String pictureDeleteYN, String pictureName, String pictureNewName, String pictureUtilPath) {
		super();
		this.boardCode = boardCode;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardViews = boardViews;
		this.boardPostDate = boardPostDate;
		this.boardDeleteYn = boardDeleteYn;
		this.decisionCode = decisionCode;
		this.userCode = userCode;
		this.placeName = placeName;
		this.placePhone = placePhone;
		this.placeAddress = placeAddress;
		this.userNickName = userNickName;
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

	public int getBoardViews() {
		return boardViews;
	}

	public void setBoardViews(int boardViews) {
		this.boardViews = boardViews;
	}

	public Date getBoardPostDate() {
		return boardPostDate;
	}

	public void setBoardPostDate(Date boardPostDate) {
		this.boardPostDate = boardPostDate;
	}

	public String getBoardDeleteYn() {
		return boardDeleteYn;
	}

	public void setBoardDeleteYn(String boardDeleteYn) {
		this.boardDeleteYn = boardDeleteYn;
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

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public String getPlacePhone() {
		return placePhone;
	}

	public void setPlacePhone(String placePhone) {
		this.placePhone = placePhone;
	}

	public String getPlaceAddress() {
		return placeAddress;
	}

	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
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
		return "FriendlyPlaceDTO [boardCode=" + boardCode + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", boardViews=" + boardViews + ", boardPostDate=" + boardPostDate + ", boardDeleteYn="
				+ boardDeleteYn + ", decisionCode=" + decisionCode + ", userCode=" + userCode + ", placeName="
				+ placeName + ", placePhone=" + placePhone + ", placeAddress=" + placeAddress + ", userNickName="
				+ userNickName + ", pictureCode=" + pictureCode + ", pictureURL=" + pictureURL + ", pictureDeleteYN="
				+ pictureDeleteYN + ", pictureName=" + pictureName + ", pictureNewName=" + pictureNewName
				+ ", pictureUtilPath=" + pictureUtilPath + "]";
	}

}
