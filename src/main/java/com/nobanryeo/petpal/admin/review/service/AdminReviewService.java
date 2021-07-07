package com.nobanryeo.petpal.admin.review.service;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.AdminReviewDTO;

public interface AdminReviewService {

	int selectReviewCount(AdminPageInfoDTO cat);

	List<AdminReviewDTO> selectReview(AdminPageInfoDTO paging);

}
