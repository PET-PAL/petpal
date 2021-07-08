package com.nobanryeo.petpal.user.mypage.service;

import java.util.List;

import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.ReviewDTO;
import com.nobanryeo.petpal.user.dto.ReviewReplyDTO;
import com.nobanryeo.petpal.user.dto.ReviewReportDTO;

public interface ReviewPostService {

	int selectReviewPostCount();

	List<ReviewDTO> selectReviewPostList(PageDTO page);

	void updateViewsCount(int boardCode);

	ReviewDTO selectReviewDetail(int boardCode);

	List<ReviewReplyDTO> selectReviewReply(int boardCode);

	int insertWriteReviewBoard(ReviewDTO reviewDTO);

	int insertReviewBoardImg(PictureDTO picture);

	List<PictureDTO> selectReviewImg(int boardCode);

	int insertReviewBoardMessage(MessageTableDTO message);

	int insertReviewBoardReport(ReviewReportDTO reportDTO);

	int insertReviewBoardReply(ReviewReplyDTO replyDTO);

	int insertReviewReplyReport(ReviewReplyDTO replyDTO);

	ReviewDTO selectWritedReview(int boardCode);


}
