package com.nobanryeo.petpal.user.adopt.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.user.adopt.service.ShareFreeService;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.ShareFreeDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

/**
 * @author judyh
 *
 */
@Controller
@RequestMapping("/user/*")
public class ShareFreeController {
	
	private ShareFreeService sharefreeService;

	@Autowired
	public ShareFreeController(ShareFreeService sharefreeService) {
		this.sharefreeService = sharefreeService;
	}
	
	
	/** 
	 * 페이징 처리 & 전체 셀렉트
	 * @param shareDTO
	 * @param model
	 * @param response
	 * @param request
	 * @param page
	 * @param nowPage
	 * @param cntPerPage
	 * @return
	 */
	@GetMapping("shareFree/list")
	public String shareFreeList(@ModelAttribute ShareFreeDTO shareDTO, Model model, HttpServletResponse response, HttpServletRequest request, PageDTO page
    		, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		Cookie[] cookies = request.getCookies();
		
		
		for(Cookie cookie : cookies) {
			if(!cookie.getName().equals("sharefree")) {
				
				cookie = new Cookie("sharefree",null); // 쿠키생성
				cookie.setComment("무료나눔 쿠키 생성");
				response.addCookie(cookie);
				
			}
		}
		int totalCount = sharefreeService.selectTotalCount();
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "12";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "12";
		}
    	
    	page = new PageDTO(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
    	System.out.println("현재 페이지 : " + page.getNowPage());
		System.out.println("마지막 페이지 : " + page.getEnd());
		System.out.println("페이지당 글 갯수 : " + page.getCntPerPage());
		

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sharefreeDTO", shareDTO);
		map.put("pageInfo", page);
		
    	
    	List<ShareFreeDTO> shareList = sharefreeService.selectShareFreeList(map);
    	
    	model.addAttribute("paging", page);
    	model.addAttribute("shareList", shareList);
    	
		return "user/community/shareList";
	}

}
