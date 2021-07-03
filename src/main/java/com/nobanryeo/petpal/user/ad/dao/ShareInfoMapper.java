package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.ShareInfoDTO;

public interface ShareInfoMapper {

	List<ShareInfoDTO> selectShareInfoListExistImg();

	List<ShareInfoDTO> selectShareInfoListNotExistImg();

	ShareInfoDTO writeShareInfo(int userCode);

	int insertWriteShreInfo(ShareInfoDTO shareInfo);

	int selectBoardCode(ShareInfoDTO shareInfo);

	int insertShareInfoManage(ShareInfoDTO shareInfo);

}