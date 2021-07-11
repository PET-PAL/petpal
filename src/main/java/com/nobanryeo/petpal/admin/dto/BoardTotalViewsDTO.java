package com.nobanryeo.petpal.admin.dto;

public class BoardTotalViewsDTO {

	private String boardType;
	private int boartTotalViews;
	
	public BoardTotalViewsDTO() {
		super();
	}

	public BoardTotalViewsDTO(String boardType, int boartTotalViews) {
		super();
		this.boardType = boardType;
		this.boartTotalViews = boartTotalViews;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public int getBoartTotalViews() {
		return boartTotalViews;
	}

	public void setBoartTotalViews(int boartTotalViews) {
		this.boartTotalViews = boartTotalViews;
	}

	@Override
	public String toString() {
		return "BoardTotalViewsDTO [boardType=" + boardType + ", boartTotalViews=" + boartTotalViews + "]";
	}
	
	
}
