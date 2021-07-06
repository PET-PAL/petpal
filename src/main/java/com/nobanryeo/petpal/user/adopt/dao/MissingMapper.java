package com.nobanryeo.petpal.user.adopt.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdoptReplyDTO;
import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.MissingDTO;
import com.nobanryeo.petpal.user.dto.MissingPictureDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;

public interface MissingMapper {

	List<MissingPictureDTO> selectMissingList();

	int insertMissingInfo(MissingDTO missing);

	int insertPicture(PictureDTO picture);

	int insertMidTab(PictureDTO picture);

	MissingDTO selectMissingDetail(int code);

	List<PictureDTO> selectMissingDetailPicture(int code);

	List<AdoptReplyDTO> selectAllMissingReply(int code);

	int insertReply(AdoptReplyDTO replyDTO);

	int insertReplyBoard(AdoptReplyDTO replyDTO);

	int insertMessage(MessageTableDTO messageDTO);

}
