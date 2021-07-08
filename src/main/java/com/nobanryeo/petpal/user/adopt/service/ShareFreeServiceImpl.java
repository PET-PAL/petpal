package com.nobanryeo.petpal.user.adopt.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.adopt.dao.ShareFreeMapper;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.ShareFreeDTO;

@Service
public class ShareFreeServiceImpl implements ShareFreeService {
	
	private ShareFreeMapper sharefreeMapper;
	
	@Autowired
	public ShareFreeServiceImpl(ShareFreeMapper sharefreeMapper) {
		this.sharefreeMapper = sharefreeMapper;
	}

	@Override
	public int selectTotalCount() {
		int total = sharefreeMapper.selectTotalCount();
		return total;
	}


	@Override
	public List<ShareFreeDTO> selectShareFreeList(HashMap<String, Object> map) {
		
		List<ShareFreeDTO> shareAllList = sharefreeMapper.selectShareFreeList(map);
		return shareAllList;

	}

	
	
	

}
