package com.nobanryeo.petpal.admin.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;

public interface AdAdminMapper {

	List<AdAdminDTO> selectAdApproveList();

	List<AdAdminDTO> selectAdApproveDetail();
	
}
