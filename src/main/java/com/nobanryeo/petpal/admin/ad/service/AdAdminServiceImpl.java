package com.nobanryeo.petpal.admin.ad.service;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.admin.ad.dao.AdAdminMapper;
import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;

@Service
public class AdAdminServiceImpl implements AdAdminService  {

	// 매퍼 전역변수
	private AdAdminMapper adAdminMapper;
	
	// 생성자를 통한 DI
	@Autowired
	public AdAdminServiceImpl(AdAdminMapper adAdminMapper) {
		this.adAdminMapper = adAdminMapper;
	}

	// 광고 심사 총 갯수 조회
	@Override
	public int selectAdApply() {
		return adAdminMapper.selectAdApply();
	}
	
	// 광고 심사 리스트 조회
//	@Override
//	public List<AdAdminDTO> selectAdApproveList() {
//		return adAdminMapper.selectAdApproveList();
//	}
	
	@Override
	public List<AdAdminDTO> selectAdApproveList(AdminPageInfoDTO paging) {
		// TODO Auto-generated method stub
		return adAdminMapper.selectAdApproveList(paging);
	}
	
	// 광고 심사 디테일 조회
	@Override
	public List<AdAdminDTO> selectAdApproveDetail(int adCode) {
		return adAdminMapper.selectAdApproveDetail(adCode);
	}

	// 광고 심사 사유 조회
	@Override
	public List<AdAdminDTO> selectAdApproveDecision(int adCode) {
		return adAdminMapper.selectAdApproveDecision(adCode);
	}

//	@Override
//	public boolean insertAdApprove(int adCode, int stateCode, String decisionReason) {
//		return adAdminMapper.insertAdApprove(adCode, stateCode, decisionReason) > 0 ? true : false;
//	}

	// 광고 심사 사유 입력
	@Override
	public boolean insertAdApprove(Map param) {
		return adAdminMapper.insertAdApprove(param) > 0 ? true : false;
	}

	// 광고 심사 결과 업데이트
	@Override
	public boolean updateAdApprove(Map param) {
		return adAdminMapper.updateAdApprove(param) > 0 ? true : false;
	}

	

	

//	@Override
//	public boolean insertAdApprove(String decisionReason, int stateCode, int adCode) {
//		return adAdminMapper.insertAdApprove(decisionReason, stateCode, adCode) > 0 ? true : false;
//	}

//	@Override
//	public boolean updateAdApprove(String decisionReason, int stateCode, int adCode) {
//		return adAdminMapper.updateAdApprove(decisionReason, stateCode, adCode) > 0 ? true : false;
//	}

//	@Override
//	public boolean insertAdApprove(int adCode) {
//		return adAdminMapper.insertAdApprove(adCode) > 0 ? true : false;
//	}

//	@Override
//	public boolean insertAdApprove(int adCode, int stateCode) {
//		return adAdminMapper.insertAdApprove(adCode, stateCode) > 0 ? true : false;
//	}


	
	
	
}
