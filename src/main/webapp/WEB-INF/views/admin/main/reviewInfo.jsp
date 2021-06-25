<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.table>tr>td{
	text-align: center;
}
.search {
    position: relative;
    text-align: center;
    width: 300px;
    margin: 0 auto;
}
input {
    width: 100%;
    border-radius: 20px;
    border: 1px solid #bbb;
    margin: 10px 0;
    padding: 10px 12px;
    font-family: fontAwesome;
    background-color: #F1FAF8;
}
.fa-search {
    position: absolute;
    right: 15px;
    top: 10px;
    margin: 0;
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
								<form class="d-flex" style="float:left;">
								     <div class="search">
									      <input type="text" placeholder="유저명 or 글제목으로 검색해주세요.">
									      <i class="fas fa-search fa-2x"></i>
								   	</div>
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
													<tr onclick="location.href='reviewDetail'">
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
															<tr onclick="location.href='reviewDetail'">
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
													<tr onclick="location.href='reviewDetail'">
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