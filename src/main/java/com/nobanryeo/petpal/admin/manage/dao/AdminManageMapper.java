package com.nobanryeo.petpal.admin.manage.dao;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

public interface AdminManageMapper {
	int selectListCount(AdminPageInfoDTO cat);

	List<UserInfoDTO> selectAdminList(AdminPageInfoDTO paging);
	int insertAdmin(UserInfoDTO userInfo);
}
