<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검토 페이지</title>
<style>
.table>tr>td{
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../../admin/common/header.jsp"></jsp:include> 
	 <section id="product" class="product">

		<div class="container">		
				<div class="row">
				<div class="head_title text-left fix">
		 	<p role="presentation" style="font-weight:800; font-size:25px; color:black; margin-top:10px;">검토 게시판</p>
                        </div>	
					 <div class="col-md-20">
					 		
                                    <!-- Nav tabs -->
                  
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">All</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">정보 공유</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">프렌들리 플레이스</a></li>
                                    </ul>
							<div class="container-fluid" style="margin-top: 15px;">
								    <form class="d-flex">
								      <input class="form-control me-2" type="search" placeholder="유저명 or 제목으로 검색하시오." aria-label="Search"
								      style="width: 300px; border-radius: 15px; background-color: #F1FAF8; float:left; height:40px">
								      <button class="btn btn-outline-success" type="submit" 
								      style="float: left; margin-left: 30px; width: 10px; border-radius: 50px; height:40px" >Search</button>
								    </form>
								</div>
                                    <!-- Tab panes -->
                                    <div class="tab-content" style="padding:0px;">
                                        <div role="tabpanel" class="tab-pane active" id="all">								              	
											<table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이(유저아이디)</th>
														<th style="text-align:center;">글 제목</th>
														<th style="text-align:center;">글 카테고리</th>
														<th style="text-align:center;">작성일자</th>
														<th style="text-align:center;">진행 상황</th>
													</tr>
														
												</thead>
												<tbody>
													<tr>
														<td>황주디</td>
														<td>강쥐 귀 냄새 왜날까? </td>
														<td>정보 공유</td>
														<td>2021.06.18</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>업나라</td>
														<td>고양이 병원 잘하는 곳</td>
														<td>프렌들리 플레이스</td>
														<td>2021.06.18</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>킘킘해</td>
														<td>강아지에게 좋은 음악</td>
														<td>정보 공유</td>
														<td>2021.06.18</td>
														<td>처리전</td>
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
														<th style="text-align:center;">글쓴이(유저아이디)</th>
														<th style="text-align:center;">글 제목</th>
														<th style="text-align:center;">글 게시일자</th>
														<th style="text-align:center;">검토일자</th>
														<th style="text-align:center;">진행 상황</th>
													</tr>
												</thead>
														<tbody>
															<tr onclick="location.href='${ pageContext.servletContext.contextPath }/views/admin/main/reviewInfo_detail.jsp'">
																<td>황주디</td>
																<td>강쥐 귀 냄새 왜날까? </td>
																<td>2021.06.18</td>
																<td>2021.06.18</td>
																<td>처리완료</td>
															</tr>
															<tr>
																<td>킘킘해</td>
																<td>강아지에게 좋은 음악</td>
																<td>2021.06.18</td>
																<td>-</td>
																<td>처리전</td>
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
														<th style="text-align:center;">글쓴이(유저아이디)</th>
														<th style="text-align:center;">글 제목</th>
														<th style="text-align:center;">글 게시일자</th>
														<th style="text-align:center;">검토일자</th>
														<th style="text-align:center;">진행 상황</th>
													</tr>
												</thead>
												<tbody>
													<tr onclick="location.href=''">
														<td>업나라</td>
														<td>고양이 병원 잘하는 곳</td>
														<td>2021.06.18</td>
														<td>-</td>
														<td>처리전</td>
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