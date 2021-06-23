<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정산/결제관리</title>
<style>
.table>tr>td{
	text-align: center;
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
 appearance: none; 
 float:left;}
</style>
</head>
<body>
	<jsp:include page="../../admin/common/header.jsp"></jsp:include> 
	
	<!-- sidebar start -->
	<nav class="col-sm-3 sidenav" style="
      position: fixed;
      width: 250px;
      height: 100%;
      margin-left: -20px;
      font-size: 18px;
      text-align:center;
      color:#25213b">
      <ul class="nav nav-pills nav-stacked">
        <li class="active1"><a href="${ pageContext.servletContext.contextPath }/views/admin/main/paymentManageList.jsp">광고 결제 관리</a></li>
        <hr>
        <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/taxMangeList.jsp">세금계산서 관리</a></li>
      </ul>
    </nav>
    <!-- sidebar end -->
    
	 <section id="product" class="product">

		<div class="container">	
				<div class="row">
		 <div class="head_title text-left fix">
		 	<p role="presentation" style="font-weight:800; font-size:25px; color:black; margin-top:10px;">광고 결제 관리</p>
                        </div>	
					 <div class="col-md-20">
					 		
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">All</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">납부전</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">납기 초과</a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">납부 완료</a></li>
                                        <li role="presentation"><a href="#cancel" aria-controls="cancel" role="tab" data-toggle="tab">납부 취소</a></li>
                                    </ul>
							<div class="container-fluid" style="margin-top: 15px;">
							 <div class="container-fluid" style="float:left;">
												<select class="ui search dropdown" style="font-size:15px; text-align:center !important;">
												  <option value ="0" selected>월별 조회</option>
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
								    <form class="d-flex" style="float:right;">
								      <input class="form-control me-2" type="search" placeholder="유저명으로 검색하시오." aria-label="Search"
								      style="width: 300px; border-radius: 15px; background-color: #F1FAF8; float:left; height:40px">
								      <button class="btn btn-outline-success" type="submit" 
								      style="float: left; margin-left: 30px; width: 10px; border-radius: 50px; height:40px" ><p style="padding-bottom:20px;">Search</p></button>
								    </form>
								</div>
                                    <!-- Tab panes -->
                                    <div class="tab-content" style="padding:0px;">
                                        <div role="tabpanel" class="tab-pane active" id="all">		
											<table class="table table-hover text-center" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이 (유저아이디)</th>
														<th style="text-align:center;">정산 카테고리</th>
														<th style="text-align:center;">청구 일자</th>
														<th style="text-align:center;">지급 상태</th>
														<th style="text-align:center;">청구 금액</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>황주디 (judy1)</td>
														<td>광고(선)</td>
														<td>2021.06.11</td>
														<td style="color:orange;">납부 전</td>
														<td>250000</td>
													</tr>
													<tr>
														<td>손불독 (bulls1)</td>
														<td>광고(선)</td>
														<td>2021.06.09</td>
														<td style="color:red;">납기 초과</td>
														<td>210000</td>
													</tr>
													<tr>
														<td>업나라 (naranara)</td>
														<td>광고(전)</td>
														<td>2021.05.11</td>
														<td>납기 취소</td>
														<td>194000</td>
													</tr>
													<tr>
														<td>뉴진 (newjean2)</td>
														<td>광고(후)</td>
														<td>2021.04.11</td>
														<td style="color:green;">납부 완료</td>
														<td>210000</td>
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
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                        	<table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이 (유저아이디)</th>
														<th style="text-align:center;">정산 카테고리</th>
														<th style="text-align:center;">청구 일자</th>
														<th style="text-align:center;">지급 상태</th>
														<th style="text-align:center;">청구 금액</th>
													</tr>
												</thead>
														<tbody>
															<tr>
																<td>황주디 (judy1)</td>
																<td>광고(선)</td>
																<td>2021.06.11</td>
																<td style="color:orange;">납부 전</td>
																<td>250000</td>
															</tr>
															<tr>
																<td>황퐝 (judy2)</td>
																<td>광고(선)</td>
																<td>2021.06.11</td>
																<td style="color:orange;">납부 전</td>
																<td>250000</td>
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
                                        <table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이 (유저아이디)</th>
														<th style="text-align:center;">정산 카테고리</th>
														<th style="text-align:center;">청구 일자</th>
														<th style="text-align:center;">지급 상태</th>
														<th style="text-align:center;">청구 금액</th>
													</tr>
												</thead>
														<tbody>
															<tr>
																<td>업나라 (naranara)</td>
																<td>광고(후)</td>
																<td>2021.05.11</td>
																<td style="color:red;">납기 초과</td>
																<td>194000</td>
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
                                        <div role="tabpanel" class="tab-pane" id="settings">
                                        <table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이 (유저아이디)</th>
														<th style="text-align:center;">정산 카테고리</th>
														<th style="text-align:center;">청구 일자</th>
														<th style="text-align:center;">지급 상태</th>
														<th style="text-align:center;">청구 금액</th>
													</tr>
												</thead>
														<tbody>
															<tr>
																<td>뉴진 (newjean2)</td>
																<td>광고(후)</td>
																<td>2021.04.11</td>
																<td>납부 완료</td>
																<td>210000</td>
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
                                         <div role="tabpanel" class="tab-pane" id="cancel">
                                        <table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이 (유저아이디)</th>
														<th style="text-align:center;">정산 카테고리</th>
														<th style="text-align:center;">청구 일자</th>
														<th style="text-align:center;">지급 상태</th>
														<th style="text-align:center;">청구 금액</th>
													</tr>
												</thead>
														<tbody>
															<tr>
																<td>업나라 (naranara)</td>
																<td>광고(전)</td>
																<td>2021.05.11</td>
																<td>납기 취소</td>
																<td>194000</td>
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
                                    </div>
                    </div>
       		  </div>		
		</div>
    </section><!-- End off Product section -->
	

	<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 

</body>
</html>
