package com.nobanryeo.petpal.user.mypage.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.BoradAndCommentDTO;
import com.nobanryeo.petpal.user.dto.MissingDTO;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.BoardManagementService;

@Controller
@RequestMapping("/user/mypage/*")
public class BoardManagementController {
	
	private BoardManagementService boardService;
	
	@Autowired
	public BoardManagementController(BoardManagementService boardService) {
		this.boardService = boardService;
	}
	
	@GetMapping("boardCommentList")
	public String boardList(
			Model model, BoradAndCommentDTO bcDTO
			, @RequestParam(value = "type", defaultValue =  "A") String type
			, @SessionAttribute UserInfoDTO loginUser
			, PageDTO page
			, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		bcDTO.setUserCode(loginUser.getCode());
		
		if(type.equals("A")) {
			
			System.out.println("들어온 타입 : " + type);
			System.out.println(bcDTO);
			
			
			
			int total = boardService.selectMissingCount(bcDTO);
			
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
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<MissingDTO> aList = boardService.selectMissing(map);
			System.out.println(aList);

		} else if(type.equals("B")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectAdoptCount(bcDTO);
			
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
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<AdoptDTO> bList = boardService.selectAdoptList(map);
			System.out.println(bList);
			
			model.addAttribute("paging", page);
			model.addAttribute("bList", bList);
			
		} else if(type.equals("C")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectAdoptCount(bcDTO);
			
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
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<AdoptDTO> bList = boardService.selectAdoptList(map);
			System.out.println(bList);
			
			model.addAttribute("paging", page);
			model.addAttribute("bList", bList);
		}
		
		
		
		
		
		
		return "user/mypage/boardCommentList";
	}
	
	
	
	
	
	
}
