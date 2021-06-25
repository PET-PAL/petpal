package com.nobanryeo.petpal.admin.ad.service;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;

public interface AdAdminService {

	List<AdAdminDTO> selectAdApproveList();
	
	List<AdAdminDTO> selectAdApproveDetail(int adCode);
	
}
