package com.nobanryeo.petpal.admin.ask.dao;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AskDTO;
import com.nobanryeo.petpal.admin.dto.AskDetailDTO;

public interface AskMapper {
	List<AskDTO> selectList();
	AskDetailDTO selectListDetail(int boardCode);
}
