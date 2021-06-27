package com.nobanryeo.petpal.admin.ad.service;

import java.util.List;
import java.util.Map;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;

public interface AdAdminService {
	
	// 광고 심사 리스트 조회
	List<AdAdminDTO> selectAdApproveList();
	
	// 광고 심사 디테일 조회
	List<AdAdminDTO> selectAdApproveDetail(int adCode);

	// 광고 심사 사유 조회
	List<AdAdminDTO> selectAdApproveDecision(int adCode);

	//boolean insertAdApprove(int adCode);

	//boolean insertAdApprove(int adCode, int stateCode);

	//boolean insertAdApprove(int adCode, int stateCode, String decisionReason);

	// 광고 심사 사유 입력
	boolean insertAdApprove(Map param);
	//boolean insertAdApprove(String decisionReason, int stateCode, int adCode);

	// 광고 심사 결과 업데이트
	boolean updateAdApprove(Map param);

	//boolean updateAdApprove(String decisionReason, int stateCode, int adCode);

	
}
