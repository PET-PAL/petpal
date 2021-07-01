package com.nobanryeo.petpal.user.ad.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.ad.dao.FreeBoardMapper;
import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReportDTO;
import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;

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
	public FreeBoardDTO selectFreeBoardDetail(int boardCode) {

		return freeBoardMapper.selectFreeBoardDetail(boardCode);
	}
	
	@Override
	public List<PictureDTO> selectFreeBoardImg(int boardCode) {

		List<PictureDTO> pictureList = new ArrayList<>();
		pictureList = freeBoardMapper.selectFreeBoardImg(boardCode);
		
		return pictureList;
	}

	@Override
	public List<BoardReplyDTO> selectFreeBoardReply(int boardCode) {
		
		List<BoardReplyDTO> replyList = new ArrayList<>();
		replyList = freeBoardMapper.selectFreeBoardReply(boardCode);
		
		return replyList;
	}

	@Override
	public int insertFreeBoardReply(FreeBoardReplyDTO reply) {

		return freeBoardMapper.insertFreeBoardReply(reply);
	}

	@Override
	public void updateFreeBoardViews(int boardCode) {

		freeBoardMapper.updateFreeBoardViews(boardCode);
	}

	@Override
	public int insertFreeBoardMessage(MessageTableDTO message) {

		return freeBoardMapper.insertFreeBoardMessage(message);
	}

	@Override
	public int insertFreeBoardReport(FreeBoardReportDTO report) {
		
		return freeBoardMapper.insertFreeBoardReport(report);
	}

	@Override
	public int insertFreeBoardReplyReport(FreeBoardReplyDTO replyReport) {

		return freeBoardMapper.insertFreeBoardReplyReport(replyReport);
	}

	@Override
	public FreeBoardDTO writeFreeBoard(int userCode) {
		return freeBoardMapper.writeFreeBoard(userCode);
	}

	@Override
	public int insertWriteFreeBoard(FreeBoardDTO freeBoard) {

		return freeBoardMapper.insertWriteFreeBoard(freeBoard);
	}

	@Override
	public int insertFreeBoardImg(PictureDTO picture) {
		
		int boardCodeval = freeBoardMapper.selectBoardCode();
		
		System.out.println(boardCodeval);
		
		picture.setBoardCode(boardCodeval);
		int result = freeBoardMapper.insertFreeBoardImg(picture);
		
		System.out.println(result);
		
		freeBoardMapper.insertFreeBoardImg2(picture);
		
		return result;
	}



}
