package com.nobanryeo.petpal.admin.ad.service;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;

public interface AdAdminService {
	
	// 광고 심사 리스트 조회
	List<AdAdminDTO> selectAdApproveList();
	
	// 광고 심사 디테일 조회
	List<AdAdminDTO> selectAdApproveDetail(int adCode);
	
}
