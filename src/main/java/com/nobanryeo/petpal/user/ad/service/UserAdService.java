package com.nobanryeo.petpal.user.ad.service;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdDTO;

public interface UserAdService {

	public List<AdDTO> selectAdList(AdDTO adDTO);

	public List<AdDTO> selectAdPaymentList(AdDTO adDTO);

	public AdDTO selectAdApplyDetail(AdDTO adDTO);
	

}
