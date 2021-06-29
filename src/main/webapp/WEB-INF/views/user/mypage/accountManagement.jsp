<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            td > input {
            	height: 40px;
                width: 95%;
                border-radius: 10px;
                border: 1px solid rgb(175, 175, 175);
            }
            tr, td {
            	font-size: 17px;
				height: 55px;
				text-align: left;
			}
            td > button {
                background-color: #45B99C; 
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
            }
            div > button {
                background-color: #45B99C; 
                height: 35px;
                color: white;
                border-color: #45B99C; 
                border: 1px solid;
                font-size: 16px; 
                font-weight: 500;
                border-radius: 10px;
                margin-left: 20px;
            }
            td > input::placeholder {
                font-size: 15px;
                color:#a1a1a1;
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
        </style>
        <meta charset="utf-8">
        <title>PET-PAL</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/slick/slick.css"> 
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/slick/slick-theme.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/animate.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/iconfont.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/font-awesome.min.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/magnific-popup.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/bootsnav.css">

        <!-- xsslider slider css -->


        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/xsslider.css">-->




        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/plugins.css" />-->

        <!--Theme custom css -->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css">
        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" />

        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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

            <section id="account" class="account" style="width: 70%; margin: 0px auto;  margin-bottom: 40px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600;">계정 관리</div>
            </section>

            <section id="account" class="account" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div style="font-size: 20px; font-weight: 600; float: left; margin-left: 10px;">정보 수정</div>
                <div style="float: right; margin-right: 10px;"><button onclick="location.href='#pop01'">회원탈퇴</button></div>
                <br>
                <hr style="border-color: rgb(175, 175, 175);">
            </section>

            <section id="accountmanagement" class="accountmanagement">
                <div style="width: 70%; height: 600px; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 35px; margin-bottom: 80px;">
					<table style="width: 80%; margin-left: 30px; margin-top: 20px; margin-bottom: 20px;">
						<tr>
							<td>아이디</td>
							<td><input type="text" value="${ sessionScope.loginUser.id }" disabled></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" value="${ sessionScope.loginUser.name }" disabled></td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td><input type="text" value="${ sessionScope.loginUser.nikname }" id="userNickName" placeholder="변경할 닉네임을 입력하세요"></td>
	                        <td><button>중복확인</button></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password"  id="userPwd" placeholder="변경할 비밀번호를 입력하세요"></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" id="userPwdCheck" placeholder="비밀번호를 확인해 주세요"></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input type="text" value="${ sessionScope.loginUser.phone }" id="userPhone" placeholder="변경할 전화번호 입력하세요"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="text" id="userEmail" value="${ sessionScope.loginUser.email }" placeholder="변경할 이메일 입력하세요"></td>
	                        <td><button>중복확인</button></td>
						</tr>
	                    <tr>
	                    	<td>뉴스레터 이메일 수신 동의</td>
	                    	<td>
	                    	<label name="emailYn" style="font-size: 15px; font-weight: normal; padding-right: 30px;">
	                    	<input type="radio" id="emailYn" name="emailYn" style="width: 15px;" value="Y" checked> 동의</label>
	                    	<label name="emailYn" style="font-size: 15px; font-weight: normal; padding-right: 30px;">
	                    	<input type="radio" id="emailYn" name="emailYn" style="width: 15px;" value="N"> 거절</label>
	                    	</td>
	                    </tr>	
	                    <tr>
	                    	<td>댓글알림 이메일 수신 동의</td>
	                    	<td>
	                    	<label name="replyYn" style="font-size: 15px; font-weight: normal; padding-right: 30px;">
	                    	<input type="radio" id="replyYn" name="replyYn" style="width: 15px;" value="Y" checked> 동의</label>
	                    	<label name="replyYn" style="font-size: 15px; font-weight: normal; padding-right: 30px;">
	                    	<input type="radio" id="replyYn" name="replyYn" style="width: 15px;" value="N"> 거절</label>
	                    	</td>
	                    </tr>	
					</table>
                    <div style="margin: 0px auto; text-align: center;"><button>수정하기</button></div>
				</div>
            </section>
            
            <!-- 회원탈퇴 팝업창 -->
				<div id="pop01" class="overlay">
					<div class="popup">
						<a href="#none" class="close">&times;</a>
						<p style="font-size: 20px; text-align: center; padding-bottom: 10px;">회원탈퇴</p>
						<div class="cont-step cont-step_02" id="contStep02" style="display: block;">
							<div class="cont-step_preface">
								<h3 align="center">정말 탈퇴하시겠습니까? </h3>
							</div>
							<!-- 비밀번호 입력 -->
							<div style="text-align: center; margin-top: 30px;"><input type="text" placeholder="비밀번호를 입력하세요" style="height: 40px; width: 70%;"></div>
								
							<div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/main/mainpage.jsp'">탈퇴하기</button></div>

						</div>
					</div>
				</div>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

			<!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>