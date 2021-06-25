package com.nobanryeo.petpal.user.dto;

import java.sql.Date;

public class PictureDTO {

	private int pictureCode;
	private String pictureName;
	private String pictureURL;
	private Date pictureUploadDate;
	private String pictureDeleteYN;
	private String pictureName1;
	private String pictureNewName;
	
	public PictureDTO() {}

	public PictureDTO(int pictureCode, String pictureName, String pictureURL, Date pictureUploadDate,
			String pictureDeleteYN, String pictureName1, String pictureNewName) {
		super();
		this.pictureCode = pictureCode;
		this.pictureName = pictureName;
		this.pictureURL = pictureURL;
		this.pictureUploadDate = pictureUploadDate;
		this.pictureDeleteYN = pictureDeleteYN;
		this.pictureName1 = pictureName1;
		this.pictureNewName = pictureNewName;
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

	public String getPictureName1() {
		return pictureName1;
	}

	public void setPictureName1(String pictureName1) {
		this.pictureName1 = pictureName1;
	}

	public String getPictureNewName() {
		return pictureNewName;
	}

	public void setPictureNewName(String pictureNewName) {
		this.pictureNewName = pictureNewName;
	}

	@Override
	public String toString() {
		return "PictureDTO [pictureCode=" + pictureCode + ", pictureName=" + pictureName + ", pictureURL=" + pictureURL
				+ ", pictureUploadDate=" + pictureUploadDate + ", pictureDeleteYN=" + pictureDeleteYN
				+ ", pictureName1=" + pictureName1 + ", pictureNewName=" + pictureNewName + "]";
	}
	
	

	
}
