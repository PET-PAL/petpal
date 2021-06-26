package com.nobanryeo.petpal.user.adopt.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdoptPictureManageDTO;

public interface AdoptMapper {

	List<AdoptPictureManageDTO> selectAdoptList();
	
}
