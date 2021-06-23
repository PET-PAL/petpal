<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블랙리스트</title>
<style>
.table > thead > tr > th{
	 font-size:17px;

}
.table > tbody > tr > td{
	text-align: center;
	 padding-top: 15px !important;
	 padding-bottom: -15px !important;
	 font-size:17px;
	 
}

select { -webkit-appearance: none; /* 네이티브 외형 감추기 */
-moz-appearance: none; appearance: none; 
background: url(이미지 경로) no-repeat 95% 50%; /* 화살표 모양의 이미지 */ } 
/* IE 10, 11의 네이티브 화살표 숨기기 */ 

select::-ms-expand { display: none; }

select { width: 150px; /* 원하는 너비설정 */
 padding: .8em .5em; /* 여백으로 높이 설정 */ 
 font-family: inherit; /* 폰트 상속 */ 
 background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
 border: 1px solid #999; 
 border-radius: 0px; /* iOS 둥근모서리 제거 */ 
 -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
 -moz-appearance: none; 
 appearance: none; }
 
select option{
  text-align:center;}

  td > .send_btn {
                background-color: red; 
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
            }
</style>
 <!-- summerNote -->
    	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
	<jsp:include page="../../admin/common/header.jsp"></jsp:include> 
	
	 <section id="product" class="product">

		<div class="container">		
				<div class="row">
					 <div class="col-md-20">
					 		
                             <!-- Nav tabs -->
                  
                          <ul class="nav nav-tabs" role="tablist">
                              <li role="presentation" style="font-weight:800; margin-bottom:12px; font-size:25px; color:black">블랙리스트</li> 
                              <li style="float:right; margin-top:20px; margin-bottom:-10px"><p>총 신고자명수 : 00명</p></li> <br><br><br>
                          </ul>
							
							
                                    <!-- Tab panes -->
                                    <div class="tab-content" style="padding:0px;">
                                        <div role="tabpanel" class="tab-pane active" id="profile">	
	                                      							              	
											<table class="table table-hover" style="text-align:center; padding-top:15px">
												<thead>
													<tr style="background-color: #F2FFF9;">
														<th style="text-align:center;">글쓴이(유저아이디)</th>
														<th style="text-align:center;">글 작성일자</th>
														<th style="text-align:center;">신고일자</th>
														<th style="text-align:center;">신고 횟수</th>
														<th style="text-align:center;"></th>
													</tr>
														
												</thead>
												<tbody>
													<tr>
														<td>황주디(judy1)</td>
														<td>2021.05.21</td>
														<td>2021.05.30</td>
														<td>3</td>
														<td><button type="button" class="send_btn">신고 하기</button></td>
													</tr>
													<tr>
														<td>업나라(nara1)</td>
														<td>2021.05.21</td>
														<td>2021.05.30</td>
														<td>1</td>
														<td></td>
													</tr>
													<tr>
														<td>킘킘해(inin1)</td>
														<td>2021.05.21</td>
														<td>2021.05.30</td>
														<td>2</td>
														<td></td>
													</tr>
													
												</tbody>
											</table>
                                      			
                                   
                    </div>
													<div class="text-center">
														<ul class="pagination">
															<li><a href="#">1</a></li>
															<li><a href="#">2</a></li>
															<li><a href="#">3</a></li>
															<li><a href="#">4</a></li>
														</ul>
													</div>			
                                      			</div>
       		  </div>		
    </section><!-- End off Product section -->
	

	<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 

</body>
</html>