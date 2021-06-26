package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReportDTO;
import com.nobanryeo.petpal.user.dto.MessageTableDTO;

public interface FreeBoardMapper {

	List<FreeBoardDTO> selectFreeBoardList();

	FreeBoardDTO selectFreeBoardDetail(int boardCode);

	List<BoardReplyDTO> selectFreeBoardReply(int boardCode);

	int insertFreeBoardReply(FreeBoardReplyDTO reply);

	void updateFreeBoardViews(int boardCode);

	int insertFreeBoardMessage(MessageTableDTO message);

	int insertFreeBoardReport(FreeBoardReportDTO report);

}
