package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class PictureDTO {

	private int pictureCode;
	private String pictureName;
	private String pictureURL;
	private Date pictureUploadDate;
	private String pictureDeleteYN;
	private String pictureNewName;
	private int boardCode;
	
	public PictureDTO() {}

	public PictureDTO(int pictureCode, String pictureName, String pictureURL, Date pictureUploadDate,
			String pictureDeleteYN, String pictureNewName, int boardCode) {
		super();
		this.pictureCode = pictureCode;
		this.pictureName = pictureName;
		this.pictureURL = pictureURL;
		this.pictureUploadDate = pictureUploadDate;
		this.pictureDeleteYN = pictureDeleteYN;
		this.pictureNewName = pictureNewName;
		this.boardCode = boardCode;
	}

	public int getPictureCode() {
		return pictureCode;
	}

	public void setPictureCode(int pictureCode) {
		this.pictureCode = pictureCode;
	}

	public String getPictureName() {
		return pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}

	public String getPictureURL() {
		return pictureURL;
	}

	public void setPictureURL(String pictureURL) {
		this.pictureURL = pictureURL;
	}

	public Date getPictureUploadDate() {
		return pictureUploadDate;
	}

	public void setPictureUploadDate(Date pictureUploadDate) {
		this.pictureUploadDate = pictureUploadDate;
	}

	public String getPictureDeleteYN() {
		return pictureDeleteYN;
	}

	public void setPictureDeleteYN(String pictureDeleteYN) {
		this.pictureDeleteYN = pictureDeleteYN;
	}

	public String getPictureNewName() {
		return pictureNewName;
	}

	public void setPictureNewName(String pictureNewName) {
		this.pictureNewName = pictureNewName;
	}

	public int getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}

	@Override
	public String toString() {
		return "PictureDTO [pictureCode=" + pictureCode + ", pictureName=" + pictureName + ", pictureURL=" + pictureURL
				+ ", pictureUploadDate=" + pictureUploadDate + ", pictureDeleteYN=" + pictureDeleteYN
				+ ", pictureNewName=" + pictureNewName + ", boardCode=" + boardCode + "]";
	}



	
}
