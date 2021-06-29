package com.nobanryeo.petpal.admin.ask.service;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.AskDTO;
import com.nobanryeo.petpal.admin.dto.AskDetailDTO;

public interface AskService {
	int selectListCount(AdminPageInfoDTO cat);

	List<AskDTO> selectAsk(AdminPageInfoDTO paging);
	AskDetailDTO selectListDetail(int boardCode);

	int selectSearchCount(AdminPageInfoDTO cat);

	List<AskDTO> selectSearchAsk(AdminPageInfoDTO paging);
}
