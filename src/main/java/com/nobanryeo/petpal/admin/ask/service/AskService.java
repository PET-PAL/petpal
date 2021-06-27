package com.nobanryeo.petpal.admin.ask.service;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AskDTO;
import com.nobanryeo.petpal.admin.dto.AskDetailDTO;

public interface AskService {
	List<AskDTO> selectAsk();
	AskDetailDTO selectListDetail(int boardCode);
}
