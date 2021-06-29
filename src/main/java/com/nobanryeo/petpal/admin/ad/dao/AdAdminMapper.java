package com.nobanryeo.petpal.admin.ad.dao;

import java.util.List;
import java.util.Map;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;

public interface AdAdminMapper {

	int selectAdApply(AdminPageInfoDTO cat);
	
	List<AdAdminDTO> selectAdApproveList(AdminPageInfoDTO paging);

	List<AdAdminDTO> selectAdApproveDetail(int adCode);

	List<AdAdminDTO> selectAdApproveDecision(int adCode);

	int insertAdApprove(Map param);

	int updateAdApprove(Map param);

	int searchAdApply(Map<String, String> param);



	
}
