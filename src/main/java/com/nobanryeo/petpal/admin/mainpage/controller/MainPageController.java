package com.nobanryeo.petpal.admin.mainpage.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nobanryeo.petpal.admin.mainpage.service.MainPageService;

@Controller
@RequestMapping("/admin/*")
public class MainPageController {
	
	private MainPageService mainPageService;

	@Autowired
	public MainPageController(MainPageService mainPageService) {
		this.mainPageService = mainPageService;
	}
	
	// 관리자 메인페이지
	@RequestMapping("adminMainPage")
	public ModelAndView adApproveListReturning() {
		
		return new ModelAndView("admin/main/manager_main/chart");
	}
	
	@RequestMapping("adminMainPage/chart")
	@ResponseBody
	public String chart() {
		return mainPageService.getChartData().toJSONString();
	}
	
}
