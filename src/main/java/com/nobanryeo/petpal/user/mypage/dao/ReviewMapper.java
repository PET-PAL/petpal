package com.nobanryeo.petpal.user.mypage.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.ReviewDTO;
import com.nobanryeo.petpal.user.dto.ReviewReplyDTO;
import com.nobanryeo.petpal.user.dto.ReviewReportDTO;

public interface ReviewMapper {

	int selectReviewPostCount();

	List<ReviewDTO> selectReviewPostList(PageDTO page);

	void updateViewsCount(int boardCode);

	ReviewDTO selectReviewDetail(int boardCode);
	
	List<PictureDTO> selectReviewImg(int boardCode);

	List<ReviewReplyDTO> selectReviewReply(int boardCode);

	int insertWriteReviewBoard(ReviewDTO reviewDTO);

	int selectBoardCode();

	int insertReviewBoardImg(PictureDTO picture);

	int insertReviewBoardImg2(PictureDTO picture);

	int insertReviewBoardMessage(MessageTableDTO message);

	int insertReviewBoardReport(ReviewReportDTO reportDTO);

	int insertReviewBoardReply(ReviewReplyDTO replyDTO);

	int insertReviewReplyReport(ReviewReplyDTO replyDTO);

	
	


}
