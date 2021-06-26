package com.nobanryeo.petpal.user.ad.service;

import java.util.List;

import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;

public interface FreeBoardService {

	public List<FreeBoardDTO> selectFreeBoardList();

	public FreeBoardDTO selectFreeBoardDetail(FreeBoardDTO freeBoard);

	public List<BoardReplyDTO> selectFreeBoardReply(FreeBoardReplyDTO reply);

	public int insertFreeBoardReply(FreeBoardReplyDTO reply);
	
}
