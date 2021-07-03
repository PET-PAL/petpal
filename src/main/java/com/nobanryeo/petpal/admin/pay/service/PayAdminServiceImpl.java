package com.nobanryeo.petpal.admin.pay.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.pay.dao.PayAdminMapper;

@Service
public class PayAdminServiceImpl implements PayAdminService {

	private PayAdminMapper payAdminMapper;
	
	// 생성자를 통한 DI
	@Autowired
	public PayAdminServiceImpl(PayAdminMapper payAdminMapper) {
		this.payAdminMapper = payAdminMapper;
	}

	@Override
	public int selectAdPayList(AdminPageInfoDTO cat) {
		return payAdminMapper.selectAdPayList(cat);
	}
	
}
