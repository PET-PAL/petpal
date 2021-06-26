package com.nobanryeo.petpal.admin.ask.dao;

import java.util.List;

import com.nobanryeo.petpal.admin.ask.dto.AskDTO;

public interface AskMapper {
	List<AskDTO> selectList(AskDTO ask);
}
