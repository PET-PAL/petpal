package com.nobanryeo.petpal.user.mypage.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.mypage.dao.MessageMapper;

@Service
public class MessageServiceImpl implements MessageService{
	
	private MessageMapper mapper;
	
	public MessageServiceImpl(MessageMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int selectMessageCount(int code) {
		return mapper.selectMessageCount(code);
	}

	@Override
	public List<MessageTableDTO> selectMessage(HashMap<String, Object> map) {
		System.out.println("쪽지 내역 조회 시작합니다");
		return mapper.selectMessage(map);
	}

	@Override
	public int selectMessageDtailCount(MessageTableDTO messageDTO) {
		return mapper.selectMessageDtailCount(messageDTO);
	}

	@Override
	public List<MessageTableDTO> selectDetailMessage(HashMap<String, Object> map) {
		
		return mapper.selectDetailMessage(map);
	}

	@Override
	public boolean insertMessageFromMypage(MessageTableDTO messageDTO) {
		return mapper.insertMessageFromMypage(messageDTO) > 0 ? true : false;
	}



	

}
