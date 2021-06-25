package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.BoardPictureManageDTO;
import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;

public interface FreeBoardMapper {

	List<FreeBoardDTO> selectFreeBoardList();

	FreeBoardDTO selectFreeBoardDetail(FreeBoardDTO freeBoard);

	BoardPictureManageDTO selectFreeBoardDetailPicture(FreeBoardDTO freeBoard);

	List<BoardReplyDTO> selectFreeBoardReply(FreeBoardDTO freeBoard);

}
