package com.nobanryeo.petpal.user.mypage.dao;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;

public interface UserMapper {
	String selectUserIdcheck(UserInfoDTO userInfo);
}
