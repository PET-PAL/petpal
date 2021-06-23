<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 페이지</title>
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
      color:#25213B">
      
      <ul class="nav nav-pills nav-stacked">
        <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/report.jsp">신고 게시판</a></li>
        <hr>
        <li class="active1"><a href="${ pageContext.servletContext.contextPath }/views/admin/main/ask_board.jsp">문의 게시판</a></li>
      </ul>
    </nav>
    <!-- sidebar end -->
	 <section id="product" class="product">

		<div class="container">		
				<div class="row">
					 <div class="col-md-20">
					 		
                                    <!-- Nav tabs -->
                  
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" style="font-weight:800; margin-bottom:12px; font-size:25px; color:black">문의 게시판</li>
                                    	<p style="float:right; padding-top: 20px;">총 문의글 : 00개</p>
                                    </ul>
							<div class="container-fluid" style="margin-top: 15px;">
								    <form class="d-flex">
								      <input class="form-control me-2" type="search" placeholder="유저명 or 제목으로 검색하시오." aria-label="Search"
								      style="width: 300px; border-radius: 15px; height:40px;background-color: #F1FAF8; float:left;">
								      <button class="btn btn-outline-success" type="submit" 
								      style="float: left; margin-left: 30px; width: 10px;height:40px; border-radius: 50px; text-align:center;" >Search</button>
								    </form>
								</div>
                                    <!-- Tab panes -->
                                    <div class="tab-content" style="padding:0px;">
                                        <div role="tabpanel" class="tab-pane active" id="home">								              	
											<table class="table table-hover" style="text-align:center;">
												<thead>
													<tr>
														<th style="text-align:center;">글쓴이(유저아이디)</th>
														<th style="text-align:center;">글 제목</th>
														<th style="text-align:center;">문의 일자</th>
														<th style="text-align:center;">답변 일자</th>
														<th style="text-align:center;">진행상황</th>
													</tr>
														
												</thead>
												<tbody>
													<tr>
														<td>황주디</td>
														<td>문의합니다</td>
														<td>2021.06.08</td>
														<td>-</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>쏜쏜</td>
														<td>문의합니다</td>
														<td>2021.06.08</td>
														<td>-</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>킘킘킘</td>
														<td>문의합니다</td>
														<td>2021.06.08</td>
														<td>2021.06.18</td>
														<td>처리완료</td>
													</tr>
													<tr>
														<td>황주디</td>
														<td>신고합니다</td>
														<td>2021.06.08</td>
														<td>-</td>
														<td>처리전</td>
													</tr>
													<tr>
														<td>업나라</td>
														<td>신고합니다</td>
														<td>2021.06.08</td>
														<td>2021.06.18</td>
														<td>처리완료</td>
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