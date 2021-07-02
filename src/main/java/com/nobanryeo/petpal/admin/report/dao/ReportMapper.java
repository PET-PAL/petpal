package com.nobanryeo.petpal.admin.report.dao;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.ReportDTO;

public interface ReportMapper {
	int selectReportCount (AdminPageInfoDTO cat);
	List<ReportDTO> selectReport(AdminPageInfoDTO paging);
	
}
