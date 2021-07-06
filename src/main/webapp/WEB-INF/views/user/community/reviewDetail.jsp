<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            div > img {
                margin-bottom: 20px;
                text-align: center;
				width: 20%;
            }
            a > img {
                width: 50%;
                height: 50%;
                margin-top: 20px;
                margin-bottom: 10px;
                margin-left: 15px;
                margin-right: 15px;
                text-align: center;
            }
            .menutable > div > img {
                margin-bottom: 20px;
				width: 20%;
                margin: 0px auto;
                display: block;
            }
            .sendmessage > input {
                width: 87%;
                height: 50px;
                border-radius: 10px;
                border: 1px solid rgb(175, 175, 175);
                margin-bottom: 50px;
            }
            .sendmessage > button {
                background-color: #45B99C; 
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                width: 10%;
                height: 45px; 
                font-size: 16px; 
                font-weight: 600;
                border-radius: 10px;
                margin-left: 2%;
            }
            span > button {
            	background-color: #45B99C; 
                color: white;
                border-color: #45B99C; 
                border: 1px solid;
                height: 30px; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
                margin-top: 3px;
            }
            .sendmessage > input::placeholder {
                color:#45B99C;
            }
            td > img, span > img{
            	cursor: pointer !important;
            }
            .overlay {
  				position: fixed;
				top: 0;
				bottom: 0;
				left: 0;
				right: 0;
				background: rgba(0, 0, 0, 0.7);
				transition: opacity 500ms;
				visibility: hidden;
				opacity: 0;
				z-index: 900;
				height: 150% !important;
			}
			.overlay:target {
				visibility: visible;
				opacity: 1;
			}
			.popup {
				position: fixed;
				width: 60%;
				padding: 10px;
				max-width: 500px;
				border-radius: 10px;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				background: rgba(255, 255, 255, .9);
				-webkit-transition: opacity .5s, visibility 0s linear .5s;
				transition: opacity .5s, visibility 0s linear .5s;
				z-index: 1;
			}
			.popup:target {
				visibility: visible;
				opacity: 1;
				-webkit-transition-delay: 0s;
				transition-delay: 0s;
			}
			.popup-close {
				position: absolute;
				padding: 10px;
				max-width: 500px;
				border-radius: 10px;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				background: rgba(255, 255, 255, .9);
			}
			.popup .close {
				position: absolute;
				right: 5px;
				top: 5px;
				padding: 5px;
				color: #000;
				transition: color .3s;
				font-size: 2em;
				line-height: .6em;
			}
			.popup .close:hover {
				color: #007a5c;
			}
            .btn_submit, .certification {
                background-color: #45B99C; 
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
            }
            .findpwd-content > div {
                margin: 0px auto;
            }
            td > button {
            	float: right;
    			border-radius: 5px;
    			border: 1px solid;
    			color: #45B99C;
    			background: white;
            }
            td > button:hover {
            	float: right;
    			border-radius: 5px;
    			background-color: #45B99C;
                color: white;
                border-color: #45B99C; 
                border: 1px solid;
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

            <section id="board" class="board" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600; float: left">커뮤니티</div>
                <span style="margin-left: 30px;"><button onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/community/reviewModify.jsp'">수정하기</button></span>
                <img src="${ pageContext.servletContext.contextPath }/resources/images/back.png" onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/community/reviewList.jsp'" style="width:50px; float: right; cursor: pointer !important;">
            </section>

			<div class="blog-list" style="position: absolute; top:25%; width: 15%; margin-top: 45px;">
				<nav>
					<ul style="margin-left: 30%;">
						<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/views/user/community/freeBoardList.jsp" style="color: #979797;">자유게시판</a></li>
						<hr style="margin-right: 10%; margin-left: 10%; border-color: lightgray;">
						<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/coupon/select" style="color: #979797;">무료나눔</a></li>
						<hr style="margin-right: 10%; margin-left: 10%; border-color: lightgray;">
						<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/views/user/community/reviewList.jsp" style="color: #45B99C; font-size: 1.3em; font-weight: 600;">용품리뷰</a></li>
					</ul>
				</nav>
			</div>

            <section id="menutable" class="menutable">
				<div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 50px;">
		            <table class="table" style="margin-bottom: 50px; border-collapse: separate;">
						<tr>
							<td style="width:15%; text-align: center; background-color: #F1FAF8; border-radius: 21px 0px 0px 0px;"><b>제목</b></td>
							<td style="width:45%;"><c:out value="${ requestScope.review.boardTitle }"/></td>
							<td style="width:15%; text-align: center; background-color: #F1FAF8;"><b>조회수</b></td>
							<td style="border-radius: 0px 21px 0px 0px;"><c:out value="${ requestScope.review.boardViews }"/><span><img onclick="location.href='#reportPost'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; float:right; margin-right: 10px;"></span></td>
						</tr>
						<tr>
							<td style="text-align: center; background-color: #F1FAF8;"><b>작성자</b></td>
							<td><c:out value="${ requestScope.review.userNickName }"/><button onclick="location.href='#directMessage'">쪽지보내기</button></td>
							<td style="text-align: center; background-color: #F1FAF8;"><b>작성 일자</b></td>
							<td><c:out value="${ requestScope.review.boardPostDate }"/></td>
						</tr>
					</table>
					<img src="${ pageContext.servletContext.contextPath }/resources/images/ccat.png"><br>
					<p style="margin-bottom: 50px; margin-left: 8px;">
					<c:out value="${ requestScope.review.boardContent }"/>
					</p>
		        </div>
		        
				<div style="color: #45B99C; width: 70%; margin: 0px auto; font-weight: 550; margin-bottom: 10px;">전체 댓글</div>
				<div style="margin-bottom: 40px;">
					<table class="table" style="margin-bottom: 50px; width: 70%; margin: 0px auto;">
				    	<tbody>
				            <c:forEach var="arr" items="${ reply }">
	                      		<c:if test="${ arr.replyDeleteYN eq 'N' }">
		                        	<tr>
		                            	<td><c:out value="${ arr.userNickName }"/></td>
		                            	<td><c:out value="${ arr.replyContent }"/></td>
		                            	<td style="text-align: center;"><c:out value="${ arr.replyDate }"/></td>
		                            	<td><img onclick="test1(this)" class="${ arr.replyCode }" title="${ arr.userCode }" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px"></td>
		                        	</tr>
	                        	</c:if>
	                        	<c:if test="${ arr.replyDeleteYN eq 'Y' }">
	                        		<c:if test="${ arr.reportYN eq 'Y' }">
			                        	<tr>
			                            	<td><c:out value="${ arr.userNickName }"/></td>
			                            	<td><del>신고에 의해 삭제된 댓글입니다.</del></td>
			                            	<td style="text-align: center;"><c:out value="${ arr.replyDate }"/></td>
			                            	<td></td>
			                        	</tr>
	                        		</c:if>
	                        		<c:if test="${ arr.reportYN eq 'N' }">
			                        	<tr>
			                            	<td><c:out value="${ arr.userNickName }"/></td>
			                            	<td><del>삭제된 댓글입니다.</del></td>
			                            	<td style="text-align: center;"><c:out value="${ arr.replyDate }"/></td>
			                            	<td></td>
			                        	</tr>
		                        	</c:if>
	                        	</c:if>
	                    	</c:forEach>
				        </tbody>
				    </table>
			    </div>
            </section>
            
            <section id="sendmessage" class="sendmessage" style="width: 70%; margin: 0px auto; margin-bottom: 50px;">
                <input type="text" id="messagecontent" placeholder="  message">
                <button class="sendmessagecontent">댓글 작성</button>
            </section>
            
            
            <!-- 게시글 신고 팝업창 -->
            <div id="reportPost" class="overlay">
                <div class="popup">
                    <a href="#none" class="close">&times;</a>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 10px;">게시글 신고</p>
                    <div class="findpwd-content" id="contStep02" style="display: block;">
                        <div class="cont-step_preface">
                            <hr style="border:0.5px solid #A8A8A8;">
                        </div>
                        <!-- 신고 내용 입력 -->
                        <div style="text-align: center; margin-top: 30px; width: 80%;"><input type="text" placeholder="신고내용을 입력하세요" style="height: 200px; width: 100%; border-radius: 10px; border: 1px solid;"></div>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#completeReport'">신고하기</button></div>
                    </div>
                </div>
            </div>
            
            <!-- 댓글 신고 팝업창 -->
            <div id="reportComment" class="overlay">
                <div class="popup">
                    <a href="#none" class="close">&times;</a>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 10px;">댓글 신고</p>
                    <div class="findpwd-content" id="contStep02" style="display: block;">
                        <div class="cont-step_preface">
                            <hr style="border:0.5px solid #A8A8A8;">
                        </div>
                        <!-- 신고 내용 입력 -->
                        <div style="text-align: center; margin-top: 30px; width: 80%;"><input type="text" placeholder="신고내용을 입력하세요" style="height: 200px; width: 100%; border-radius: 10px; border: 1px solid;"></div>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#completeReport'">신고하기</button></div>
                    </div>
                </div>
            </div>
            
             <!-- 신고 완료 팝업창 -->
            <div id="completeReport" class="overlay">
                <div class="popup">
                    <p style="font-size: 30px; text-align: center; font-weight:bold; margin-top: 50px;">
                     	신고가 정상적으로 접수되었습니다.<br>
                    </p>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 20px;">
                     	신고에 대한 처리는 1~2일 소요될 수 있으며<br>
                     	신고 내역에서 확인 가능합니다.
                    </p>
                    <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#none'">확인</button></div>
                </div>
            </div>
            
            
            
            <!-- 쪽지 팝업창 -->
            <div id="directMessage" class="overlay">
                <div class="popup">
                    <a href="#none" class="close">&times;</a>
                    <p style="font-size: 20px; text-align: left; padding-bottom: 10px; margin-top: 10px;">받는이 : 킘유진(kimyu)</p>
                    <div class="findpwd-content" id="contStep02" style="display: block;">
                        <!-- 쪽지 내용 입력 -->
                        <div style="text-align: center; margin-top: 30px; width: 100%;"><input type="text" placeholder="내용을 적어주세요" style="height: 200px; width: 100%; border-radius: 10px; border: 1px solid;"></div>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#completeMessage'">보내기</button></div>
                    </div>
                </div>
            </div>
            
            <!-- 전송 완료 팝업창 -->
            <div id="completeMessage" class="overlay">
                <div class="popup">
                    <p style="font-size: 30px; text-align: center; font-weight:bold; margin-top: 50px;">
                     	쪽지 전송에 성공하였습니다.<br>
                    </p>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 20px;">
                     	보낸 쪽지는 마이페이지에서 확인 가능합니다.
                    </p>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#none'">확인</button></div>
                    </div>
                </div>
            </div>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>