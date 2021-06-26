package com.nobanryeo.petpal.admin.ad.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.admin.ad.dao.AdAdminMapper;
import com.nobanryeo.petpal.admin.dto.AdAdminDTO;

@Service
public class AdAdminServiceImpl implements AdAdminService  {

	// 매퍼 전역변수
	private AdAdminMapper adAdminMapper;
	
	// 생성자를 통한 DI
	@Autowired
	public AdAdminServiceImpl(AdAdminMapper adAdminMapper) {
		this.adAdminMapper = adAdminMapper;
	}

	// 광고 심사 리스트 조회
	@Override
	public List<AdAdminDTO> selectAdApproveList() {
		return adAdminMapper.selectAdApproveList();
	}
	
	// 광고 심사 디테일 조회
	@Override
	public List<AdAdminDTO> selectAdApproveDetail(int adCode) {
		return adAdminMapper.selectAdApproveDetail(adCode);
	}


	
	
	
}
