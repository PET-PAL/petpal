package com.nobanryeo.petpal.admin.pay.service;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;

public interface PayAdminService {

	int selectAdPayList(AdminPageInfoDTO cat);

	List<AdAdminDTO> selectAdPayAllList(AdminPageInfoDTO paging);

}
