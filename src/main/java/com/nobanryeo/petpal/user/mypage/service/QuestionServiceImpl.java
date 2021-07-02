package com.nobanryeo.petpal.user.mypage.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.dto.AdQnADTO;
import com.nobanryeo.petpal.user.mypage.dao.QuestionMapper;

@Service
public class QuestionServiceImpl implements QuestionService{
	
	private final QuestionMapper mapper;
	
	public QuestionServiceImpl(QuestionMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int selectQnACount(int code) {
		
		return mapper.selectQnACount(code);
	}

	@Override
	public List<AdQnADTO> selectQnAList(HashMap<String, Object> map) {
		
		return mapper.selectQnAList(map);
	}

}
