package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.AdQnADTO;

public interface UserAdMapper {

	List<AdDTO> selectAdList(AdDTO adDTO);

	List<AdDTO> selectAdPaymentList(AdDTO adDTO);

	AdDTO selectAdApplyDetail(AdDTO adDTO);

	int insertAdQnA(AdQnADTO adQnA);

}
