<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    	<script>
    		var $j3 = jQuery.noConflict();
    	</script>
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
					<span class="tab_btn" data-toggle="tab" href="#menu1">만료광고 결제 관리</span>
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
			                        <jsp:useBean id="now" class="java.util.Date" />
									<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
			                        <c:forEach var="arr" items="${ adList }" varStatus="status">
			                        	<tr>
			                            	<td onclick="location.href='${ pageContext.servletContext.contextPath }/user/select/adApply/detail?adCode=${ arr.adCode }'" style="text-align: center;"><c:out value="${ arr.companyName }"/></td>
			                            	<td onclick="location.href='${ pageContext.servletContext.contextPath }/user/select/adApply/detail?adCode=${ arr.adCode }'" style="text-align: center;"><c:out value="${ arr.adWeek }"/>주</td>
			                            	<td onclick="location.href='${ pageContext.servletContext.contextPath }/user/select/adApply/detail?adCode=${ arr.adCode }'" style="text-align: center;"><c:out value="${ arr.applyDate }"/></td>
			                            	<c:if test="${ arr.postYn eq 'N' && arr.stateCode eq '1' }">
			                          			<td style="text-align: center; color: red;">광고신청</td>
			                          		</c:if>
			                          		<c:if test="${ arr.postYn eq 'N' && arr.stateCode eq '2' }">
			                          			<td style="text-align: center; color: #45B99C;">광고승인<button id="adPay" type="button" class="adPay${ arr.adCode }"></button></td>
			                          			<!-- 광고 1차 선결제 카카오페이 승인 완료된 광고만 가능  -->
			                          			<script>
			                          			$j3(document).on("click", ".adPay${ arr.adCode }",function(){
												        var IMP = window.IMP; // 생략가능
												        IMP.init('imp27572898'); 
												        var msg;
												        /* var adPrice = ${arr.adPrice}; */
												        var adPrice = 100;
												        var email = '<c:out value="${arr.companyEmail}"/>';
												        var name = '<c:out value="${arr.companyName}"/>';
												        var phone = '<c:out value="${arr.companyPhone}"/>';
												        var companyLocation = '<c:out value="${arr.companyLocation}"/>';
												        var adCode = '<c:out value="${arr.adCode}"/>'
												        alert(adPrice);
												        alert(email);
												        
												        IMP.request_pay({
												            pg : 'kakaopay',
												            pay_method : 'card',
												            merchant_uid : 'merchant_' + new Date().getTime(),
												            name : '광고 1차 선결제',
												            amount : adPrice,
												            buyer_email : email,
												            buyer_name : name,
												            buyer_tel : phone,
												            buyer_addr : companyLocation,
												            buyer_postcode : '123-456'
												            //m_redirect_url : 'http://www.naver.com'
												        }, function(rsp) {
												            if ( rsp.success ) {
												                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
												                jQuery.ajax({
												                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
												                    type: 'POST',
												                    dataType: 'json',
												                    data: {
												                        imp_uid : rsp.imp_uid
												                        //기타 필요한 데이터가 있으면 추가 전달
												                    }
												                }).done(function(data) {
												                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
												                    if ( everythings_fine ) {
												                        msg = '결제가 완료되었습니다.';
												                        msg += '\n고유ID : ' + rsp.imp_uid;
												                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
												                        msg += '\결제 금액 : ' + rsp.paid_amount;
												                        msg += '카드 승인번호 : ' + rsp.apply_num;
												                        
												                        alert(msg);
												                    } else {
												                    	alert("결제에 실패했습니다.");
												                    	return;
												                        //[3] 아직 제대로 결제가 되지 않았습니다.
												                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
												                    }
												                });
												                //성공시 이동할 페이지
												                
												                $j3.ajax({
										    			    		url:"${ pageContext.servletContext.contextPath }/user/update/first/adPayment",
										    				    	type:"POST",
										    				    	data:{
										    				    		adPrice : adPrice,
																        companyEmail : email,
																        companyName : name,
																        comapnyPhone : phone,
																        companyLocation : companyLocation,
										    			    		    adCode : adCode
										    				    	},
										    				    	success:function(data, textStatus, xhr){
										    				    		alert("결제 성공하였습니다!!\n신청하신 광고는 결제 다음날 업로드됩니다.");
										    				    		location.replace("${pageContext.servletContext.contextPath}/user/select/ad/list")
										    				    	},
										    				    	error:function(xhr,status,error){
										    				    		console.log(error);
										    				    	}
										    				    });
										                
												                
												            } else {
												                msg = '결제에 실패하였습니다.';
												                msg += '에러내용 : ' + rsp.error_msg;
												                //실패시 이동할 페이지
												                <%-- location.href="<%=request.getContextPath()%>/order/payFail"; --%>
												                alert(msg);
												            }
												        });
												        
												    });
	    									</script>
	    									
			                          		</c:if>
			                          		<c:if test="${ arr.postYn eq 'Y' && today >= arr.postStartDate && today <= arr.postEndDate }">
			                          			<td style="text-align: center; color: blue;">광고중</td>
			                          		</c:if>
			                          		<c:if test="${ arr.postYn eq 'Y' && today < arr.postStartDate }">
			                          			<td style="text-align: center; color: orange;">결제완료 게시 대기중</td>
			                          		</c:if>
			                          		<c:if test="${ today > arr.postEndDate }">
			                          			<td style="text-align: center; color: yellow;">광고만료</td>
			                          		</c:if>
			                          		<c:if test="${ arr.stateCode eq '3' }">
			                          			<td style="text-align: center; color: lightgray;">승인거절</td>
			                          		</c:if>
			                          		<c:if test="${ arr.stateCode eq '4' }">
			                          			<td style="text-align: center; color: lightgray;">취소광고</td>
			                          		</c:if>
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
			                        <!-- <tr class="morepay">
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
			                        </tr> -->
			                        <c:forEach var="arr" items="${ adList }">
			                        	<c:forEach var="arr2" items="${ adPaymentList }">
				                        	<c:if test="${ today > arr.postEndDate && empty arr.payDate2nd }">
				                        		<c:if test="${ arr.adCode == arr2.adCode }">
							                        <tr class="morepay">
							                            <td style="text-align: center;"><c:out value="${ arr.companyName }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr.adWeek }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr2.clickCount }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr.postEndDate }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr2.morePayAmount }"/>원</td>
							                            <td class="class" style="text-align: center; color: red;">추가결제 대기중<button></button></td>
						                            </tr>
					                            </c:if>
				                            </c:if>
				                            <c:if test="${ today > arr.postEndDate && !empty arr.payDate2nd }">
				                            	<c:if test="${ arr.adCode == arr2.adCode }">
							                        <tr class="completepay">
							                            <td style="text-align: center;"><c:out value="${ arr.companyName }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr.adWeek }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr2.clickCount }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr.postEndDate }"/></td>
							                            <td style="text-align: center;"><c:out value="${ arr2.morePayAmount }"/>원</td>
							                            <td style="text-align: center; color: #45B99C;">결제 완료</td>
						                            </tr>
					                            </c:if>
				                            </c:if>
			                        	</c:forEach>
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