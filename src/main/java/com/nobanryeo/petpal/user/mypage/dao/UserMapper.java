package com.nobanryeo.petpal.user.mypage.dao;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;

public interface UserMapper {
	/**
	 * ID 중복체크  Mapper
	 * @param userInfo
	 * @return Count(*) "1"(false) or "0"(true)
	 */
	String selectUserIdcheck(UserInfoDTO userInfo);

	/**
	 * Nick 중복체크 Mapper
	 * @param userInfo
	 * @return Count(*) "1"(false) or "0"(true)
	 */
	String selectUserNickcheck(UserInfoDTO userInfo);

	/**
	 * Email 중복체크 Mapper
	 * @param userInfo
	 * @return Count(*) "1"(false) or "0"(true)
	 */
	String selectUserEmailcheck(UserInfoDTO userInfo);
}
