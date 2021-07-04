package com.nobanryeo.petpal.user.ad.service;

import java.util.List;

import com.nobanryeo.petpal.user.dto.ShareInfoDTO;

public interface ShareInfoService {

	public List<ShareInfoDTO> selectShareInfoList();

	public ShareInfoDTO writeShareInfo(int userCode);

	public int inserWriteShreInfo(ShareInfoDTO shareInfo);

}
