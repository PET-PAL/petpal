package com.nobanryeo.petpal.user.mypage.service;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;

public interface UserService {

	/**
	 * ID 중복체크 서비스
	 * @param userInfo
	 * @return true or false
	 */
	boolean checkId(UserInfoDTO userInfo);

	/**
	 * NickName 중복체크 서비스
	 * @param userInfo
	 * @return true or false
	 */
	boolean checkNick(UserInfoDTO userInfo);

	/**
	 * Email 중복체크 서비스
	 * @param userInfo
	 * @return true or false
	 */
	boolean checkEmail(UserInfoDTO userInfo);

	
	

	
	
}
