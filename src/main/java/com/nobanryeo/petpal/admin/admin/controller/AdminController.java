package com.nobanryeo.petpal.admin.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class AdminController {

	// 관리자관리 리스트
	@RequestMapping("adminList")
	public String adminListReturning() {
		return "admin/main/adminList";
	}
	
	// 관리자관리 디테일
	@RequestMapping("adminDetail")
	public String adminDetailReturning() {
		return "admin/main/adminDetail";
	}
	
	// 관리자등록
	@RequestMapping("adminAdd")
	public String adminAddReturning() {
		return "admin/main/adminAdd";
	}
	
}
