package com.nobanryeo.petpal.user.mypage.service;

import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.mypage.dao.QuestionMapper;

@Service
public class QuestionServiceImpl implements QuestionService{
	
	private final QuestionMapper mapper;
	
	public QuestionServiceImpl(QuestionMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int selectQnACount(int userCode) {
		
		return mapper.selectQnACount(userCode);
	}

}
