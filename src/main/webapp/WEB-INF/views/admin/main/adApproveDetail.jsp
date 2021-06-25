<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
       <head>
       <style>
       .table > tr > th{
			text-align: center;
			border: none;
		}
		.table > tr > th{
			text-align: center;
			border: none;
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
                <div class="container" style="padding-bottom:5%">
             			<!-- 제목 -->
                       <!--  <div class="head_title text-left fix">
                            <h2 class="text-uppercase">대기중 광고 상세보기(광고제목)</h2>
                            <br>
                        </div> -->
                        
                         <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" style="font-weight:800; margin-bottom:12px; font-size:25px; color:black">대기중 광고 상세보기(광고제목)</li>
                             </ul>
                               <a href="adApproveList"><img src="${ pageContext.servletContext.contextPath }/resources/images/goback.png" 
                               			style="width:40px;height:42px; margin-right:30px; margin-top:-50px; float:right;"></a>


                        <!-- 작은 컨테이너 시작 -->
                        <div class="container" style="padding-top:15px;">
                        
                        	<!-- 광고 상세 정보 테이블 -->
                            <table id="table" class="table" style="text-align:left;">
                                 <tr>
                                    <th style="border: none; width: 150px;">기업명</th>
                                    <td style="border: none;">반려나라</td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">신청자 아이디</th>
                                    <td style="border: none;"></td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">사업자 번호</th>
                                    <td style="border: none;"></td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">사업자 등록증</th>
                                    <td style="border: none;"> <button class="btn text-center" style="padding-left: 20px;padding-right: 20px;padding-top: 5px;padding-bottom: 5px;">사업자 등록증 보기</button></td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">사업자 전화번호</th>
                                    <td style="border: none;"></td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">사업자 이메일</th>
                                    <td style="border: none;"></td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">광고 종류</th>
                                    <td style="border: none;"></td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">광고 주수</th>
                                    <td style="border: none;"></td>
                                 </tr>
                                 <tr>
                                    <th style="border: none; width: 150px;">광고 내용</th>
                                    <td style="border: none;"> <button class="btn text-center" style="padding-left: 20px;padding-right: 20px;padding-top: 5px;padding-bottom: 5px;">광고 내용 보기</button></td>
                                 </tr>
                                 
                            </table>
                        	<br>
                        	<br>
                        	<br>
                         <hr>
                         
                  <!-- 광고 심사 -->
                   <div class="head_title">
                       <p style="font-weight:800; margin-top:20px; font-size:25px; color:black">관리자 심사</p>
                   </div>   
                   <!-- 심사상태 : 대기일 때 -->   
                   <!--관리자 심사 폼 시작 -->
                   <%-- <test="${ requestScope.~ eq ~}" >  --%>
                   <form action="">
	               <!-- 광고 심사 사유 입력 -->
                   <div class="form-group mt-3">
                        <textarea class="form-control" name="message" rows="5" placeholder="광고 심사 사유를 입력해주세요(필수)" required="" style="margin-bottom:3%;"></textarea>
                   </div>   	
	                  <!--  <div class="col-lg-12">
		                	<div class="col-lg-7"></div>
		                	<div class="col-lg-2"><input type="submit" class="btn btn-outline-danger" name="Button" onclick="approve()" value="광고 승인" style="border-radius:10px; float:right; margin-right:10px; background: white; border:1px solid red; color:red;"></div>
		                	<div class="col-lg-2"><input type="submit" class="btn btn-outline-success" name="Button" onclick="decline()" value="광고 거절"  style="border-radius:10px; margin-right: 20px; float:right; background: white; border:1px solid green; color:green;"></div>
		               </div> -->
	               </form>
	               <!-- </> -->
	               <!-- 관리자 심사 폼 종료 -->
	               
	               <div class="container">
                                    <div class="row">
                                       <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                     <button class="btn btn-outline-danger" type="button"  style="border-radius:10px; float:right; margin-right:10px; background: white; border:1px solid red; color:red;">광고 거절</button>
                                   <button class="btn btn-outline-success" type="button" style="border-radius:10px; margin-right: 20px; float:right; background: white; border:1px solid green; color:green;">광고 승인</button>
                                 </div>
                              </div>
                           </div>   
                    
                    <hr>
                    
                   <!-- 심사상태 : 승인 or 거절일 때 --> 
                   <!-- 관리자 심사 폼 시작 -->
                   <%-- <test="${ requestScope.~ eq ~}" >  --%>
                     <div class="head_title">
                       <p style="font-weight:800; margin-top:20px; font-size:25px; color:black">심사 결과</p>
                   </div>   
	                 <table table id="table" class="table" style="text-align:left;">
                        <tr>
                          <th style="border: none; width: 150px;">관리자 심사 결과</th>
                          <td style="border: none;">승인/거절</td>
                        </tr>
                        <tr>
                          <th style="border: none; width: 150px;">심사 관리자</th>
                          <td style="border: none;"></td>
                        </tr>
                        <tr>
                          <th style="border: none; width: 150px;">심사 일자</th>
                          <td style="border: none;"></td>
                        </tr>
                        <tr>
                          <th style="border: none; width: 150px;">심사 사유</th>
                          <td style="border: none;"><textarea class="form-control" name="message" rows="5" value="" readonly style="margin-bottom:3%; background-color:white;"></textarea></td>
                        </tr>
                   </table>
	               <!-- </> -->
	               <!-- 관리자 심사 폼 종료 -->
                    
                    
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