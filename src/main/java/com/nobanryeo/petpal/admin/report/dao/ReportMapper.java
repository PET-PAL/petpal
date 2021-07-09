package com.nobanryeo.petpal.admin.report.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.DecisionDTO;
import com.nobanryeo.petpal.admin.dto.ReportDTO;
import com.nobanryeo.petpal.admin.dto.ReportDetailDTO;
import com.nobanryeo.petpal.admin.dto.reportPopupDTO;

public interface ReportMapper {
	int selectReportCount (AdminPageInfoDTO cat);
	List<ReportDTO> selectReport(AdminPageInfoDTO paging);
	ReportDetailDTO selectReportDetail(Map param);
	int insertDecision(DecisionDTO decisionData);
	int updateReport(DecisionDTO decisionData);
	int updateBoardBlind(DecisionDTO decisionData);
	int updateUserBan(DecisionDTO decisionData);
	reportPopupDTO selectReportPopup(Map param);

}
