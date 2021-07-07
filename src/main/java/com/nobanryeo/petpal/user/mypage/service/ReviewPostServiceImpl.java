package com.nobanryeo.petpal.user.mypage.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.ReviewDTO;
import com.nobanryeo.petpal.user.dto.ReviewReplyDTO;
import com.nobanryeo.petpal.user.mypage.dao.ReviewMapper;

@Service
public class ReviewPostServiceImpl implements ReviewPostService {

	private ReviewMapper mapper;
	
	public ReviewPostServiceImpl(ReviewMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public int selectReviewPostCount() {
		return mapper.selectReviewPostCount();
	}

	@Override
	public List<ReviewDTO> selectReviewPostList(PageDTO page) {
		return mapper.selectReviewPostList(page);
	}

	@Override
	public void updateViewsCount(int boardCode) {
		mapper.updateViewsCount(boardCode);
		
	}

	@Override
	public ReviewDTO selectReviewDetail(int boardCode) {
		return mapper.selectReviewDetail(boardCode);
	}

	@Override
	public List<ReviewReplyDTO> selectReviewReply(int boardCode) {
		return mapper.selectReviewReply(boardCode);
	}


}
