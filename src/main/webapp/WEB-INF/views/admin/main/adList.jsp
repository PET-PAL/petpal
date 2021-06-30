<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
       
       <!-- 페이징 처리 (한 번에 보여줄 페이지 수) -->
     <script>
		function selChange() {
			var sel = document.getElementById('cntPerPage').value;
			location.href="${ pageContext.servletContext.contextPath }/admin/adList?nowPage=${paging.nowPage}&cntPerPage="+sel;
		}
	 </script>
       
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
		        <li><a href="${ pageContext.servletContext.contextPath }/admin/adApproveList">광고 심사</a></li>
		        <hr>
		        <li class="active1"><a href="${ pageContext.servletContext.contextPath }/admin/adList">광고 관리</a></li>
		      </ul>
		    </nav>
		    <!-- sidebar end -->
			
             <!-- 광고 관리 바디 시작 -->
             <section>
                <div class="container" style="padding-bottom:10%">
                   
                        <div class="head_title text-left fix">
                            <h2 class="text-uppercase">광고 관리</h2>
                        </div>
                        
                                    
                        <!-- 탭 메뉴 시작 -->
                        <ul class="nav nav-tabs" role="tablist">
                        	 <c:if test="${ empty category }">
	                        		<li role="presentation" class="active"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="all" role="tab" data-toggle="tab">All</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=1&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="profile" role="tab" data-toggle="tab">게시 전</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=2&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="messages" role="tab" data-toggle="tab">게시 중</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=3&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 종료</a></li>
                                	<li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=4&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 취소</a></li>
                                 </c:if>
                                 <c:if test="${ category eq 1 }">
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="all" role="tab" data-toggle="tab">All</a></li>
	                                <li role="presentation" class="active"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=1&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="profile" role="tab" data-toggle="tab">게시 전</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=2&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="messages" role="tab" data-toggle="tab">게시 중</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=3&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 종료</a></li>
                                	<li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=4&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 취소</a></li>
                                 </c:if>
                                 <c:if test="${ category eq 2 }">
                                 	<li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="all" role="tab" data-toggle="tab">All</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=1&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="profile" role="tab" data-toggle="tab">게시 전</a></li>
	                                <li role="presentation" class="active"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=2&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="messages" role="tab" data-toggle="tab">게시 중</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=3&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 종료</a></li>
                                	<li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=4&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 취소</a></li>
                                 </c:if>
                                 <c:if test="${ category eq 3 }">
                                 	<li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="all" role="tab" data-toggle="tab">All</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=1&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="profile" role="tab" data-toggle="tab">게시 전</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=2&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="messages" role="tab" data-toggle="tab">게시 중</a></li>
	                                <li role="presentation" class="active"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=3&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 종료</a></li>
                                	<li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=4&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 취소</a></li>
                                 </c:if>
                                 <c:if test="${ category eq 4 }">
                                 	<li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="all" role="tab" data-toggle="tab">All</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=1&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="profile" role="tab" data-toggle="tab">게시 전</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=2&nowPage=1&cntPerPage=${paging.cntPerPage}'" aria-controls="messages" role="tab" data-toggle="tab">게시 중</a></li>
	                                <li role="presentation"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=3&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 종료</a></li>
                                	<li role="presentation" class="active"><a onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adList?category=4&nowPage=1&cntPerPage=${paging.cntPerPage}'"  aria-controls="messages" role="tab" data-toggle="tab">게시 취소</a></li>
                                 </c:if>		
                                 <p style="float:right;">총 광고 수 : ${ requestScope.total }개</p>
                            </ul>       
                                    
                                    
							<div class="container-fluid" style="margin-top: 15px;">
							
								<!-- 검색폼 시작 -->					    
								<form action="${ pageContext.servletContext.contextPath }/admin/adList" method="get" class="d-flex">
								  	<input type="hidden" name="cntPerPage" value="${ paging.cntPerPage }"/>
							        <input type="hidden" name="nowPage" value="${ paging.nowPage }"/>
							        <input type="hidden" name="category" value="${ requestScope.category }"/>
									<c:choose>
									    <c:when test="${ !empty requestScope.searchValue }">
					   					    <select id="searchCondition" name="searchCondition" style="margin-left: -540px; margin-top: 10px;">
					   					    <!-- select 박스 -->
					   					    <!-- ~를 선택했을 때 value를 넘겨줌 -->
												<option value="menu" <c:if test="${requestScope.searchCondition eq 'menu'}">selected</c:if>>카테고리</option>
												<option value="adCode" <c:if test="${requestScope.searchCondition eq 'adCode'}">selected</c:if>>광고코드</option>
												<option value="adTitle" <c:if test="${requestScope.searchCondition eq 'adTitle'}">selected</c:if>>광고제목</option>
												<option value="name" <c:if test="${requestScope.searchCondition eq 'name'}">selected</c:if>>신청자이름</option>
											</select>
											<!-- input 값도 넘겨줌 -->
									        <input type="search" id="searchValue" name="searchValue" value="${ requestScope.searchValue }">
									    </c:when>
									    <c:otherwise>
										    <select id="searchCondition" name="searchCondition" style="margin-left: -560px; margin-top: 10px;">
												<option value="menu">카테고리</option>
												<option value="adCode">광고코드</option>
												<option value="adTitle">광고제목</option>
												<option value="name">신청자이름</option>
											</select>
									        <input id="searchValue" name="searchValue" placeholder="검색어를 입력하세요" 
									        aria-label="Search"  class="form-control me-2" type="search" 
									        style="width: 300px; border-radius: 15px; background-color: #F1FAF8; float:left; height:40px; margin-left:90px;">
									    </c:otherwise>
									</c:choose>
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
                                <c:forEach var="adApprove" items="${ requestScope.adList }">
                                  <tr onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adDetail/${ adApprove.adCode }'">
                                    <th scope="row">${ adApprove.adCode }</th>
                                    <td>${ adApprove.user.name }(${ adApprove.user.id })</td>
                                    <td>${ adApprove.adTitle }</td>
                                    <td>
                                    <c:choose>
		                                    <c:when test="${adApprove.adTypeCode eq 1}">
		                                    	장소 외(1주)
		                                    </c:when>
		                                    <c:when test="${adApprove.adTypeCode eq 3}">
		                                    	장소 외(2주)
		                                    </c:when>
		                                    <c:when test="${adApprove.adTypeCode eq 2}">
		                                    	장소(1주)
		                                    </c:when>
		                                    <c:when test="${adApprove.adTypeCode eq 4}">
		                                    	장소(2주)
		                                    </c:when>
                                    	</c:choose>
                                    </td>
                                    <td>
                                    <c:choose>
	                                    <c:when test="${ empty adApprove.postStartDate }">
	                                   	 -
	                                    </c:when>
	                                    <c:otherwise>
	                                    ${adApprove.postStartDate} ~ ${adApprove.postEndDate}
	                                    </c:otherwise>
                                    </c:choose>
                                    </td>
                                    <!-- 페이지 게시 상태에 따라 분류 -->
                                    <td>
                                    	<!-- 게시 전/게시 중/게시 종료/게시 취소 -->
                                    	<c:choose>
                                    	<%-- <fmt:formatDate var="toDay" value="${toDay}" pattern="yyyy-MM-dd" /> --%>
                                    		<c:when test="${ adApprove.postYn eq 'N'}">
                                    			게시전
                                    		</c:when>
                                    		<c:when test="${ adApprove.postYn eq 'Y'}">
                                    			게시중
                                    		</c:when>
                                    		<%-- <c:when test="${ adApprove.postYn eq 'Y'}">
                                    			게시중
                                    		</c:when> --%>
                                    	</c:choose>
                                    </td>
                                    </tr>
                                   </c:forEach>
                                 
                                 
                                 
                                   </tbody>
                                   </table>
                                   
                                 
                                 </div><!-- 전체 광고 끝 -->
                                 
                         <!-- 게시 전 광고 (게시 전 클릭 시) -->
                         <div role="tabpanel" class="tab-pane" id="before">
                            <table class="table table-hover" style="text-align:center;">	
                                <thead>
                                 <tr onclick="location.href='adDetail'">
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
                                <c:forEach var="adApprove" items="${ requestScope.adList }">
                                  <tr onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adDetail/${ adApprove.adCode }'">
                                    <th scope="row">${ adApprove.adCode }</th>
                                    <td>${ adApprove.user.name }(${ adApprove.user.id })</td>
                                    <td>${ adApprove.adTitle }</td>
                                    <td>
                                    <c:choose>
		                                    <c:when test="${adApprove.adTypeCode eq 1}">
		                                    	장소 외
		                                    </c:when>
		                                    <c:when test="${adApprove.adTypeCode eq 3}">
		                                    	장소 외
		                                    </c:when>
		                                    <c:when test="${adApprove.adTypeCode eq 2}">
		                                    	장소
		                                    </c:when>
		                                    <c:when test="${adApprove.adTypeCode eq 4}">
		                                    	장소
		                                    </c:when>
                                    	</c:choose>
                                    </td>
                                    <td>${adApprove.postStartDate} ~ ${adApprove.postEndDate}</td>
                                    <!-- 페이지가 게시전일 때-->
                                    <%-- <test="${ requestScope.~ eq ~}" >  --%>
                                    <td>납부 전/납부 완료/납기 초과</td>
                                    </tr>
                                   </c:forEach>
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
                                <c:forEach var="adApprove" items="${ requestScope.adList }">
                                  <tr onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adDetail/${ adApprove.adCode }'">
                                    <th scope="row">1</th>
                                    <td>김신청(adid1)</td>
                                    <td>경치 좋은 강아지 카페</td>
                                    <td>장소</td>
                                    <td>2021-06-17 ~ 2021-06-24</td>
                                    <!-- 페이지가 게시중일 때-->
                                    <td>21회</td>
                                    </tr>
                                   </c:forEach>
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
                                 <c:forEach var="adApprove" items="${ requestScope.adList }">
                                  <tr onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adDetail/${ adApprove.adCode }'">
                                    <th scope="row">1</th>
                                    <td>김신청(adid1)</td>
                                    <td>경치 좋은 강아지 카페</td>
                                    <td>장소</td>
                                    <td>2021-06-17 ~ 2021-06-24</td>
                                    <!-- 페이지가 게시종료일 때-->
                                    <td>납부 전/납부 완료/납기 초과</td>
                                   </tr>
                                   </c:forEach>
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
                                <c:forEach var="adApprove" items="${ requestScope.adList }">
                                  <tr onclick="location.href='${ pageContext.servletContext.contextPath }/admin/adDetail/${ adApprove.adCode }'">
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
                                   </c:forEach>
                                   </tbody>
                                   </table>
                                 </div><!-- 게시 취소 광고 끝 -->         
                                 
                                    
                        <!-- 페이징 몇 개씩 볼지 선택 -->
                            <div style="display: block; text-align: center;">	
				              <div style="float: right;">
								<select id="cntPerPage" name="sel" onchange="selChange()">
									<option value="5"
										<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
									<option value="10"
										<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
									<option value="15"
										<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
									<option value="20"
										<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
								</select>
							</div> 
                            
                            
                            	
						<!-- 페이징 버튼 -->
						<ul class="pagination">
	                        <c:if test="${paging.startPage != 1 }">
	                           <li><a href="${ pageContext.servletContext.contextPath }/admin/adList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a></li>
	                        </c:if>
	                        <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
	                           <c:choose>
	                              <c:when test="${p == paging.nowPage }">
	                                 <li><a>${p }</a></li>
	                              </c:when>
	                              <c:when test="${p != paging.nowPage }">
	                                 <li><a href="${ pageContext.servletContext.contextPath }/admin/adList?category=${category}&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a></li>
	                              </c:when>
	                           </c:choose>
	                        </c:forEach>
	                        <c:if test="${paging.endPage != paging.lastPage}">
	                           <li><a href="${ pageContext.servletContext.contextPath }/admin/adList?category=${category}&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a></li>
	                        </c:if>
	                       </ul>
									
								
								
							</div>
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