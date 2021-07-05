package com.nobanryeo.petpal.user.ad.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.ad.dao.ShareInfoMapper;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.ShareInfoDTO;

@Service
public class ShareInfoServiceImpl implements ShareInfoService {

	private final ShareInfoMapper shareInfoMapper;
	
	@Autowired
	public ShareInfoServiceImpl(ShareInfoMapper shareInfoMapper) {
		this.shareInfoMapper = shareInfoMapper;
	}

	@Override
	public List<ShareInfoDTO> selectShareInfoList() {
		
		// 이미지가 존재하는 정보공유게시판 리스트 조회
		List<ShareInfoDTO> shareInfoList1 = new ArrayList<>();
		shareInfoList1 = shareInfoMapper.selectShareInfoListExistImg();

		// 이미지가 존재하지 않는 정보공유게시판 리스트 조회
		List<ShareInfoDTO> shareInfoList2 = shareInfoMapper.selectShareInfoListNotExistImg();
		
		List<ShareInfoDTO> shareInfoList = new ArrayList<>();
		shareInfoList.addAll(shareInfoList1);
		shareInfoList.addAll(shareInfoList2);
		
		System.out.println(shareInfoList);
		
		return shareInfoList;
	}

	@Override
	public void updateShareInfoViews(int boardCode) {
		shareInfoMapper.updateShareInfoViews(boardCode);
	}
	
	@Override
	public ShareInfoDTO selectShareInfoDetail(int boardCode) {
		
		return shareInfoMapper.selectShareInfoDetail(boardCode);
	}
	
	@Override
	public List<FreeBoardReplyDTO> selectShareInfoReply(int boardCode) {

		List<FreeBoardReplyDTO> shareInfoReply = shareInfoMapper.selectShareInfoReply(boardCode);
		
		return shareInfoReply;
	}
	
	@Override
	public ShareInfoDTO writeShareInfo(int userCode) {

		return shareInfoMapper.writeShareInfo(userCode);
	}

	@Override
	public int inserWriteShreInfo(ShareInfoDTO shareInfo) {
		
		// InfoBoard, ImageTablle insert해주기
		int result = shareInfoMapper.insertWriteShreInfo(shareInfo);
		// insert후 boardCode 가져오기
		int boardCode = shareInfoMapper.selectBoardCode(shareInfo);
		shareInfo.setBoardCode(boardCode);
		
		// 중간 manageTable insert해주기
		int result2 = shareInfoMapper.insertShareInfoManage(shareInfo);
		
		return result + result2;
	}

}
