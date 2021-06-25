package com.nobanryeo.petpal.admin.ask.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.admin.ask.dao.AskMapper;
import com.nobanryeo.petpal.admin.ask.dto.AskDTO;
@Service
public class AskServiceImpl implements AskService{
	private AskMapper mapper;
	
	@Autowired
	public AskServiceImpl(AskMapper mapper) {
		this.mapper = mapper;
	}
	
	
	@Override
	public List<AskDTO> selectAsk(AskDTO ask) {
		// TODO Auto-generated method stub
		
		return mapper.selectList(ask);
	}

}
