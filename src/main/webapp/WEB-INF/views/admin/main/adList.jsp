<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
       <head>
       <style>
       .table > thead > tr > th {
       text-align: center;
       }
       
        .table > tbody > tr > th {
       text-align: center;
       }
       
       </style>
       
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">

        <div class="culmn">
            
            <!-- 헤더  시작 -->
			<jsp:include page="../../admin/common/header.jsp"></jsp:include>
			<!-- 헤더 끝 --> 
			
			<!-- sidebar start -->
			<nav class="col-sm-3 sidenav" style="
		      position: fixed;
		      width: 200px;
		      height: 100%;
		      margin-left: -20px;
		      text-align:center;
		      color:#25213b">
		      <ul class="nav nav-pills nav-stacked">
		        <li><a href="adApproveList">광고 심사</a></li>
		        <hr>
		        <li class="active1"><a href="adList">광고 관리</a></li>
		      </ul>
		    </nav>
		    <!-- sidebar end -->
			
             <!-- 광고 관리 바디 시작 -->
             <section>
                <div class="container" style="padding-bottom:10%">
                   
                        <div class="head_title text-left fix">
                            <h2 class="text-uppercase">광고 관리</h2>
                        </div>
                        
                        <!-- 광고 게시 상태별 분류 -->
                         <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">All</a></li>
                                        <li role="presentation"><a href="#before" aria-controls="profile" role="tab" data-toggle="tab">게시 전</a></li>
                                        <li role="presentation"><a href="#uploading" aria-controls="messages" role="tab" data-toggle="tab">게시 중</a></li>
                                        <li role="presentation"><a href="#finish" aria-controls="messages" role="tab" data-toggle="tab">게시 종료</a></li>
                                        <li role="presentation"><a href="#cancel" aria-controls="messages" role="tab" data-toggle="tab">게시 취소</a></li>
                                    	<p style="float:right;">총 광고 : 00개</p>
                                    </ul>
							<div class="container-fluid" style="margin-top: 15px;">
								    <form class="d-flex">
								      <input class="form-control me-2" type="search" placeholder="광고코드  or 광고제목으로 검색하시오." aria-label="Search"
								      style="width: 300px; border-radius: 15px; background-color: #F1FAF8; float:left; height:40px">
									  <button class="btn btn-outline-success" type="submit" 
								      style="float: left; margin-left: 30px; width: 10px; border-radius: 50px; height:40px" >Search</button>
								    </form>
								</div>
                        
                   
                        <!-- 전체 광고(All 클릭 시) -->
                        <div class="tab-content" style="padding:0px;">
                         <div role="tabpanel" class="tab-pane active" id="all">
                            <table class="table table-hover" style="text-align:center;">	
                                <thead>
                                 <tr>
                                    <th scope="col">광고 코드</th>
                                    <th scope="col">광고 신청자</th>
                                    <th scope="col">광고 제목</th>
                                    <th scope="col">광고 종류</th>
                                    <th scope="col">게시 기간</th>
                                    <!-- 페이지가 All일 때-->
                                    <%-- <test="${ requestScope.~ eq ~}" >  --%>
                                    <th scope="col">게시 상태</th>
                                    <%--</> --%>
                                 </tr>
                                </thead>
                                <tbody>
                                <%-- <c:forEach var="adApprove" items="${ requestScope.adApproveList }"> --%>
                                  <tr onclick="location.href='${ pageContext.servletContext.contextPath }/views/admin/main/adDetail.jsp'">
                                    <th scope="row">1</th>
                                    <td>김신청(adid1)</td>
                                    <td>경치 좋은 강아지 카페</td>
                                    <td>장소</td>
                                    <td>2021-06-17 ~ 2021-06-24</td>
                                    <!-- 페이지가 All일 때-->
                                    <td>게시 전/게시 중/게시 종료</td>
                                   </tr>
                                 <%-- </c:forEach> --%>
                                   </tbody>
                                   </table>
                                 </div><!-- 전체 광고 끝 -->
                                 
                         <!-- 게시 전 광고 (게시 전 클릭 시) -->
                         <div role="tabpanel" class="tab-pane" id="before">
                            <table class="table table-hover" style="text-align:center;">	
                                <thead>
                                 <tr>
                                    <th scope="col">광고 코드</th>
                                    <th scope="col">광고 신청자</th>
                                    <th scope="col">광고 제목</th>
                                    <th scope="col">광고 종류</th>
                                    <th scope="col">게시 기간</th>
                                    <!-- 페이지가 게시전일 때-->
                                    <th scope="col">1차 납부 상태</th>
                                 </tr>
                                </thead>
                                <tbody>
                                <%-- <c:forEach var="adApprove" items="${ requestScope.adApproveList }"> --%>
                                  <tr>
                                    <th scope="row">1</th>
                                    <td>김신청(adid1)</td>
                                    <td>경치 좋은 강아지 카페</td>
                                    <td>장소</td>
                                    <td>2021-06-17 ~ 2021-06-24</td>
                                    
                                    <!-- 페이지가 게시전일 때-->
                                    <%-- <test="${ requestScope.~ eq ~}" >  --%>
                                    <td>납부 전/납부 완료/납기 초과</td>
                                    <%--</> --%>
                                    </tr>
                                   </tbody>
                                   </table>
                                 </div><!-- 게시 전 광고 끝 -->
                                 
                          <!-- 게시 중 광고 (게시 중 클릭 시) -->
                         <div role="tabpanel" class="tab-pane" id="uploading">
                            <table class="table table-hover" style="text-align:center;">	
                                <thead>
                                 <tr>
                                    <th scope="col">광고 코드</th>
                                    <th scope="col">광고 신청자</th>
                                    <th scope="col">광고 제목</th>
                                    <th scope="col">광고 종류</th>
                                    <th scope="col">게시 기간</th>
                                    <!-- 페이지가 게시중일 때-->
                                    <th scope="col">총 클릭 수</th>
                                 </tr>
                                </thead>
                                <tbody>
                                <%-- <c:forEach var="adApprove" items="${ requestScope.adApproveList }"> --%>
                                  <tr>
                                    <th scope="row">1</th>
                                    <td>김신청(adid1)</td>
                                    <td>경치 좋은 강아지 카페</td>
                                    <td>장소</td>
                                    <td>2021-06-17 ~ 2021-06-24</td>
                                    <!-- 페이지가 게시중일 때-->
                                    <td>21회</td>
                                   </tr>
                                   </tbody>
                                   </table>
                                 </div><!-- 게시 중 광고 끝 -->        
                           
                           <!-- 게시 종료 광고 (게시 종료 클릭 시) -->
                         <div role="tabpanel" class="tab-pane" id="finish">
                            <table class="table table-hover" style="text-align:center;">	
                                <thead style="text-align:center;">
                                 <tr>
                                    <th scope="col">광고 코드</th>
                                    <th scope="col">광고 신청자</th>
                                    <th scope="col">광고 제목</th>
                                    <th scope="col">광고 종류</th>
                                    <th scope="col">게시 기간</th>
                                    <th scope="col">2차 납부 상태</th>
                                 </tr>
                                </thead>
                                <tbody>
                                <%-- <c:forEach var="adApprove" items="${ requestScope.adApproveList }"> --%>
                                  <tr>
                                    <th scope="row">1</th>
                                    <td>김신청(adid1)</td>
                                    <td>경치 좋은 강아지 카페</td>
                                    <td>장소</td>
                                    <td>2021-06-17 ~ 2021-06-24</td>
                                    <!-- 페이지가 게시종료일 때-->
                                    <td>납부 전/납부 완료/납기 초과</td>
                                   </tr>
                                 <%-- </c:forEach> --%>
                                
                                    
                                   </tbody>
                                   </table>
                                 </div><!-- 게시 종료 광고 끝 -->
                                 
                          <!-- 게시 취소 광고 (게시 취소 클릭 시) -->
                         <div role="tabpanel" class="tab-pane" id="cancel">
                            <table class="table table-hover" style="text-align:center;">	
                                <thead style="text-align:center;">
                                 <tr>
                                    <th scope="col">광고 코드</th>
                                    <th scope="col">광고 신청자</th>
                                    <th scope="col">광고 제목</th>
                                    <th scope="col">취소신청 일자</th>
                                    <th scope="col">취소사유</th>
                                    <th scope="col">환불 여부</th>
                                    <th scope="col">2차 징수 여부</th>
                                 </tr>
                                </thead>
                                <tbody>
                                <%-- <c:forEach var="adApprove" items="${ requestScope.adApproveList }"> --%>
                                  <tr>
                                    <th scope="row">1</th>
                                    <td>김신청(adid1)</td>
                                    <td>경치 좋은 강아지 카페</td>
                                    <td>2021-06-22</td>
                                    <td>광고 내용 수정 필요</td>
                                    <td>Y</td>
                                    <td>N</td>
                                    <!-- 납부 전 : 1차 납부 일자가 null이고 신청일에서 오늘까지 3일 이하인 경우 -->
                                    <!-- 납부 완료 : 신청일에서 1차 납부 일자가 3일 이하인 경우 -->
                                    <!-- 납기 초과 : 신청일에서 오늘까지 3일이 지난 경우-->
                                   </tr>
                                 <%-- </c:forEach> --%>
                                   </tbody>
                                   </table>
                                 </div><!-- 게시 취소 광고 끝 -->         
                                 
                                    
                        <div class="text-center">
							<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							</ul>
						</div>	
                
                </div><!-- End off container -->
                </div>
            </section><!-- End off Product section -->
		
		<!-- 푸터 시작 -->
            <footer>
       			<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 
            </footer>
			<!-- 푸터 끝 -->



        </div>

     
</html>