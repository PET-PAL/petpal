package com.nobanryeo.petpal.user.ad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.nobanryeo.petpal.user.ad.service.UserAdService;
import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.AdQnADTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

@Controller
@RequestMapping("/user/*")
public class UserAdController {

	private final UserAdService adService;
		
	@Autowired
	public UserAdController(UserAdService adService) {
			
		this.adService = adService;
	}
	
	/**
	 * 광고 신청 내역 조회
	 */
	@GetMapping("select/ad/list")
	public String selectAdList(Model model/* , @SessionAttribute UserInfoDTO loginUser */) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(1);			// 세션 연결하자~!
		
		model.addAttribute("adList", adService.selectAdList(adDTO));
		
		// 광고 클릭수 조회
		model.addAttribute("adPaymentList", adService.selectAdPaymentList(adDTO));
		
		return "user/mypage/adList";
	}
	
	/**
	 * 광고 신청 상세 내용 조회(광고 기본 정보)
	 */
	@GetMapping("select/adApply/detail")
	public String selectAdApplyDetail(Model model, @RequestParam int adCode) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(1);			// 세션 연결하자~!
		adDTO.setAdCode(adCode);
		
		model.addAttribute("adApplyDetail", adService.selectAdApplyDetail(adDTO));
		
		return "user/mypage/adApplyDetail";
	}
	
	/**
	 * 광고 신청 상세 내용 조회(상세 내용)
	 */
	@GetMapping("select/adApply/detail2")
	public String selectAdApplyDetail2(Model model, @RequestParam int adCode) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(1);			// 세션 연결하자~!
		adDTO.setAdCode(adCode);
		
		model.addAttribute("adApplyDetail", adService.selectAdApplyDetail(adDTO));
		
		return "user/mypage/adApplyDetail2";
	}
	
	/**
	 * 광고문의 페이지로 이동
	 */
	@RequestMapping("write/adQnA")
	public String writeAdQnA(Model model, @SessionAttribute UserInfoDTO loginUser) {
		
		model.addAttribute("writeAdQnA", loginUser.getNikname());
		
		return "user/mypage/adQna";
	}
	
	@PostMapping("insert/adQnA")
	public String insertAdQnA(@ModelAttribute AdQnADTO adQnA, @SessionAttribute UserInfoDTO loginUser) {
		
		return "redirect:/";
	}

}
