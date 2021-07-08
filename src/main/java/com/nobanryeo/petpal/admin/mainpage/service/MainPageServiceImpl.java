package com.nobanryeo.petpal.admin.mainpage.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.mainpage.dao.AdminMainMapper;

@Service
public class MainPageServiceImpl implements MainPageService{

	// 매퍼 전역변수
	private AdminMainMapper adminMainMapper;
	
	// 생성자를 통한 DI
	@Autowired
	public MainPageServiceImpl (AdminMainMapper adminMainMapper) {
		this.adminMainMapper = adminMainMapper;
	}

	@Override
	public JSONObject getChartData() {
		
		int month1 = 0;
		List<Integer> revenues = new ArrayList<Integer>();
		
		// 5, 6, 7, 8월 월별 매출액
		for (month1 = 5; month1 <= 8; month1 ++) {
			
			int fullMonth = Integer.parseInt("20210" + month1 + "01");
			
			AdminPageInfoDTO cat = new AdminPageInfoDTO(fullMonth);
			
			// 월별 매출액
			Integer totalMonth = adminMainMapper.selectMonthRevenue(cat);
			
			if(totalMonth == null) {
				totalMonth = 0;
			}
			
			// 월별 매출액을 리스트에 넣어주기
			revenues.add(totalMonth);
			
		}
		
		
		// 리턴할 json 객체
		JSONObject data = new JSONObject();
		
		// json의 컬럼 객체
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();
		
		// json 배열 객체, 배열에 저장할 때엔 JSONArray() 사용
		JSONArray title = new JSONArray();
		col1.put("label", "Month");
		col1.put("type", "number");
		col2.put("label", "Revenue");
		col2.put("type", "number");
		
		
		// 테이블행에 컬럼 추가
		title.add(col1);
		title.add(col2);
		
		// json 객체에 타이틀행 추가
		data.put("cols", title); //{"cols" : [{"label" : "Month","type":"number"}, {"label" : "Revenue", "type" : "number"}]}
		
		JSONArray body = new JSONArray(); // json 배열 사용하기 위해 객체 생성
		
		 // 월
	    JSONObject month = new JSONObject();

	         
	    // 매출액
	    JSONObject revenue = new JSONObject();
	    for (int i = 0; i <= 3; i++) {
	    	month.put("v", i+5);
	    	
	        revenue.put("v", revenues.get(i));
	        
	        System.out.println("revenue : " + revenue);
	         
	        JSONArray row = new JSONArray();
	         
	        row.add(month.get("v")); // 월을 row에 저장
	        row.add(revenue.get("v")); // 매출엑을 row에 저장
	         
	        JSONObject cel1 = new JSONObject();
	        cel1.put("c", row); // cel1 2개를 합쳐서 "c"라는 이름으로 추가
	        body.add(cel1);
	         
	        data.put("rows", body); // data에 body를 저장하고 이름을 rows라고 함
	    }
		
		
		System.out.println("data : " + data);
		
		return data;  // 이 데이터가 넘어가면  json 형식으로 넘어가서 json이 만들어짐
	}
	
	
	
}
