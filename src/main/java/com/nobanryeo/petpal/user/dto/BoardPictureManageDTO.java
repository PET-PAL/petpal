package com.nobanryeo.petpal.user.dto;

public class BoardPictureManageDTO {

	private int boardCode;
	private int pictureCode;
	
	public BoardPictureManageDTO() {}

	public BoardPictureManageDTO(int boardCode, int pictureCode) {
		super();
		this.boardCode = boardCode;
		this.pictureCode = pictureCode;
	}

	public int getBoardCode() {
		return boardCode;
	}

	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}

	public int getPictureCode() {
		return pictureCode;
	}

	public void setPictureCode(int pictureCode) {
		this.pictureCode = pictureCode;
	}

	@Override
	public String toString() {
		return "BoardPictureManageDTO [boardCode=" + boardCode + ", pictureCode=" + pictureCode + "]";
	}
	
}
