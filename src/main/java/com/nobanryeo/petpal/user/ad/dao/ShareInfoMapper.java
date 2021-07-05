package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.ShareInfoDTO;

public interface ShareInfoMapper {

	List<ShareInfoDTO> selectShareInfoListExistImg();

	List<ShareInfoDTO> selectShareInfoListNotExistImg();
	
	void updateShareInfoViews(int boardCode);
	
	ShareInfoDTO selectShareInfoDetail(int boardCode);
	
	List<FreeBoardReplyDTO> selectShareInfoReply(int boardCode);

	ShareInfoDTO writeShareInfo(int userCode);

	int insertWriteShreInfo(ShareInfoDTO shareInfo);

	int selectBoardCode(ShareInfoDTO shareInfo);

	int insertShareInfoManage(ShareInfoDTO shareInfo);


}