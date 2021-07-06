package com.nobanryeo.petpal.admin.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	// 고객페이지에서 로그인 시 스패너 타고 이동한 관리자페이지
	@RequestMapping("adminMain")
	public String adminMainReturning() {
		return "admin/main/manager_main";
	}
	
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
	
	@RequestMapping("insertAdmin")
	public String insertAdmin(@ModelAttribute UserInfoDTO userInfo) {
		System.out.println(userInfo);

		return "admin/main/adminAdd";
	}
}
