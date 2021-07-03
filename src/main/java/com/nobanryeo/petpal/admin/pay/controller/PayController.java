package com.nobanryeo.petpal.admin.pay.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.pay.service.PayAdminService;

@Controller
@RequestMapping("/admin/*")
public class PayController {

	private PayAdminService payAdminService;

	@Autowired
	public PayController(PayAdminService payAdminService) {
		this.payAdminService = payAdminService;
	}

	//광고결제관리 리스트
	@RequestMapping("payList")
	public String paymentManageListReturning(Model model, AdminPageInfoDTO paging,
			  @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage
			, @RequestParam(value="category", required=false)String category
			, @RequestParam(value="searchCondition", required=false)String searchCondition
            , @RequestParam(value="searchValue", required=false)String searchValue, HttpServletRequest request) {
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		List<AdAdminDTO> selectAdPayAllList = null;
		
		// 검색 안 했을 떄
	    if(searchValue == null) {
	    	
	    	AdminPageInfoDTO cat = new AdminPageInfoDTO(category);
	    	
	    	System.out.println("검색 안했을 때 cat 출력 : " + cat);
	    	
	    	// 총 개수
	    	int total = payAdminService.selectAdPayList(cat);
	    	
	    	System.out.println("총 개수 : " + total);
	    	
	    	// 페이징 정보
	    	paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), category);
	    	
//	    	// 광고 심사 리스트
	    	selectAdPayAllList = payAdminService.selectAdPayAllList(paging);
//	    	
//	    	System.out.println("검색 안 했을 때 검색결과 : " + selectAdPayAllList);
	    	
	    		// model 객체에 view로 전달할 결과값을 key, value 형태로 넣어줌
	    		model.addAttribute("paging", paging);
	    		model.addAttribute("payList", selectAdPayAllList);
	    		model.addAttribute("category", category);
	    		model.addAttribute("total", total);

	    } 
		
		return "admin/main/paymentManageList";
	}
	
	//세금계산서관리 리스트
	@RequestMapping("taxManageList")
	public String taxManageListReturning() {
		
		return "admin/main/taxManageList";
	}
	
	//광고결제관리 디테일
	@RequestMapping("paymentDetail")
	public String paymentDetailReturning() {
			
		return "admin/main/paymentDetail";
	}
	
	//세금계산서 디테일 (세금계산서 보기)
	@RequestMapping("taxbill")
	public String taxbillReturning() {
			
		return "admin/main/taxbill";
	}
}
