<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뉴스레터</title>
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
 
select>option{
  text-align:center;}
  
 td > .complete_btn {
                background-color: #45B99C; 
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
            }
  td > .send_btn {
                background-color: #FFB830; 
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
					<div class="head_title text-left fix">
			 			<p role="presentation" style="font-weight:800; font-size:25px; color:black; margin-top:10px;">뉴스레터</p>
                    </div>	
					 <div class="col-md-20">
					 		
                             <!-- Nav tabs -->
                  
                          <ul class="nav nav-tabs" role="tablist">
                                         <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">All</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">작성하기</a></li>
                          </ul>
							
							
                                    <!-- Tab panes -->
                                    <div class="tab-content" style="padding:0px;">
                                        <div role="tabpanel" class="tab-pane active" id="profile">	
	                                        <div class="container-fluid" style="margin-left:20px; margin-bottom:20px">
													<select class="ui search dropdown" style="font-size:15px; text-align:center !important;">
													  <option value ="0" selected>월별 선택</option>
													  <option value="1">1월</option>
													  <option value="2">2월</option>
													  <option value="3">3월</option>
													  <option value="4">4월</option>
													  <option value="5">5월</option>
													  <option value="6">6월</option>
													  <option value="7">7월</option>
													  <option value="8">8월</option>
													  <option value="9">9월</option>
													  <option value="10">10월</option>
													  <option value="11">11월</option>
													  <option value="12">12월</option>
													
													</select>
											</div>							              	
											<table class="table table-hover" style="text-align:center; padding-top:15px">
												<thead>
													<tr style="background-color: #F2FFF9;">
														<th style="text-align:center;">뉴스레터 발행번호</th>
														<th style="text-align:center;">뉴스레터 제목</th>
														<th style="text-align:center;">글 최종 검토일자</th>
														<th style="text-align:center;">글 배포일자</th>
														<th style="text-align:center;"></th>
													</tr>
														
												</thead>
												<tbody>
													<tr>
														<td>PP-210611</td>
														<td>강아지 고양이 한배를 타다!!</td>
														<td>2021.06.08</td>
														<td>2021.06.11</td>
														<td><button type="button" class="send_btn">전송 하기</button></td>
													</tr>
													<tr>
														<td>PP-210511</td>
														<td>조용한 강아지가 붓두막을?!??</td>
														<td>2021.05.08</td>
														<td>2021.05.11</td>
														<td><button type="button" class="complete_btn">전송 완료</button></td>
													</tr>
													<tr>
														<td>PP-210611</td>
														<td>강아지 고양이 한배를 타다!!</td>
														<td>2021.06.08</td>
														<td>2021.06.11</td>
														<td><button class="complete_btn">전송 완료</button></td>
													</tr>
													
													
												</tbody>
											</table>
													<div class="text-center">
														<ul class="pagination">
															<li><a href="#">1</a></li>
															<li><a href="#">2</a></li>
															<li><a href="#">3</a></li>
															<li><a href="#">4</a></li>
														</ul>
													</div>			
                                      			</div>
                                      			
                                      	<div role="tabpanel" class="tab-pane" id="messages">
                                        	<form method="post">
	                                        	<input type="file">
	                                        	<button type="submit" class="btn btn-success" style="margin-left:42%;" >작성하기</button>
											</form>
                                        	</div>	
                                        	</div>
                                   		</div>
                    </div>
       		  </div>		
    </section><!-- End off Product section -->
	

	<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 

</body>
</html>