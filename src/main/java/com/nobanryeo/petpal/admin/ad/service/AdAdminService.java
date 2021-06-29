package com.nobanryeo.petpal.admin.ad.service;

import java.util.List;
import java.util.Map;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;

public interface AdAdminService {
	
	// 광고 심사 총 갯수 조회
	int selectAdApply(AdminPageInfoDTO cat);
	
	// 광고 심사 리스트 조회
	List<AdAdminDTO> selectAdApproveList(AdminPageInfoDTO paging);
	
	// 광고 심사 디테일 조회
	List<AdAdminDTO> selectAdApproveDetail(int adCode);

	// 광고 심사 사유 조회
	List<AdAdminDTO> selectAdApproveDecision(int adCode);

	// 광고 심사 사유 입력
	boolean insertAdApprove(Map param);

	// 광고 심사 결과 업데이트
	boolean updateAdApprove(Map param);
	
	// 광고 심사 검색 총 갯수 조회
	int searchAdApply(Map<String, String> param);



	
}
