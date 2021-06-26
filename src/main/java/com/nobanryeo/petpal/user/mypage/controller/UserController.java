package com.nobanryeo.petpal.user.mypage.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.UserService;

@Controller
@RequestMapping(value = "/user/*")
public class UserController {

	private final UserService userService;
	private final BCryptPasswordEncoder encoder;

	@Autowired 
	public UserController(UserService userService,BCryptPasswordEncoder encoder) { 
		this.userService = userService; 
		this.encoder = encoder;
	}
	 
	@GetMapping("login")
	public String LoginForm() {
		return "common/login";
	}

	@GetMapping("regist")
	public String registForm() {
		return "common/regist";
	}


	/**
	 * ID 중복확인 컨트롤러
	 * @param userInfo
	 * @param requestm
	 * @param userId
	 * @return success or fail
	 */
	@PostMapping(value = "registIdChk", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String registIdChk(@ModelAttribute UserInfoDTO userInfo, @RequestParam("userId") String userId) {

		// 아이디 중복체크
		
		System.out.println("userId : " + userId);
		
		userInfo.setId(userId);
		
		boolean notOverId = userService.checkId(userInfo);
		System.out.println("notOverId : " + notOverId);
		
		String result = "";
		if(notOverId == true) {
			result = "success";
		} else {
			result = "fail";
		}
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(result);
		
	}
	
	/**
	 * NickName 중복확인 컨트롤러
	 * @param userInfo
	 * @param userNickName
	 * @return
	 */
	@PostMapping(value = "registNickChk", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String registNickChk(@ModelAttribute UserInfoDTO userInfo, @RequestParam("userNickName") String userNickName) {

		// 닉네임 중복체크
		
		System.out.println("userNickName : " + userNickName);
		
		userInfo.setNikname(userNickName);
		
		boolean notOverNick = userService.checkNick(userInfo);
		System.out.println("notOverNick : " + notOverNick);
		
		String result = "";
		if(notOverNick == true) {
			result = "success";
		} else {
			result = "fail";
		}
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(result);
		
	}
	
	/**
	 * Email 중복확인 컨트롤러
	 * @param userInfo
	 * @param userEmail
	 * @return
	 */
	@PostMapping(value = "registEmailChk", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String registEmailChk(@ModelAttribute UserInfoDTO userInfo, @RequestParam("userEmail") String userEmail) {
		
		// 이메일 중복체크
		System.out.println("userEmail : " + userEmail);
		
		userInfo.setEmail(userEmail);
		
		boolean notOverEmail = userService.checkEmail(userInfo);
		System.out.println("notOverEmail : " + notOverEmail);
		
		String result = "";
		if(notOverEmail == true) {
			result = "success";
		} else {
			result = "fail";
		}
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(result);
		
	}
	
	
	 /**
	 * 회원가입 컨트롤러
	 * @param userInfo 유저정보
	 * @param request 
	 * @param rttr success message
	 * @return 
	 */
	@PostMapping("regist") 
	 public String registInsert(@ModelAttribute UserInfoDTO userInfo, HttpServletRequest request, RedirectAttributes rttr) {
	 
		System.out.println(userInfo);
		
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userNickName = request.getParameter("userNickName");
		String userPwd = request.getParameter("userPwd");
		String userPhone = request.getParameter("userPhone");
		String userEmail = request.getParameter("userEmail");
		String newsletter = request.getParameter("newsletter");
		String notion = request.getParameter("notion");
		

		userInfo.setId(userId);
		userInfo.setName(userName);
		userInfo.setNikname(userNickName);
		userInfo.setPwd(userPwd);
		userInfo.setPwd(encoder.encode(userInfo.getPwd()));
		userInfo.setPhone(userPhone);
		userInfo.setEmail(userEmail);
		userInfo.setEmailYn(newsletter);
		userInfo.setReplyYn(notion);
		
		
		System.out.println(userInfo);
		
		boolean insertUser = userService.insertUser(userInfo);
		
		System.out.println("유저 insert 결과 : " + insertUser);
			
		if(insertUser == true) {
			rttr.addFlashAttribute("message", "회원가입에 성공하셨습니다!\n로그인 후, 펫팔의 더 다양한 기능을 이용해보세요!");
		}
		
		return "redirect:/user/login"; 
	 
	 }

	
	
	@PostMapping("login")
	public String userLogin(@ModelAttribute UserInfoDTO userInfo, HttpServletRequest request) {
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		System.out.println("입력된 아이디 : " + userId);
		System.out.println("입력된 비밀번호 : " + userPwd);
		
		UserInfoDTO loginUser = userService.selectUser(userInfo);
		
		
		return "redirect:/";
	}
	

}


















