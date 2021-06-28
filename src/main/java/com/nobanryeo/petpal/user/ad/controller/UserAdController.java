package com.nobanryeo.petpal.user.ad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nobanryeo.petpal.user.ad.service.UserAdService;
import com.nobanryeo.petpal.user.dto.AdDTO;

@Controller
@RequestMapping("/user/*")
public class UserAdController {

	private final UserAdService adService;
		
	@Autowired
	public UserAdController(UserAdService adService) {
			
		this.adService = adService;
	}
	
	@GetMapping("select/ad/list")
	public String selectAdList(Model model) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(1); 			// 세션 연결해야함
		
		model.addAttribute("adList", adService.selectAdList(adDTO));
		
		return "user/mypage/adList";
	}
}
