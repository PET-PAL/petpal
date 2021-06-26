package com.nobanryeo.petpal.admin.ad.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		// 광고 정보 조회
		List<AdAdminDTO> selectAdApproveDetail = adAdminService.selectAdApproveDetail(adCode);
		
		model.addAttribute("adApproveDetail", selectAdApproveDetail);
		
		// 심사 사유 조회
		List<AdAdminDTO> selectAdApproveDecision = adAdminService.selectAdApproveDecision(adCode);
				
		model.addAttribute("adApproveDecision", selectAdApproveDecision);
		
		System.out.println("심사 사유 : " + model.getAttribute("adApproveDecision"));
		
		return "admin/main/adApproveDetail";
		
	}
	
	// 광고심사 심사 입력
	@RequestMapping(value="adApproveDetail/adApproveInsert/{adCode}", method=RequestMethod.POST)
	public String adApproveInsert(Model model, 
								 HttpServletRequest req,
			                     @PathVariable("adCode") int adCode) {
		
		Map param = new HashMap();
		param.put("decisionReason", req.getParameter("decisionReason"));
		
		int stateCode = 0;
		
		if (req.getParameter("state").equals("광고 승인")) {
			stateCode = 2;
		} else if (req.getParameter("state").equals("광고 거절")) {
			stateCode = 3;
		}
		param.put("stateCode", stateCode);
		param.put("adCode", adCode);
		
		// 심사 사유 입력
		if(! adAdminService.insertAdApprove(param)) {
			System.out.println("심사 사유 입력 실패");
		}
		
		System.out.println("심사 사유 입력 성공");
		
		if(!adAdminService.updateAdApprove(param)) {
			System.out.println("심사 결과 업데이트 실패");
		}
		System.out.println("심사 결과 업데이트 성공");
		
		//심사사유 조회는 전체 심사 디테일 조회에서 해와야 하는 것 아닌가?
		
		return "redirect:/adApproveDetail/{adCode}";
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
	
	

	
}

