package com.nobanryeo.petpal.user.ad.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.ad.dao.FreeBoardMapper;
import com.nobanryeo.petpal.user.dto.BoardPictureManageDTO;
import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;

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
	public BoardPictureManageDTO selectFreeBoardDetailPicture(FreeBoardDTO freeBoard) {

		BoardPictureManageDTO picture = freeBoardMapper.selectFreeBoardDetailPicture(freeBoard);
		
		return picture;
	}

	@Override
	public List<BoardReplyDTO> selectFreeBoardReply(FreeBoardDTO freeBoard) {

		List<BoardReplyDTO> replyList = new ArrayList<>();
		replyList = freeBoardMapper.selectFreeBoardReply(freeBoard);
		
		return replyList;
	}

}
