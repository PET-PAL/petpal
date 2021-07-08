<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블랙리스트</title>
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
													<tr>
														<th style="text-align:center;">유저이름(유저아이디)</th>
														<th style="text-align:center;">가입일자</th>
														<th style="text-align:center;">탈퇴여부</th>
														<th style="text-align:center;">신고누적횟수</th>
														<th style="text-align:center;">차단여부</th>
													</tr>
														
												</thead>
												<tbody>
													<tr>
														<td>황주디(judy1)</td>
														<td>2021.05.21</td>
														<td>2021.05.30</td>
														<td>3</td>
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