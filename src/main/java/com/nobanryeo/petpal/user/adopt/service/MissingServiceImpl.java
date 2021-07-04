package com.nobanryeo.petpal.user.adopt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.adopt.dao.MissingMapper;
import com.nobanryeo.petpal.user.dto.MissingPictureDTO;

@Service
public class MissingServiceImpl implements MissingService {

	private final MissingMapper missingMapper;

	@Autowired
	public MissingServiceImpl(MissingMapper missingMapper) {
		this.missingMapper = missingMapper; 
	}

	@Override
	public List<MissingPictureDTO> selectAdoptList() {
		return null;
	}
	
	
}
