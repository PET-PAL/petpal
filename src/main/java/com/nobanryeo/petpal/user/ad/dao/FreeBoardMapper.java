package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;

public interface FreeBoardMapper {

	List<FreeBoardDTO> selectFreeBoardList();

	FreeBoardDTO selectFreeBoardDetail(FreeBoardDTO freeBoard);

	List<BoardReplyDTO> selectFreeBoardReply(FreeBoardReplyDTO reply);

	int insertFreeBoardReply(FreeBoardReplyDTO reply);

}
