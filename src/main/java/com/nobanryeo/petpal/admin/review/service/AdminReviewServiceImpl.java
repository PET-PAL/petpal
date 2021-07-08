package com.nobanryeo.petpal.admin.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.AdminReviewDTO;
import com.nobanryeo.petpal.admin.review.dao.AdminReviewMapper;

@Service
public class AdminReviewServiceImpl implements AdminReviewService{
	private AdminReviewMapper mapper;
	
	@Autowired
	public AdminReviewServiceImpl(AdminReviewMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int selectReviewCount(AdminPageInfoDTO cat) {
		// TODO Auto-generated method stub
		return mapper.selectReviewCount(cat);
	}

	@Override
	public List<AdminReviewDTO> selectReview(AdminPageInfoDTO paging) {
		// TODO Auto-generated method stub
		return mapper.selectReview(paging);
	}
	
	

}
