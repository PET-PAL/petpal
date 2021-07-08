package com.nobanryeo.petpal.user.ad.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.ad.dao.UserAdMapper;
import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.AdQnADTO;
import com.nobanryeo.petpal.user.dto.PageDTO;

@Service
public class UserAdServiceImpl implements UserAdService {

	private final UserAdMapper adMapper;
	
	@Autowired
	public UserAdServiceImpl(UserAdMapper adMapper) {
		this.adMapper = adMapper;
	}

	@Override
	public int selectAdListCount(AdDTO adDTO) {
		return adMapper.selectAdListCount(adDTO);
	}
	
	@Override
	public List<AdDTO> selectAdList(AdDTO adDTO) {
		
		List<AdDTO> adList = new ArrayList<>();
		
		System.out.println(adDTO);
		
		adList = adMapper.selectAdList(adDTO);
		
		return adList;
	}

	@Override
	public List<AdDTO> selectAdPaymentList(AdDTO adDTO) {

		List<AdDTO> adPaymentList = new ArrayList<>();
		
		adPaymentList = adMapper.selectAdPaymentList(adDTO);
		
		return adPaymentList;
	}

	@Override
	public AdDTO selectAdApplyDetail(AdDTO adDTO) {
		
		AdDTO adApplyDetail = new AdDTO();
		adApplyDetail = adMapper.selectAdApplyDetail(adDTO);
		
//		// DECISION_DATE 값이 있는 값들 가져오기  -> DECISION_DATE 값이 없을 때는 아예 조회가 되지 않기때문,,
//		if(adApplyDetail.getDecisionCode() != 0) {	// 심사코드가 존재할 때 심사날짜 조회해오기
//			AdDTO newDTO = new AdDTO();
//			newDTO = adMapper.selectAdListDecisionDate(adApplyDetail);
//			adApplyDetail.setDecisionDate(newDTO.getDecisionDate());
//		}
			
		return adApplyDetail;
	}

	@Override
	public int insertAdQnA(AdQnADTO adQnA) {

		return adMapper.insertAdQnA(adQnA);
	}

	@Override
	public int insertAdSubmit(AdDTO adDTO) {

		return adMapper.insertAdSubmit(adDTO);
	}

	@Override
	public int insertAdSubmit2(AdDTO adDTO) {

		return adMapper.insertAdSubmit2(adDTO);
	}

	@Override
	public int updateFirstAdPayment(AdDTO adDTO) {

		return adMapper.updateFirstAdPayment(adDTO);
	}

	@Override
	public int updateCancelAd(AdDTO adDTO) {
		
		return adMapper.updateCancelAd(adDTO);
	}

	@Override
	public int updateAdMorePay(AdDTO adDTO) {
		return adMapper.updateAdMorePay(adDTO);
	}

	@Override
	public List<AdDTO> selectRandomAdNonPlace() {
		
		List<AdDTO> randomAd = new ArrayList<>();
		randomAd = adMapper.selectRandomAdNonPlace();
		
		return randomAd;
	}


}
