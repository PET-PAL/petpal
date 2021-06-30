<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
       <head>
       <style>
		.table > tbody> tr > th {
		    width: 150px;
		    border: none;
		}
		.table > tbody> tr > td {
		    border: none;
		}
		.text-uppercase {
			margin-left: 5px;
			font-weight: 600;
		}
		
		
		
       </style>
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">

        <div class="culmn">
            
            <!-- 헤더  시작 -->
			<jsp:include page="../../admin/common/header.jsp"></jsp:include>
			<!-- 헤더 끝 --> 


			 <!-- 바디 시작 -->
             <section>
           		<!-- 큰 컨테이너 시작 -->
                <div class="container" style="padding-bottom:10%">
             			<!-- 제목 -->
                        <!-- <div class="head_title text-left fix">
                            <h2 class="text-uppercase">광고 신청 상세보기(광고제목)</h2>
                            <br>
                        </div> -->
                        
                        <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" style="font-weight:800; margin-bottom:12px; font-size:25px; color:black">광고 신청 상세보기(광고제목)</li>
                             </ul>
                               <a href="${ pageContext.servletContext.contextPath }/admin/adList"><img src="${ pageContext.servletContext.contextPath }/resources/images/goback.png" 
                               			style="width:40px;height:42px; margin-right:30px; margin-top:-50px; float:right;"></a>


                        <!-- 작은 컨테이너 시작 -->
                        <div class="container"  style="padding-top:15px;">
                        
                        	<!-- 광고 상세 정보 테이블 -->
                            <table class="table">
                                 <tr>
                                    <th style="border:none">기업명</th>
                                    <td style="border:none">반려나라</td>
                                 </tr>
                                 <tr>
                                    <th style="border:none">신청자 아이디</th>
                                    <td style="border:none"></td>
                                 </tr>
                                 <tr>
                                    <th style="border:none">사업자 번호</th>
                                    <td style="border:none"></td>
                                 </tr>
                                <!--  <tr>
                                    <th style="border:none">사업자 등록증</th>
                                    <td style="border:none"> <button class="btn text-center" style="padding-left: 20px;padding-right: 20px;padding-top: 5px;padding-bottom: 5px;">사업자 등록증 보기</button></td>
                                 </tr> -->
                                 <tr>
                                    <th style="border:none">사업자 전화번호</th>
                                    <td style="border:none"></td>
                                 </tr>
                                 <tr>
                                    <th style="border:none">사업자 이메일</th>
                                    <td style="border:none"></td>
                                 </tr>
                                 <tr>
                                    <th style="border:none">광고 종류</th>
                                    <td style="border:none"></td>
                                 </tr>
                                 <tr>
                                    <th style="border:none">광고 주수</th>
                                    <td style="border:none"></td>
                                 </tr>
                                 <tr>
                                    <th style="border:none">광고 내용</th>
                                    <td style="border:none"> <button class="btn text-center" style="padding-left: 20px;padding-right: 20px;padding-top: 5px;padding-bottom: 5px;"">광고 내용 보기</button></td>
                                 </tr>
                                 
                            </table>
                        	<br>
                        	<br>
                        	<br>
                         <hr>
                         
                   
                     <div class="head_title">
                       <p style="font-weight:800; margin-top:20px; font-size:25px; color:black">결제 상세</p>
                   </div> 
                   <!-- 게시상태 : 게시전일 때 -->   
                   <!-- 1차 결제 -->
                     <h3 class="text-uppercase">1차 결제</h3>
                   
                    <table class="table" style="margin-bottom:3%">
                       <tr>
                          <th scope="col" style="border:none">1차 가격</th>
                          <td style="border:none">1000000</td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">1차 결제 여부</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col"style="border:none">1차 결제 금액</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">1차 결제 일자</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">1차 결제 방법</th>
                          <td style="border:none"></td>
                       </tr>
                       </table>
                       
                     <!-- 게시상태 : 게시 중일 때 -->  
                       <%-- <test="${ requestScope.~ eq ~}" >  --%> 
	                   <h3 class="text-uppercase">게시 상태</h3>
                       <table class="table" style="margin-bottom:3%">
                       <tr>
                          <th scope="col" style="border:none">총 클릭 수</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">예상 2차 가격</th>
                          <td style="border:none"></td>
                       </tr>
                    </table>
                    
                    <!-- 게시상태 : 게시 종료이고 상태 중 취소가 null일 때(정상종료인 경우) --> 
                    <!-- 2차 납부 여부에 따라 컬럼 나오는 거 다르게 적용해줘야 함 --> 
                       <%-- <test="${ requestScope.~ eq ~}" >  --%> 
	                   <h3 class="text-uppercase">2차 결제</h3>
                       <table class="table" style="margin-bottom:3%">
                       <tr>
                          <th scope="col" style="border:none">2차 가격</th>
                          <td style="border:none">1000000</td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">총 클릭 수</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col"style="border:none">결제 여부</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">결제 금액</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">결제 일자</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">세금계산서 발행일자</th>
                          <td style="border:none">2021-06-19</td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">현금영수증 발행일자</th>
                          <td style="border:none">2021-06-21</td>
                       </tr>
                       </table>
             
             		   <!-- 게시상태 : 게시 종료이고 상태 중 취소가 null일 때(정상종료인 경우)
             		        2차납부여부 : Y일 때 --> 
                       <%-- <test="${ requestScope.~ eq ~}" >  --%> 
	                   <h3 class="text-uppercase">총 납부 금액</h3>
	                   <h4 style="margin-left:1%">20000000</h4>
                       <table class="table" style="margin-bottom:3%">
                       <tr>
                          <th scope="col" style="border:none">1차 납부 금액</th>
                          <td style="border:none"></td>
                       </tr>
                       <tr>
                          <th scope="col" style="border:none">2차 납부 금액</th>
                          <td style="border:none"></td>
                       </tr>
                    </table>
             			
                 </div><!-- 작은 컨테이너 끝 -->
               </div><!-- 큰 컨테이너 끝 -->
            </section><!-- 바디 끝 -->
		
		<!-- 푸터 시작 -->
            <footer>
       			<jsp:include page="../../admin/common/footer.jsp"></jsp:include> 
            </footer>
			<!-- 푸터 끝 -->



        </div>

     
</html>