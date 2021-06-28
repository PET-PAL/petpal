<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .inquiry .tab_each{display:none}
			.inquiry .tab_each:first-child{display:block}
			.inquiry .tab{display:none}
			.tab_each{clear:both;border-top:1px solid rgba(0,0,0,0.08)}
			.tab .active, .tab .tab_btn.active {
    			color: #000;
    			font-weight: bold;
    			color: #45b99c8a;
			}
			.tab span.tab_btn {
			    display: inline-block;
			    float: none;
			    position: relative;
			    width: auto;
			    height: 40px;
			    margin-right: 22px;
			    font-size: 18px;
			    line-height: normal;
			    color: rgba(0,0,0,0.56);
			    text-align: left;
			    cursor: pointer;
			}
            .tab {
    			height: auto;
    			border-bottom: 1px solid rgba(0,0,0,0.2);
			}
			.tab .active:after {
			    display: block;
			    content: '';
			    position: absolute;
			    bottom: 0;
			    left: 0;
			    width: 100%;
			    height: 2px;
			    background: #45b99c8a;
			}
			td > button {
				background-color: #45B99C; 
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                width: 10px; 
                height: 15px;
                border-radius: 10px;
				margin-left: 5px;
			}
			td > button:hover {
				background-color: white; 
                color: #45B99C;
                border-color: white; 
                border: 1px solid;
			}
			.filtering {
				cursor: pointer;
			}
        </style>
        <meta charset="utf-8">
        <title>PET-PAL</title>

    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">


        <!-- Preloader -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div><!--End off Preloader -->


        <div class="culmn">
            <!--Home page style-->

           <jsp:include page="../common/userHeader.jsp"/>
            <!--Home Sections-->

            <section id="board" class="board" style="width: 70%; margin: 0px auto;  margin-bottom: 40px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600;">광고 내역</div>
            </section> <!--End off Home Sections-->

            <section id="list" class="list" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div class="tab">
					<span class="tab_btn active" data-toggle="tab" href="#menu0" >광고 신청 내역</span>
					<span class="tab_btn" data-toggle="tab" href="#menu1">광고 결제 관리</span>
				</div>
            </section>

            <section id="menutable" class="menutable">
				<div class="tab-content">
	                <div id="menu0" class="tab-pane fade in active">
						<div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 50px;">
		                	<table class="table table-hover" style="margin-bottom: 50px;">
			                    <thead>
			                        <tr style="background-color: #F1FAF8;">
			                            <th style="text-align: center; border-radius: 21px 0px 0px 0px;"><b>기업 / 상호명</b></th>
	                                    <th style="text-align: center;"><b>광고 기간</b></th>
			                            <th style="text-align: center;"><b>광고 신청 일자</b></th>
			                            <th style="text-align: center; border-radius: 0px 21px 0px 0px;"><b>접수 상태</b></th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <%-- <tr>
			                            <td onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/adApplyDetail.jsp'" style="text-align: center;">(주)나라컴퍼니</td>
			                            <td onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/adApplyDetail.jsp'" style="text-align: center;">1주</td>
			                            <td onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/adApplyDetail.jsp'" style="text-align: center;">2021-06-11</td>
			                            <td style="text-align: center; color: red;">광고신청</td>
			                        </tr>
			                        <tr>
			                            <td onclick="location.href=''" style="text-align: center;">비마이펫</td>
			                            <td onclick="location.href=''" style="text-align: center;">2주</td>
			                            <td onclick="location.href=''" style="text-align: center;">2021-06-05</td>
			                            <td style="text-align: center; color: blue;">광고중</td>
			                        </tr>
			                        <tr>
			                            <td onclick="location.href=''" style="text-align: center;">주디주디주디</td>
			                            <td onclick="location.href=''" style="text-align: center;">1주</td>
			                            <td onclick="location.href=''" style="text-align: center;">2021-06-01</td>
			                            <td style="text-align: center; color: yellow;">광고만료</td>
			                        </tr>
									<tr>
			                            <td onclick="location.href=''" style="text-align: center;">비건사료</td>
			                            <td onclick="location.href=''" style="text-align: center;">2주</td>
			                            <td onclick="location.href=''" style="text-align: center;">2021-06-01</td>
			                            <td style="text-align: center; color: #45B99C;">광고승인<button onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/mypage/jsp'"></button></td>
			                        </tr> --%>
			                        <c:forEach var="arr" items="${ adList }">
			                        	<tr>
			                            	<td onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/adApplyDetail.jsp'" style="text-align: center;"><c:out value="${ arr.companyName }"/></td>
			                            	<td onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/adApplyDetail.jsp'" style="text-align: center;"><c:out value="${ arr.adWeek }"/></td>
			                            	<td onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/mypage/adApplyDetail.jsp'" style="text-align: center;"><c:out value="${ arr.applyDate }"/></td>
			                          		<td style="text-align: center; color: red;">광고신청</td>
			                        	</tr>
			                        </c:forEach>
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
					
					<div id="menu1" class="tab-pane fade">
						<div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 50px;">
		                	<table class="table" id="paytable" style="margin-bottom: 50px;">
			                    <thead>
			                        <tr style="background-color: #F1FAF8;">
			                            <th style="width:16%; text-align: center; border-radius: 21px 0px 0px 0px;"><b>기업 / 상호명</b></th>
			                            <th style="width:16%; text-align: center;"><b>광고 기간</b></th>
			                            <th style="width:16%; text-align: center;"><b>클릭 횟수</b></th>
			                            <th style="width:16%; text-align: center;"><b>광고 만료 일자</b></th>
			                            <th style="width:16%; text-align: center;"><b>추가 결제 금액</b></th>
			                            <th class="filtering" onclick="filtering();" style="width:20%; text-align: center; border-radius: 0px 21px 0px 0px;"><b>결제 상태</b><img src="${ pageContext.servletContext.contextPath }/resources/images/filter.png" style="width:15px; margin-left:10px;"></th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                        <tr class="morepay">
			                            <td style="text-align: center;">주디주디주디</td>
			                            <td style="text-align: center;">1주</td>
			                            <td style="text-align: center;">501</td>
			                            <td style="text-align: center;">2021-06-30</td>
			                            <td style="text-align: center;">75,150원</td>
			                            <td class="class" style="text-align: center; color: red;">추가결제 대기중<button></button></td>
			                        </tr>
			                        <tr class="morepay">
			                            <td style="text-align: center;">주디주디주디</td>
			                            <td style="text-align: center;">2주</td>
			                            <td style="text-align: center;">501</td>
			                            <td style="text-align: center;">2021-06-30</td>
			                            <td style="text-align: center;">75,150원</td>
			                            <td style="text-align: center; color: red;">추가결제 대기중<button></button></td>
			                        </tr>
			                        <tr class="completepay">
			                            <td style="text-align: center;">주디주디주디</td>
			                            <td style="text-align: center;">2주</td>
			                            <td style="text-align: center;">735</td>
			                            <td style="text-align: center;">2021-06-10</td>
			                            <td style="text-align: center;">110,250원</td>
										<td style="text-align: center; color: #45B99C;">결제 완료</td>
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
            </section>
            
            <script>
				let targetLink = document.querySelectorAll('.tab span');
				for(var i = 0; i < targetLink.length; i++) {
					targetLink[i].addEventListener('click', function(e){
	        			e.preventDefault();
						for(var x = 0; x < targetLink.length; x++){
	            			targetLink[x].classList.remove('active');
	            			e.target.classList.add('active');
	        			}
					}
				)};
				
				/* 결제 상태 필터링 */
				var filterNo = 0;
				function filtering() {
					
					filterNo++;
					
					if(filterNo > 2) {
						filterNo = 1;
					}
					
					if(filterNo == 1) {
						$(".completepay").hide();
						$(".morepay").show();
					} else {
						$(".morepay").hide();
						$(".completepay").show();
					}
					
				}				
			</script>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>