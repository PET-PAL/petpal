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

	@Autowired
	private AdAdminMapper adAdminMapper;
	
	public AdAdminServiceImpl(AdAdminMapper adAdminMapper) {
		this.adAdminMapper = adAdminMapper;
	}


	@Override
	public List<AdAdminDTO> selectAdApproveList() {
		return adAdminMapper.selectAdApproveList();
	}


	@Override
	public List<AdAdminDTO> selectAdApproveDetail() {
		return adAdminMapper.selectAdApproveDetail();
	}
	
}
