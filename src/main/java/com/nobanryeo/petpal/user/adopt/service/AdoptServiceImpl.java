package com.nobanryeo.petpal.user.adopt.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.adopt.dao.AdoptMapper;
import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.AdoptPictureManageDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;

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
	
		
		return selectAdoptList;
	}

	@Override
	public int registAdopt(AdoptDTO adopt, List<PictureDTO> pictureList) {

		int adoptResult = adoptMapper.registerAdopt(adopt);
		System.out.println("adoptResult in service:"+ adoptResult);
		
		int boardCodeValue = adoptMapper.selectBoardCode();
		
		
//		int boardCode = adopt.getBoardCode()
		int pictureResult = 0;
		for(PictureDTO picture:pictureList) {
			picture.setBoardCode(boardCodeValue);
			pictureResult += adoptMapper.registPicture(picture);
			
			System.out.println("pictureResult in service:"+ pictureResult);
			
			int subresult = adoptMapper.registSubTable(picture);
			System.out.println("subresult: "+subresult);
		}
		
		
		int result = 0;
		if(adoptResult>0 && pictureResult == pictureList.size()) {
			result = 1;
		}
		return result;
	}

	@Override
	public int selectBoardCode() {
		int boardCode = adoptMapper.selectBoardCode();
		return boardCode;
	}

	@Override
	public AdoptDTO selectAdoptDetail(int boardCode) {

		AdoptDTO selectAdoptdetail = new AdoptDTO();
		selectAdoptdetail = adoptMapper.selectAdoptDetail(boardCode);
		
		return selectAdoptdetail;
	}

	@Override
	public List<PictureDTO> selectPictureList(int boardCode) {

		List<PictureDTO> selectPictureList = new ArrayList<>();
		selectPictureList = adoptMapper.selectPictureList(boardCode);
		
		return selectPictureList;
	}




}
