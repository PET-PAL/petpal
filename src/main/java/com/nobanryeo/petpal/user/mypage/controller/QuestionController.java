package com.nobanryeo.petpal.user.mypage.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nobanryeo.petpal.user.dto.AdQnADTO;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.ReportManageDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.QuestionService;

@Controller
@RequestMapping("/user/mypage/*")
public class QuestionController {
	
	private final QuestionService questionService;
	
	@Autowired
	public QuestionController(QuestionService questionService) {
		this.questionService = questionService;
	}

	/**
	 * 문의내역 리스트
	 * @param qnaDTO
	 * @param loginUser
	 * @param page
	 * @param model
	 * @param nowPage
	 * @param cntPerPage
	 * @return
	 */
	@GetMapping("qnaList")
	public String qnaReportList(@ModelAttribute AdQnADTO qnaDTO, @SessionAttribute UserInfoDTO loginUser
			, PageDTO page , Model model
			, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage
			, @RequestParam(value="qna", required = false)String qna) {
		
		System.out.println("qna? : " + qna);
		
		qnaDTO.setUserCode(loginUser.getCode());
		
		System.out.println("문의 신고 컨트롤러 도착");
		System.out.println("현재 조회할 로그인중인 수신자 유저코드 : " + qnaDTO.getUserCode());
		
		int code = qnaDTO.getUserCode();
		
		//문의내역 리스트 조회
		int total = questionService.selectQnACount(code);
		
		System.out.println("토탈 카운트 : " + total);
		System.out.println("nowPage : " + nowPage);
		System.out.println("cntPerPage : " + cntPerPage);
		
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "10";
		}
		
		page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		System.out.println("문의 현재 페이지 : " + page.getNowPage());
		System.out.println("문의 마지막 페이지 : " + page.getEnd());
		System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("qnaDTO", qnaDTO);
		map.put("pageInfo", page);
		
		List<AdQnADTO> qnaList = questionService.selectQnAList(map);
		
		System.out.println("문의 리스트 : " + qnaList);
		
		model.addAttribute("paging", page);
		model.addAttribute("qnaList", qnaList);
		
		
	    return "user/mypage/qnaReportList";
	}
	
	@GetMapping("qnaRepostList/qnaDetail")
	public String qnaDetail(@RequestParam int boardCode, Model model) {
		
		System.out.println("넘어온 문의 코드 : " + boardCode);
		
		AdQnADTO qnA = questionService.selectQnADetail(boardCode);
		
		System.out.println("상세정보 : " + qnA);
		
		model.addAttribute("qnA", qnA);
		
		
		return "user/mypage/qnaDetail";
	}
	
	
	@GetMapping(value="reportList")
	public ModelAndView reportList(@ModelAttribute ReportManageDTO reportDTO, @SessionAttribute UserInfoDTO loginUser
			, PageDTO page , HttpServletResponse response
			, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage
			, ModelAndView mv) throws JsonProcessingException {
		
		response.setContentType("application/json; charset=UTF-8");
		
		reportDTO.setUserCode(loginUser.getCode());
		
		int code = reportDTO.getUserCode();
		
		//신고내역 리스트 조회
		int total = questionService.selectReportCount(code);
			
		System.out.println("신고내역 카운트 : " + total);
			
		System.out.println("nowPage : " + nowPage);
		System.out.println("cntPerPage : " + cntPerPage);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "10";
		}
		
		page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
		System.out.println("신고 현재 페이지 : " + page.getNowPage());
		System.out.println("신고 마지막 페이지 : " + page.getEnd());
		System.out.println("신고 페이지당 글 갯수 : " + page.getCntPerPage());
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("reportDTO", reportDTO);
		map.put("pageInfo", page);
		
		List<ReportManageDTO> reportList = questionService.selectReportList(map);
		
		ObjectMapper mapper = new ObjectMapper();
		
		System.out.println("신고내역 리스트 : " + reportList);
		
		mv.addObject("page", page);
		mv.addObject("reportList", mapper.writeValueAsString(reportList));
		mv.setViewName("jsonView");
		
	    return mv;
		
	}
	
	
	
	
}




















