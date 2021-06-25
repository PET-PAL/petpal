package com.nobanryeo.petpal.user.ad.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.ad.dao.FreeBoardMapper;
import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;

@Service
public class FreeBoardServiceImpl implements FreeBoardService {

	private final FreeBoardMapper freeBoardMapper;
	
	@Autowired
	public FreeBoardServiceImpl(FreeBoardMapper freeBoardMapper) {
		this.freeBoardMapper = freeBoardMapper;
	}
	
	@Override
	public List<FreeBoardDTO> selectFreeBoardList() {
		
		List<FreeBoardDTO> selectFreeBoardList = new ArrayList<>();
		selectFreeBoardList = freeBoardMapper.selectFreeBoardList();
		
		return selectFreeBoardList;
	}

	@Override
	public FreeBoardDTO selectFreeBoardDetail(FreeBoardDTO freeBoard) {

		FreeBoardDTO selectFreeBoardDetail = freeBoardMapper.selectFreeBoardDetail(freeBoard);
		
		return selectFreeBoardDetail;
	}

	@Override
	public List<BoardReplyDTO> selectFreeBoardReply(FreeBoardReplyDTO reply) {
		
		List<BoardReplyDTO> replyList = new ArrayList<>();
		replyList = freeBoardMapper.selectFreeBoardReply(reply);
		
		return replyList;
	}

	@Override
	public int insertFreeBoardReply(FreeBoardReplyDTO reply) {

		return freeBoardMapper.insertFreeBoardReply(reply);
	}

}
