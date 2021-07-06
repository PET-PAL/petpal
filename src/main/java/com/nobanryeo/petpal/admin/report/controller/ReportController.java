package com.nobanryeo.petpal.admin.report.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.DecisionDTO;
import com.nobanryeo.petpal.admin.dto.ReportDTO;
import com.nobanryeo.petpal.admin.dto.ReportDetailDTO;
import com.nobanryeo.petpal.admin.report.service.ReportService;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

@Controller
@RequestMapping("/admin/*")  
public class ReportController {
	
	private final ReportService reportService;
	
	@Autowired
	public ReportController(ReportService reportService) {
		this.reportService = reportService;
	}
	
	//댓글쪽만 손보면 ok
    @RequestMapping("reportList")
    public String reportList(Model model , AdminPageInfoDTO paging,
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
    	if(category == null) {
    		category = "0";
    	}
    	if(searchValue == null) {
    		int total = 0;
        	AdminPageInfoDTO cat = new AdminPageInfoDTO(category);
      	    total = reportService.selectReportCount(cat);
        	paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),category,sortValue);
        	model.addAttribute("paging", paging);
            model.addAttribute("total",total);
            model.addAttribute("category", category);
            model.addAttribute("sortValue",sortValue);
            
            
            List<ReportDTO> reportList = reportService.selectReport(paging);
        	System.out.println(reportList);
            model.addAttribute("reportList", reportList);
    	}else {
    		int total = 0;
        	AdminPageInfoDTO cat = new AdminPageInfoDTO(category,searchCondition,searchValue);
      	    total = reportService.selectReportCount(cat);
        	paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),category,searchCondition,searchValue,sortValue);
        	model.addAttribute("paging", paging);
            model.addAttribute("total",total);
            model.addAttribute("category", category);
            model.addAttribute("sortValue",sortValue);
            model.addAttribute("searchCondition", searchCondition);
            model.addAttribute("searchValue", searchValue);
            
            List<ReportDTO> reportList = reportService.selectReport(paging);
        	System.out.println(reportList);
            model.addAttribute("reportList", reportList);
    		
    		
    	}
    	

       return "admin/main/report";
    }
    
    @RequestMapping("reportDetail")
    public String reportDetail(Model model, @RequestParam(value="category", required=false)String category
    		,@RequestParam(value="reportCode", required=false)String reportCode) {
       
       if(category == null) {
   		category = "0";
   	}
       Map param = new HashMap();
       
       param.put("reportCode", reportCode);
       param.put("category", category);
       ReportDetailDTO reportDetail = reportService.selectReportDetail(param);
       System.out.println(reportDetail);
       
       model.addAttribute("reportDetail",reportDetail);
       model.addAttribute("category",category);
       model.addAttribute("reportCode",reportCode);


       return "admin/main/report_detail";
    }
    
    
    @RequestMapping("updateDecision")
    public String updateDecision(Model model
    		,@RequestParam(value="reportCode", required=false)String reportCode
    		,@RequestParam(value="decision", required=false)String decision
    		,@RequestParam(value="message", required=false)String message
    		,@RequestParam(value="category", required=false)String category
    		,@RequestParam(value="boardCode", required=false)String boardCode
    		,HttpServletRequest request) {
       
    	HttpSession session = request.getSession();
		session.getAttribute("loginUser");
	    System.out.println("세션 정보 : " + session);
	    UserInfoDTO userInfo = (UserInfoDTO) session.getAttribute("loginUser");
	    int code = userInfo.getCode();
	    
	    System.out.println("관리자 유저 코드 : " + code);
	    
	    System.out.println("reportCode"+reportCode);
	    System.out.println("decision"+decision);
	    //카테고리 7일때는 쿼리문 다른거 줘야함 중요
       if(decision.equals("2")) { //승인
    	   System.out.println("승인됨ㅇㅇㅇㅇ");
    	   System.out.println("boardCode"+boardCode);
    	   
    	   DecisionDTO decisionData = new DecisionDTO(message, Integer.parseInt(decision), code, Integer.parseInt(reportCode),category,boardCode);
    	   if(reportService.insertDecision(decisionData) == true) {
    		   System.out.println("성공");
    		   if(reportService.updateReport(decisionData) == true) {
    			   System.out.println("ㄹㅇ성공");
    			   //글 블라인드 처리
    			   if(reportService.updateBoardBlind(decisionData) == true)
    			   {
    				   System.out.println("블라인드 성공");
    				 //유저 밴카운트 +1
    				   if(reportService.updateUserBan(decisionData) == true) {
    					   System.out.println("밴 성공");
    				   }else {
        				   System.out.println("밴 실패");

        			   }
    				   
    			   }else {
    				   System.out.println("블라인드 실패");

    			   }
    			   
    			   
    			   
    			   
    		   }else {
    			   System.out.println("update실패");
    		   }
    	   }else {
    		   System.out.println("실패");

    	   }
    	   
       }else { //거절
    	   //심사여부에 insert
    	   
    	   DecisionDTO decisionData = new DecisionDTO(message, Integer.parseInt(decision), code, Integer.parseInt(reportCode),category,boardCode);
    	   if(reportService.insertDecision(decisionData) == true) {
    		   System.out.println("성공");
    		   if(reportService.updateReport(decisionData) == true) {
    			   System.out.println("ㄹㅇ성공");
    		   }else {
    			   System.out.println("update실패");
    		   }
    	   }else {
    		   System.out.println("실패");

    	   }
       }
	    
	    
       model.addAttribute("reportCode",reportCode);
       model.addAttribute("category",category);

       return "redirect:/admin/reportDetail?reportCode={reportCode}&category={category}";
    }
}
