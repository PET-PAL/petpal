package com.nobanryeo.petpal.admin.ad.dao;

import java.util.List;
import java.util.Map;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;

public interface AdAdminMapper {

	int selectAdApply(AdminPageInfoDTO cat);
	
	//List<AdAdminDTO> selectAdApproveList(AdminPageInfoDTO paging, String category);
	List<AdAdminDTO> selectAdApproveList(AdminPageInfoDTO paging);
	//List<AdAdminDTO> selectAdApproveList();

	List<AdAdminDTO> selectAdApproveDetail(int adCode);

	List<AdAdminDTO> selectAdApproveDecision(int adCode);

	//int insertAdApprove(int adCode, int stateCode);

	//int insertAdApprove(int adCode, int stateCode, String decisionReason);

	int insertAdApprove(Map param);
	
	//int insertAdApprove(String decisionReason, int stateCode, int adCode);

	int updateAdApprove(Map param);




	//int updateAdApprove(String decisionReason, int stateCode, int adCode);

	
}
