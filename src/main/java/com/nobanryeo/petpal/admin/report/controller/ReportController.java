package com.nobanryeo.petpal.admin.report.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.ReportDTO;
import com.nobanryeo.petpal.admin.dto.ReportDetailDTO;
import com.nobanryeo.petpal.admin.report.service.ReportService;

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
       return "admin/main/report_detail";
    }
}
