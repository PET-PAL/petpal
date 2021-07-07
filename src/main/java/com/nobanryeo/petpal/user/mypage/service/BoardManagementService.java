package com.nobanryeo.petpal.user.mypage.service;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.BoradAndCommentDTO;
import com.nobanryeo.petpal.user.dto.MissingDTO;

public interface BoardManagementService {

	int selectMissingCount(BoradAndCommentDTO bcDTO);

	List<MissingDTO> selectMissing(HashMap<String, Object> map);

	int selectAdoptCount(BoradAndCommentDTO bcDTO);

	List<AdoptDTO> selectAdoptList(HashMap<String, Object> map);

	int selectInfoCount(BoradAndCommentDTO bcDTO);

	List<BoradAndCommentDTO> selectInfoList(HashMap<String, Object> map);

	int selectFreeCount(BoradAndCommentDTO bcDTO);

	List<BoradAndCommentDTO> selectFreeList(HashMap<String, Object> map);

	int selectShareCount(BoradAndCommentDTO bcDTO);

	List<BoradAndCommentDTO> selectShareList(HashMap<String, Object> map);

	int selectReviewCount(BoradAndCommentDTO bcDTO);

	List<BoradAndCommentDTO> selectReviewList(HashMap<String, Object> map);

	int selectReplyCount(BoradAndCommentDTO bcDTO);

	List<BoradAndCommentDTO> selectReplyList(HashMap<String, Object> map);

	boolean deletePost(int boardCode);

	boolean deletePostAdopt(int boardCode);

	boolean deletePostInfo(int boardCode);

	boolean deletePostFree(int boardCode);

	boolean deletePostShare(int boardCode);

	boolean deletePostReview(int boardCode);

	boolean deleteReply(int boardCode);

}
