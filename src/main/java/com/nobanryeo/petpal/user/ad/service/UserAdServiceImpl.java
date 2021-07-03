package com.nobanryeo.petpal.user.ad.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.ad.dao.UserAdMapper;
import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.AdQnADTO;

@Service
public class UserAdServiceImpl implements UserAdService {

	private final UserAdMapper adMapper;
	
	@Autowired
	public UserAdServiceImpl(UserAdMapper adMapper) {
		this.adMapper = adMapper;
	}
	
	@Override
	public List<AdDTO> selectAdList(AdDTO adDTO) {
		
		List<AdDTO> adList = new ArrayList<>();
		
		adList = adMapper.selectAdList(adDTO);
		
		for(int i = 0; i < adList.size(); i++) {
			if(adList.get(i).getDecisionCode() != 0) {
				AdDTO newDTO = new AdDTO();
				newDTO = adMapper.selectAdListDecisionDate(adList.get(i));
				adList.get(i).setDecisionDate(newDTO.getDecisionDate());
			}
			
		}
		
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
		
			if(adApplyDetail.getDecisionCode() != 0) {
				AdDTO newDTO = new AdDTO();
				newDTO = adMapper.selectAdListDecisionDate(adApplyDetail);
				adApplyDetail.setDecisionDate(newDTO.getDecisionDate());
			}
		
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

}
