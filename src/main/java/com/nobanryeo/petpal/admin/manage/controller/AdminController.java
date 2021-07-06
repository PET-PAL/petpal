package com.nobanryeo.petpal.admin.manage.controller;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.manage.service.AdminManageService;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.UserService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	private final AdminManageService adminService;
	private final UserService userService;
	private final BCryptPasswordEncoder encoder;

	public AdminController(UserService userService,BCryptPasswordEncoder encoder,AdminManageService adminService) {
		this.userService = userService; 
		this.encoder = encoder;
		this.adminService = adminService;
	}
	// 고객페이지에서 로그인 시 스패너 타고 이동한 관리자페이지
	@RequestMapping("adminMain")
	public String adminMainReturning() {
		return "admin/main/manager_main";
	}
	
	// 관리자관리 리스트
	@RequestMapping("adminList")
	public String adminListReturning(Model model, AdminPageInfoDTO paging,
			@RequestParam(value="nowPage", required=false)String nowPage
	         , @RequestParam(value="cntPerPage", required=false)String cntPerPage
	         , @RequestParam(value="category", required=false)String category
	         , @RequestParam(value="searchCondition", required=false)String searchCondition
	         , @RequestParam(value="searchValue", required=false)String searchValue
	         , @RequestParam(value="sortValue", required=false)String sortValue) {
		
		if (nowPage == null && cntPerPage == null) {
	         nowPage = "1";
	         cntPerPage = "5";
	      } else if (nowPage == null) {
	         nowPage = "1";
	      } else if (cntPerPage == null) { 
	         cntPerPage = "5";
	      }
		
		if(searchValue == null) {
	    	   AdminPageInfoDTO cat = new AdminPageInfoDTO(category);
	           int total = adminService.selectListCount(cat);
	           
	          paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),category,sortValue);
	          model.addAttribute("paging", paging);
	          model.addAttribute("total",total);
	          model.addAttribute("category", category);
	          model.addAttribute("sortValue",sortValue);
	           
	           List<UserInfoDTO> adminList = adminService.selectAdminList(paging);
	           System.out.println(adminList);
	           model.addAttribute("adminList", adminList);
	       }else {
	       System.out.println("카테고리 : "+category);
	       //글 카운트 
	       AdminPageInfoDTO cat = new AdminPageInfoDTO(category,searchCondition,searchValue);
	       System.out.println("카테고리 2 : "+cat.getCategory());
	       int total = adminService.selectListCount(cat);
	       
	      paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),category,searchCondition,searchValue,sortValue);
	      model.addAttribute("paging", paging);
	      model.addAttribute("total",total);
	      model.addAttribute("category", category);
	      model.addAttribute("searchCondition", searchCondition);
	      model.addAttribute("searchValue", searchValue);
	      model.addAttribute("sortValue",sortValue);

	       List<UserInfoDTO> adminList = adminService.selectAdminList(paging);
	       System.out.println(adminList);
	       model.addAttribute("adminList", adminList);
	       }
		
		
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
		
		//비밀번호 암호화 작업
		userInfo.setPwd(encoder.encode(userInfo.getPwd()));
		boolean insertUser = userService.insertUser(userInfo);
		boolean insertAdmin = adminService.insertAdmin(userInfo);
		System.out.println("유저 insert 결과 : " + insertUser);
		
		return "admin/main/adminAdd";
	}
}
