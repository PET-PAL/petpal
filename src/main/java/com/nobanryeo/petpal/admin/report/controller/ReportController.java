package com.nobanryeo.petpal.admin.report.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")  
public class ReportController {
    @RequestMapping("reportList")
    public String reportList() {
       
       return "admin/main/report";
    }
    
    @RequestMapping("reportDetail")
    public String reportDetail() {
       
       return "admin/main/report_detail";
    }
}
