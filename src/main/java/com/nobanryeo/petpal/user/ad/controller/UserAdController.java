package com.nobanryeo.petpal.user.ad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.nobanryeo.petpal.user.ad.service.UserAdService;
import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

@Controller
@RequestMapping("/user/*")
public class UserAdController {

	private final UserAdService adService;
		
	@Autowired
	public UserAdController(UserAdService adService) {
			
		this.adService = adService;
	}
	
	/**
	 * 광고 신청 내역 조회
	 */
	@GetMapping("select/ad/list")
	public String selectAdList(Model model, @SessionAttribute UserInfoDTO loginUser) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(loginUser.getCode());
		
		model.addAttribute("adList", adService.selectAdList(adDTO));
		model.addAttribute("adPaymentList", adService.selectAdPaymentList(adDTO));
		
		return "user/mypage/adList";
	}

}
