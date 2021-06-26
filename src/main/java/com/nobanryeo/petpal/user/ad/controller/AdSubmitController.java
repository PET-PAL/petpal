package com.nobanryeo.petpal.user.ad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nobanryeo.petpal.user.ad.service.AdSubmitService;

/**
 * @author WEENARA
 * 광고 신청 Controller
 */
@Controller
@RequestMapping("/user/*")
public class AdSubmitController {
//
//	private final AdSubmitService adSubmitService;
//	
//	@Autowired
//	public AdSubmitController(AdSubmitService adSubmitService) {
//		
//		this.adSubmitService = adSubmitService;
//	}
	
	/**
	 * 광고신청 첫페이지
	 */
	@GetMapping("select/adsubmit")
	public String AdSubmit1() {
		
		return "user/banner/adSubmit1";	
	}
	
	/**
	 * 광고신청 두번째 페이지
	 */
	@GetMapping("select/adsubmit2")
	public String AdSubmit2() {
		
		return "user/banner/adSubmit2";	
	}
	
}
