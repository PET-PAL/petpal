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
	
	<!-- sidebar start -->
	<nav class="col-sm-3 sidenav" style="
      position: fixed;
      width: 200px;
      height: 100%;
      margin-left: -20px;
      text-align:center;
      color:#25213B">
      
      <ul class="nav nav-pills nav-stacked">
        <li><a href="reportList">신고 게시판</a></li>
        <hr>
        <li  class="active1"><a href="askList">문의 게시판</a></li>
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
						        <form class="d-flex" style="float:left;">
								     <div class="search">
									      <input type="text" placeholder="유유저명 or 글제목으로 검색해주세요.">
									      <i class="fas fa-search fa-2x"></i>
								   	</div>
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
													<tr onclick="location.href='askDetail'">
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