package com.nobanryeo.petpal.admin.ad.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nobanryeo.petpal.admin.ad.service.AdAdminService;
import com.nobanryeo.petpal.admin.dto.AdAdminDTO;

@Controller
@RequestMapping("/*")   
public class AdAdminController {
	
	private AdAdminService adAdminService;

	@Autowired
	public AdAdminController(AdAdminService adAdminService) {
		this.adAdminService = adAdminService;
	}
	
	// 광고심사 리스트
	@RequestMapping("adApproveList")
	public String adApproveListReturning(Model model) {
		
		// 서비스로 비즈니스 로직 실행 및 결과값을 받음
		List<AdAdminDTO> selectAdApproveList = adAdminService.selectAdApproveList();
		
		// model 객체에 view로 전달할 결과값을 key, value 형태로 넣어줌
		model.addAttribute("adApproveList", selectAdApproveList);
		
		// 전달할 페이지 설정
		return "admin/main/adApproveList";
	}
	
	// 광고심사 디테일
	@RequestMapping("adApproveDetail/{adCode}")
	public String adApproveDetailReturning(Model model, @PathVariable("adCode") int adCode) {
		
		List<AdAdminDTO> selectAdApproveDetail = adAdminService.selectAdApproveDetail(adCode);
		
		model.addAttribute("adApproveDetail", selectAdApproveDetail);
		
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
	
	
	@RequestMapping("reviewList")
    public String reviewList() {
       
       return "admin/main/reviewInfo";
    }
    
    @RequestMapping("reviewDetail")
    public String reviewDetail() {
       
       return "admin/main/reviewInfo_detail";
    }
    
    @RequestMapping("reportList")
    public String reportList() {
       
       return "admin/main/report";
    }
    
    @RequestMapping("reportDetail")
    public String reportDetail() {
       
       return "admin/main/report_detail";
    }
    
    @RequestMapping("askList")
    public String askList() {
       
       return "admin/main/ask_board";
    }
    
    @RequestMapping("askDetail")
    public String askDetail() {
       
       return "admin/main/ask_board_detail";
    }
    
    @RequestMapping("newsLetterList")
    public String newsLetterList() {
       
       return "admin/main/newsletterList";
    }
    
    
    
    
	
}

