package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.AdQnADTO;

public interface UserAdMapper {

	List<AdDTO> selectAdList(AdDTO adDTO);

	List<AdDTO> selectAdPaymentList(AdDTO adDTO);

	AdDTO selectAdApplyDetail(AdDTO adDTO);

	int insertAdQnA(AdQnADTO adQnA);

	int insertAdSubmit(AdDTO adDTO);

	int insertAdSubmit2(AdDTO adDTO);

	int updateFirstAdPayment(AdDTO adDTO);

	AdDTO selectAdListDecisionDate(AdDTO adDTO);

	int updateCancelAd(AdDTO adDTO);

}
