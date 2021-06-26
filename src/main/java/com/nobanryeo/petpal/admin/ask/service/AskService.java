package com.nobanryeo.petpal.admin.ask.service;

import java.util.List;

import com.nobanryeo.petpal.admin.ask.dto.AskDTO;

public interface AskService {
	List<AskDTO> selectAsk(AskDTO ask);
}
