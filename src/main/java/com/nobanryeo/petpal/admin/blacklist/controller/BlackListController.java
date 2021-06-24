package com.nobanryeo.petpal.admin.blacklist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class BlackListController {

	//블랙리스트 리스트
	@RequestMapping("blackList")
	public String paymentManageListReturning() {
			
		return "admin/main/blackList";
	}
	
}
