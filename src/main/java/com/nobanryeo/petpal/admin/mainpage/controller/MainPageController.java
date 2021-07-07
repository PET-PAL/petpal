package com.nobanryeo.petpal.admin.mainpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class MainPageController {

	// 관리자 메인페이지
	@RequestMapping("adminMainPage")
	public String adApproveListReturning() {
	
		return "admin/main/manager_main";
	}
	
	
}
