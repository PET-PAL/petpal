package com.nobanryeo.petpal.user.mypage.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.BoradAndCommentDTO;
import com.nobanryeo.petpal.user.dto.MissingDTO;
import com.nobanryeo.petpal.user.mypage.dao.BoardManageMapper;
@Service
public class BoardManagementServiceImpl implements BoardManagementService{

	private BoardManageMapper mapper;
	
	public BoardManagementServiceImpl(BoardManageMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public int selectMissingCount(BoradAndCommentDTO bcDTO) {
		return mapper.selectMissingCount(bcDTO);
	}

	@Override
	public List<MissingDTO> selectMissing(HashMap<String, Object> map) {
		return mapper.selectMissing(map);
	}

	@Override
	public int selectAdoptCount(BoradAndCommentDTO bcDTO) {
		return mapper.selectAdoptCount(bcDTO);
	}

	@Override
	public List<AdoptDTO> selectAdoptList(HashMap<String, Object> map) {
		return mapper.selectAdoptList(map);
	}

}
