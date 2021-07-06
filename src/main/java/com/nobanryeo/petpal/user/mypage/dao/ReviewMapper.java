package com.nobanryeo.petpal.user.mypage.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.ReviewDTO;
import com.nobanryeo.petpal.user.dto.ReviewReplyDTO;

public interface ReviewMapper {

	int selectReviewPostCount();

	List<ReviewDTO> selectReviewPostList(PageDTO page);

	void updateViewsCount(int boardCode);

	ReviewDTO selectReviewDetail(int boardCode);

	List<ReviewReplyDTO> selectReviewReply(int boardCode);

}
