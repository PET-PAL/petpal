package com.nobanryeo.petpal.admin.ask.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.admin.ask.dao.AskMapper;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.AskDTO;
import com.nobanryeo.petpal.admin.dto.AskDetailDTO;
@Service
public class AskServiceImpl implements AskService{
	private AskMapper mapper;
	
	@Autowired
	public AskServiceImpl(AskMapper mapper) {
		this.mapper = mapper;
	}
	
	
	@Override
	public List<AskDTO> selectAsk(AdminPageInfoDTO paging) {
		// TODO Auto-generated method stub
		
		return mapper.selectList(paging);
	}


	@Override
	public AskDetailDTO selectListDetail(int boardCode) {
		// TODO Auto-generated method stub
		return mapper.selectListDetail(boardCode);
	}


	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return mapper.selectListCount();
	}

}
