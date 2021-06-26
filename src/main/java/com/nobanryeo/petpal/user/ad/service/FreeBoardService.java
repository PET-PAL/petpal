package com.nobanryeo.petpal.user.ad.service;

import java.util.List;

import com.nobanryeo.petpal.user.dto.FreeBoardDTO;

public interface FreeBoardService {

	public List<FreeBoardDTO> selectFreeBoardList();

	public FreeBoardDTO selectFreeBoardDetail(FreeBoardDTO freeBoard);

//	public BoardPictureManageDTO selectFreeBoardDetailPicture(BoardPictureManageDTO picture);
	
}
