package com.nobanryeo.petpal.admin.pay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class PayController {

	//광고결제관리 리스트
	@RequestMapping("paymentManageList")
	public String paymentManageListReturning() {
		
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
