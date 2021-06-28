package com.nobanryeo.petpal.admin.ask.dao;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.AskDTO;
import com.nobanryeo.petpal.admin.dto.AskDetailDTO;

public interface AskMapper {
	int selectListCount();
	List<AskDTO> selectList(AdminPageInfoDTO paging);
	AskDetailDTO selectListDetail(int boardCode);
}
