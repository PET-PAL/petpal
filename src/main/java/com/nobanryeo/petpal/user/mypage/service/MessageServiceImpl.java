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
		System.out.println("쪽지 카운트 시작합니다");
		
		int count = mapper.selectMessageCount(code);
		
		System.out.println("쪽지 카운트 : " + count);
		
		return count;
	}

	@Override
	public List<MessageTableDTO> selectMessage(HashMap<String, Object> map) {
		System.out.println("쪽지 내역 조회 시작합니다");
		return mapper.selectMessage(map);
	}


	

}
