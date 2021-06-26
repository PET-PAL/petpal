package com.nobanryeo.petpal.user.adopt.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.adopt.dao.AdoptMapper;
import com.nobanryeo.petpal.user.dto.AdoptPictureManageDTO;

@Service
public class AdoptServiceImpl implements AdoptService {
	
	private final AdoptMapper adoptMapper;
	
	@Autowired
	public AdoptServiceImpl(AdoptMapper adoptMapper) {
		this.adoptMapper = adoptMapper;
	}

	@Override
	public List<AdoptPictureManageDTO> selectAdoptList() {
		
		List<AdoptPictureManageDTO> selectAdoptList = new ArrayList<>();
		selectAdoptList = adoptMapper.selectAdoptList();
		for(AdoptPictureManageDTO adoptPicture: selectAdoptList) {
			System.out.println(adoptPicture);
		}
		
		return selectAdoptList;
	}

}
