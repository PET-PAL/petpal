package com.nobanryeo.petpal.admin.ad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class AdController {
	
	// 광고심사 리스트
	@RequestMapping("adApproveList")
	public String adApproveListReturning() {
		
		return "admin/main/adApproveList";
	}
	
	// 광고심사 디테일
	@RequestMapping("adApproveDetail")
	public String adApproveDetailReturning() {
		
		return "admin/main/adApproveDetail";
	}
	
	// 광고관리 리스트
	@RequestMapping("adList")
	public String adListReturning() {
		
		return "admin/main/adList";
	}
	
	// 광고관리 디테일
	@RequestMapping("adDetail")
	public String adDetailReturning() {
		
		return "admin/main/adDetail";
	}
	
	
}

