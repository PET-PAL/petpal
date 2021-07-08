package com.nobanryeo.petpal.admin.mainpage.dao;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;

public interface AdminMainMapper {

	Integer selectMonthRevenue(AdminPageInfoDTO cat);

}
