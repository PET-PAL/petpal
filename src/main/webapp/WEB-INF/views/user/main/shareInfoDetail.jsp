<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                height: 45px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
                width: 100px;
            }
        </style>
        <meta charset="utf-8">
        <title>PET-PAL</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

    </head>
            <jsp:include page="../common/userHeader.jsp"/>


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


            <!--Home Sections-->

            <section id="board" class="board" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600; float: left">일반 정보 공유</div>
                <img src="${ pageContext.servletContext.contextPath }/resources/images/back.png" onclick="location.href='${ pageContext.servletContext.contextPath }/main/shareInfo.jsp'" style="width:50px; float: right; cursor: pointer !important;">
            </section>

			<div class="blog-list" style="position: absolute; top:25%; width: 15%; margin-top: 45px;">
				<nav>
					<ul style="margin-left: 30%;">
						<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/main/shareInfo.jsp" style="color: #45B99C; font-size: 1.3em; font-weight: 600;">일반 정보 공유</a></li>
						<hr style="margin-right: 10%; margin-left: 10%; border-color: lightgray;">
						<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/main/sharePlace.jsp" style="color: #979797;">프렌들리 플레이스</a></li>
					</ul>
				</nav>
			</div>

            <section id="menutable" class="menutable">
				<div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 20px; margin-bottom: 50px;">
		            <table class="table" style="margin-bottom: 50px; border-collapse: separate;">
						<tr>
							<td style="text-align: center; background-color: #F1FAF8; border-radius: 21px 0px 0px 0px;"><b>제목</b></td>
							<td>당신의 집에 고양이가 없는 이유</td>
							<td style="text-align: center; background-color: #F1FAF8;"><b>조회수</b></td>
							<td style="border-radius: 0px 21px 0px 0px;">367
							<span>
							<img onclick="location.href='#reportPost'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; float:right; margin-right: 10px;">
							</span></td>
						</tr>
						<tr>
							<td style="text-align: center; background-color: #F1FAF8;"><b>작성자</b></td>
							<td>쥬쥬</td>
							<td style="text-align: center; background-color: #F1FAF8;"><b>작성 일자</b></td>
							<td>2021-06-17</td>
						</tr>
						</table>
					<img src="${ pageContext.servletContext.contextPath }/resources/images/ccat.png"><br>
					<p style="margin-bottom: 50px; margin-left: 8px;">저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!
					저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!
					</p>
		        </div>
		        
				<div style="color: #45B99C; width: 70%; margin: 0px auto; font-weight: 550; margin-bottom: 10px;">전체 댓글</div>
				<div style="margin-bottom: 40px;">
					<table class="table" style="margin-bottom: 50px; width: 70%; margin: 0px auto;">
				    	<tbody>
				            <tr>
				                <td style="text-align: center;">킘유진</td>
				                <td>감사합니다.</td>
				                <td style="text-align: center;">2021-06-17</td>
				                 <td><img onclick="location.href='#reportPost'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px"></td>
				            </tr>
				            <tr>
				                <td style="text-align: center;">업나라</td>
				                <td>좋은 글 감사합니다! 더 궁금한 점이 있는데 쪽지 드려도 될까요~?</td>
				                <td style="text-align: center;">2021-06-17</td>
				                 <td><img onclick="location.href='#reportPost'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px"></td>
				            </tr>
				            <tr>
				                <td style="text-align: center;">손성훙</td>
				                <td>정보 감사합니다.</td>
				                <td style="text-align: center;">2021-06-17</td>
				                 <td><img onclick="location.href='#reportPost'" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px"></td>
				            </tr>
				        </tbody>
				    </table>
			    </div>
            </section>
            
            <section id="sendmessage" class="sendmessage" style="width: 70%; margin: 0px auto; margin-bottom: 50px;">
                <input type="text" id="messagecontent" placeholder="  message">
                <button class="sendmessagecontent">댓글 작성</button>
            </section>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>
            
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
            
             <!-- 신고 완료 팝업창 -->
            <div id="completeReport" class="overlay">
                <div class="popup">
                <img alt="warning" src="${ pageContext.servletContext.contextPath }/resources/images/warning.png" style="
    width: 120px; margin: 0px auto; margin-left: 220px; margin-bottom: -70px;">
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
            </div>
			

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>