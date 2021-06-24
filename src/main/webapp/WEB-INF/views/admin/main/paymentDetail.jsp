<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.table>tr>td{
	text-align: left !important;
}

  td > .send_btn {
                background-color: #19A985; 
                height: 40px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
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
        <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/report.jsp">신고 게시판</a></li>
        <hr>
        <li class="active1"><a href="${ pageContext.servletContext.contextPath }/views/admin/main/ask_board.jsp">문의 게시판</a></li>
      </ul>
    </nav>
    <!-- sidebar end -->
    
	 <section id="product" class="product">

		<div class="container">		
				<div class="row">
					 <div class="head_title text-left fix">
		 				<p role="presentation" style="font-weight:800; font-size:25px; color:black; margin-top:10px;">광고 결제 관리</p>
                      </div>	
					 <div class="col-md-25">
                                    <!-- Nav tabs -->
                               <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">All</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">납부전</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">납기 초과</a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">납부 완료</a></li>
                                        <li role="presentation"><a href="#cancel" aria-controls="cancel" role="tab" data-toggle="tab">납부 취소</a></li>
                                 </ul>
                               <a href="${ pageContext.servletContext.contextPath }/views/admin/main/ask_board.jsp"><img src="${ pageContext.servletContext.contextPath }/resources/images/goback.png" 
                               			style="width:40px;height:42px; margin-right:30px; margin-top:-50px; float:right;"></a>
                            <div class="tab-content" style="padding-top: 15px;">
                                <div role="tabpanel" class="tab-pane active" id="profile">	
                                <div>
                                	<button type="button" style=" width: 200px; height: 50px; background-color: orange; border-radius: 50px; border: none; margin-left: 40%; pointer-events: none; font-size: 28px;
    								color: white; font-weight: bolder;"> 납부전</button>
                                </div>
                                   <hr style="border:1px solid lightgray; width:100%;">
                                	<div class="col-md-6 col-md-offset-3">
		                                 <table class="table text-center">
		                                 <tr>
		                                    <th scope="col-md-3" style="border: none; width: 150px;"><strong>문의한 아이디</strong></th>
		                                    <td style="border: none;">judy123</td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">이름(유저아이디)</th>
		                                    <td style="border: none;"></td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">정산 카테고리</th>
		                                  	<td style="border: none;"></td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">청구 일자</th>
		                                    <td style="border: none;"></td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">납부 예정 일자</th>
		                                     <td style="border: none;"></td>
		                                 </tr>
										<tr>
										<th style="border: none;"></th>
										<td style="border: none;"></td>
										</tr>
										<tr>
										<th style="border: none;"></th>
										<td style="border: none;"></td>
										</tr>

		                                 <tr>
		                                    <th scope="col" style="border: none; font-size: 22px; color: black;">청구 금액(원)</th>
		                                     <td style="border: none;"></td>
		                                 </tr>
		                            </table>
		                            </div>
		                            
		                            <hr style="border:1px solid lightgray; width:100%;">
		                            <div class="col-md-6">
		                            <table class="table text-center">
		                                 <tr>
		                                    <th class="col-md-3" style="border: none; width: 150px;">기업명(상호명)</th>
		                                    <td style="border: 2px solid white; background-color: lightgray;">  </td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">이름(유저아이디)</th>
		                                    <td style="border: 2px solid white; background-color: lightgray;"></td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">사업자 번호</th>
		                                    <td style="border: 2px solid white; background-color: lightgray;"></td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none; padding-top: 15px;">사업자 등록증</th>
		                                    <td style="border: none;"><button type="button" class="send_btn">사업자 등록증 보기</button></td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">광고 타입</th>
		                                    <td style="border: 2px solid white; background-color: lightgray;"></td>
		                                 </tr>
		                                 <tr>
		                                    <th scope="col" style="border: none;">광고 기간</th>
		                                     <td style="border: 2px solid white; background-color: lightgray;"></td>
		                                 </tr>
		                            </table>
		                            
			           	
				           	 </div>	                       
                        	<br>
                        	<br>
                        	<br>
                            </div>  
			                </div>        
			          </div> 
       
	                </div>        
	          </div>              
      </section><!-- End off Product section -->
	

	<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 
</body>
</html>