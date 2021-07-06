package com.nobanryeo.petpal.admin.pay.controller;

import java.util.Calendar;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.pay.service.PayAdminService;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

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
	    	
	    	// 광고 심사 리스트
	    	selectAdPayAllList = payAdminService.selectAdPayAllList(paging);
	    	
	    	// 현재 페이지에 보여지는 게시물 갯수 
	    	int cntNowPage = payAdminService.selectNumber(paging);
	    	
	    	// 청구일자
	    	for(int i = 0; i < cntNowPage; i++) {
	    		
	    		if( selectAdPayAllList.get(i).getPayDate1st() != null && selectAdPayAllList.get(i).getCancelApplyDate() == null) {
	    			selectAdPayAllList.get(i).setPayUntilDate(selectAdPayAllList.get(i).getPostEndDate());
	    		} else if( selectAdPayAllList.get(i).getPayDate1st() == null ) {
	    			selectAdPayAllList.get(i).setPayUntilDate(selectAdPayAllList.get(i).getDecision().getDecisionDate());
	    		} else if( selectAdPayAllList.get(i).getPayDate1st() != null && !selectAdPayAllList.get(i).getCancelApplyDate().equals(null)){
	    			selectAdPayAllList.get(i).setPayUntilDate(selectAdPayAllList.get(i).getCancelApplyDate());
	    		}
	    		
	    	}
	    	
	    	Calendar cal = Calendar.getInstance();
	    	
	    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
	    	
	    	String day = sdf.format(cal.getTime());
	    	
	    	SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	    	
	    	Date today = null;
	    	try {
				today = format.parse(day);
			} catch (ParseException e) {
				e.printStackTrace();
			}
	    	    	
	    	
	    	// 납부상태
	    	for(int j = 0; j < cntNowPage; j++) {
	    		
	    		Date de2 = null;
	    		Date po2 = null;
	    		
	    		 
	    		// 승인일  - 날짜 형식에 맞게 형변환
	    		if(selectAdPayAllList.get(j).getDecision().getDecisionDate() != null ) {
	    			String de1 = sdf.format(selectAdPayAllList.get(j).getDecision().getDecisionDate().getTime());
	    			
	    			try {
						de2 = format.parse(de1);
					} catch (ParseException e) {
						e.printStackTrace();
					}
	    		}
	    		
	    		
	    		// 종료일 - 날짜 형식에 맞게 형변환
	    		if(selectAdPayAllList.get(j).getPostEndDate() != null) {
	    			String po1 = sdf.format(selectAdPayAllList.get(j).getDecision().getDecisionDate().getTime());
	    			
	    			try {
						po2 = format.parse(po1);
					} catch (ParseException e) {
						e.printStackTrace();
					}
	    		}
	    		
	    		if(selectAdPayAllList.get(j).getPayDate1st() == null && Math.abs((today.getTime() - de2.getTime())/ (24*60*60*1000)) <= 3
	    				&& selectAdPayAllList.get(j).getCancelApplyDate() == null ) {
	    			selectAdPayAllList.get(j).setPayStatus("납부전");
	    			System.out.println("차이1 : " + (today.getTime() - de2.getTime())/ (24*60*60*1000));

	    		} else if (selectAdPayAllList.get(j).getPayDate1st() != null && Math.abs((today.getTime() - po2.getTime())/ (24*60*60*1000)) <= 7
	    				&& selectAdPayAllList.get(j).getPayDate2nd() == null ) {
	    			selectAdPayAllList.get(j).setPayStatus("납부전");
	    			System.out.println("차이2 : " + (today.getTime() - po2.getTime())/ (24*60*60*1000));
	    			
	    		} else if(selectAdPayAllList.get(j).getPayDate1st() != null && selectAdPayAllList.get(j).getPayDate2nd() == null ) {
	    			selectAdPayAllList.get(j).setPayStatus("납부전");
	    			
	    		} else if (selectAdPayAllList.get(j).getPayDate1st() == null && selectAdPayAllList.get(j).getCancelApplyDate() != null) {
	    			selectAdPayAllList.get(j).setPayStatus("납부취소");
	    			
	    		} else if (selectAdPayAllList.get(j).getPayDate1st() != null && selectAdPayAllList.get(j).getPayDate2nd() != null ||
	    				selectAdPayAllList.get(j).getPayDate1st() != null && selectAdPayAllList.get(j).getCancelApplyDate() != null) {
	    			selectAdPayAllList.get(j).setPayStatus("납부완료");
	    			
	    		} else {
	    			selectAdPayAllList.get(j).setPayStatus("납부초과");
	    		}
	    		
	    		
	    		System.out.println("납부 상태 : " + selectAdPayAllList.get(j).getPayStatus());
	    	}
	    	
	    	
         	System.out.println("검색 안 했을 때 검색결과 : " + selectAdPayAllList);
	    	
	    		// model 객체에 view로 전달할 결과값을 key, value 형태로 넣어줌
	    		model.addAttribute("paging", paging);
	    		model.addAttribute("payList", selectAdPayAllList);
	    		model.addAttribute("category", category);
	    		model.addAttribute("total", total);

	    } else {
	    	
	    // 검색했을 때
	    	AdminPageInfoDTO cat = new AdminPageInfoDTO(category,searchValue);
			
			System.out.println("검색했을 때 cat 출력 : " + cat);
			System.out.println(cat.getSearchValue());
			
			// 카테고리
	        System.out.println("카테고리 : " + category);
	        // 검색값
	        System.out.println("검색값 : " + searchValue);
			
			// 총 개수
			int total = payAdminService.searchAdPayList(cat);
	         
	        System.out.println("총 개수 : " + total);
	        
	        paging = new AdminPageInfoDTO(Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), category, searchValue, total);
			
			// 광고 심사 리스트
			List<AdAdminDTO> searchAdPayAllList = payAdminService.searchAdPayAllList(paging);
			
			System.out.println("검색 했을 때 검색결과1 : " + searchAdPayAllList);
			System.out.println("총 개수1 : " + total);
			System.out.println("검색값1 : " + searchValue);
			System.out.println("탭메뉴1 : " + category);
			System.out.println("검색했을 때 cat 출력1 : " + cat);
			System.out.println("paging: " + paging);
		
			// model 객체에 view로 전달할 결과값을 key, value 형태로 넣어줌
			model.addAttribute("paging", paging);
			model.addAttribute("payList", searchAdPayAllList);
			model.addAttribute("category", category);
			model.addAttribute("total", total);
	    	
	    }
		
		return "admin/main/paymentManageList";
	}
	
	
	//광고결제관리 디테일
	@RequestMapping(value= "paymentDetail/{adCode}", method=RequestMethod.GET)
	public String paymentDetailReturning(Model model, @PathVariable("adCode") int adCode) {
		
		System.out.println("adCode : " + adCode);
		
		// 광고결제관리 정보 조회
		List<AdAdminDTO> selectPayAdminDetail = payAdminService.selectPayAdminDetail(adCode);
		
		System.out.println("조회된 광고결제관리 디테일 : " + selectPayAdminDetail);
		
		model.addAttribute("payDetail",selectPayAdminDetail);
		
		return "admin/main/paymentDetail";
	}
	
	//세금계산서관리 리스트
	@RequestMapping("taxManageList")
	public String taxManageListReturning(Model model, AdminPageInfoDTO paging,
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
		
		// 검색 안 했을 떄
		if(searchValue == null) {
			
			AdminPageInfoDTO cat = new AdminPageInfoDTO(category);
			
			System.out.println("검색 안했을 때 cat 출력 : " + cat);
			
			// 총 개수
			int total = payAdminService.selectTaxList(cat);
			
			System.out.println("총 개수 : " + total);
			
			// 페이징 정보
			paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), category);
			
			// 세금계산서 리스트
			List<AdAdminDTO> selectTaxAllList = payAdminService.selectTaxAllList(paging);
			
			// 세금계산서 현재 페이지 게시물 갯수 조회
			int cntNowPage = payAdminService.selectTaxNumber(paging);
			
			for (int i = 0; i < cntNowPage; i++) {
				
				if(selectTaxAllList.get(i).getCancelApplyDate() != null && selectTaxAllList.get(i).getCalApplyDate() > 7) {
					selectTaxAllList.get(i).setPayStatus("납부완료");
				} else if(selectTaxAllList.get(i).getCancelApplyDate() == null && selectTaxAllList.get(i).getCalEndDate() > 7) {
					selectTaxAllList.get(i).setPayStatus("납부완료");
				} else {
					selectTaxAllList.get(i).setPayStatus("납부전");
				}
				
				System.out.println(selectTaxAllList.get(i).getPayStatus());
			}
			
			
			System.out.println("검색 안 했을 때 검색결과 : " + selectTaxAllList);
			
			// model 객체에 view로 전달할 결과값을 key, value 형태로 넣어줌
			model.addAttribute("paging", paging);
			model.addAttribute("taxList", selectTaxAllList);
			model.addAttribute("category", category);
			model.addAttribute("total", total);
					
				}
		
		

		
		return "admin/main/taxManageList";
	}
	
	
	//세금계산서 디테일 (세금계산서 보기)
	@RequestMapping(value="taxManageList/{adCode}", method=RequestMethod.GET)
	public String taxbillReturning(Model model, @PathVariable("adCode") int adCode) {
		
		// 광고관리 정보 조회
		List<AdAdminDTO> selectTaxDetail = payAdminService.selectTaxDetail(adCode);
				
		System.out.println("조회된 광고 관리 디테일 : " + selectTaxDetail);
				
		model.addAttribute("adApprove", selectTaxDetail);
		
		return "admin/main/taxbill";
	}
}
