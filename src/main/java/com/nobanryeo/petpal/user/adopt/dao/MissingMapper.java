package com.nobanryeo.petpal.user.adopt.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.MissingPictureDTO;

public interface MissingMapper {

	List<MissingPictureDTO> selectMissingList();

}
