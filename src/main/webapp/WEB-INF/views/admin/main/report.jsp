<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 페이지</title>
<style>
.table>tr>td{
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../../admin/common/header.jsp"></jsp:include> 
	
	<!-- sidebar start -->
	<nav class="col-sm-3 sidenav" style="
      position: fixed;
      width: 200px;
      height: 100%;
      margin-left: -20px;
      text-align:center;
      color:#25213b">
      <ul class="nav nav-pills nav-stacked">
        <li class="active1"><a href="${ pageContext.servletContext.contextPath }/views/admin/main/report.jsp">신고 게시판</a></li>
        <hr>
        <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/ask_board.jsp">문의 게시판</a></li>
      </ul>
    </nav>
    <!-- sidebar end -->
    
	 <section id="product" class="product">

		<div class="container">	
				<div class="row">
		 <div class="head_title text-left fix">
            	<p role="presentation" style="font-weight:800; font-size:25px; color:black; margin-top:10px;"> 신고 게시판</p>
         </div>	
					 <div class="col-md-20">
					 		
                                    <!-- Nav tabs -->
                  
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">All</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">용품리뷰</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">무료 나눔</a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">자유게시판</a></li>
                                    	<p style="float:right;">총 신고글 : 00개</p>
                                    </ul>
							<div class="container-fluid" style="margin-top: 15px;">
								    <form class="d-flex">
								      <input class="form-control me-2" type="search" placeholder="유저명 or 제목으로 검색하시오." aria-label="Search"
								      style="width: 300px; border-radius: 15px; background-color: #F1FAF8; float:left; height:40px">
								      <button class="btn btn-outline-success" type="submit" 
								      style="float: left; margin-left: 30px; width: 10px; border-radius: 50px; height:40px" ><p style="margin-bottom:5px;">Search</p></button>
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
														<th style="text-align:center;">신고일자</th>
														<th style="text-align:center;">진행상황</th>
													</tr>
														
												</thead>
												<tbody>
													<tr>
														<td>황주디</td>
														<td>신고합니다</td>
														<td>용품리뷰</td>
														<td>2021.06.18</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>황주디</td>
														<td>신고합니다</td>
														<td>자유게시판</td>
														<td>2021.06.18</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>황주디</td>
														<td>신고합니다</td>
														<td>무료 나눔</td>
														<td>2021.06.18</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>황주디</td>
														<td>신고합니다</td>
														<td>무료 나눔</td>
														<td>2021.06.18</td>
														<td>처리완료</td>
													</tr>
													<tr>
														<td>업나라</td>
														<td>게시글 신고입니다</td>
														<td>용품리뷰</td>
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
														<th style="text-align:center;">신고일자</th>
														<th style="text-align:center;">진행상황</th>
													</tr>
												</thead>
														<tbody>
															<tr>
																<td>황주디</td>
																<td>신고합니다</td>
																<td>2021.06.08</td>
																<td>2021.06.18</td>
																<td>처리전</td>
															</tr>
															<tr>
																<td>손손</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
																<td>2021.06.18</td>
																<td>처리전</td>
															</tr>
															<tr>
																<td>킘킘해</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
																<td>2021.06.18</td>
																<td>처리전</td>
															</tr>
															<tr>
																<td>유유유</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
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
                                        <div role="tabpanel" class="tab-pane" id="messages">
                                        <table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이(유저아이디)</th>
														<th style="text-align:center;">글 제목</th>
														<th style="text-align:center;">글 게시일자</th>
														<th style="text-align:center;">신고일자</th>
														<th style="text-align:center;">진행상황</th>
													</tr>
												</thead>
														<tbody>
															<tr>
																<td>손손</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
																<td>2021.06.18</td>
																<td>처리전</td>
															</tr>
															<tr>
																<td>킘킘해</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
																<td>2021.06.18</td>
																<td>처리전</td>
															</tr>
															<tr>
																<td>유유유</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
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
                                        <div role="tabpanel" class="tab-pane" id="settings">
                                        <table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이(유저아이디)</th>
														<th style="text-align:center;">글 제목</th>
														<th style="text-align:center;">글 게시일자</th>
														<th style="text-align:center;">신고일자</th>
														<th style="text-align:center;">진행상황</th>
													</tr>
												</thead>
														<tbody>
															<tr>
																<td>황주디</td>
																<td>신고합니다</td>
																<td>2021.06.08</td>
																<td>2021.06.18</td>
																<td>처리전</td>
															</tr>
															<tr>
																<td>손손</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
																<td>2021.06.18</td>
																<td>처리전</td>
															</tr>
															<tr>
																<td>유유유</td>
																<td>게시글 신고입니다</td>
																<td>2021.06.08</td>
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
                                    </div>
                    </div>
       		  </div>		
		</div>
    </section><!-- End off Product section -->
	

	<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 

</body>
</html>
