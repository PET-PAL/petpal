package com.nobanryeo.petpal.user.adopt.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.AdoptPictureManageDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;

public interface AdoptMapper {

	List<AdoptPictureManageDTO> selectAdoptList();

	int registerAdopt(AdoptDTO adopt);

	int registPicture(PictureDTO picture);

	int registSubTable();
	
}
