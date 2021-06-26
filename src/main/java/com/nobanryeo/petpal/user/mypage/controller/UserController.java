package com.nobanryeo.petpal.user.mypage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.UserService;

@Controller
@RequestMapping(value = "/user/*", method = {RequestMethod.GET, RequestMethod.POST})
public class UserController {

	private final UserService userService;
	private final BCryptPasswordEncoder passwordEncoder;

	@Autowired 
	public UserController(UserService userService,BCryptPasswordEncoder passwordEncoder) { 
		this.userService = userService; 
		this.passwordEncoder = passwordEncoder;
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
	public String registIdChk(@ModelAttribute UserInfoDTO userInfo, HttpServletRequest requestm, @RequestParam("userId") String userId) {

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
	
	@PostMapping(value = "registNickChk", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String registNickChk(@ModelAttribute UserInfoDTO userInfo, HttpServletRequest requestm, @RequestParam("userNickName") String userNickName) {

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
	
	@PostMapping(value = "registEmailChk", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String registEmailChk(@ModelAttribute UserInfoDTO userInfo, HttpServletRequest requestm, @RequestParam("userEmail") String userEmail) {
		
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
	
	

}


















