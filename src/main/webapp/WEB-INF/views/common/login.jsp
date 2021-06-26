<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            li > button {
                background-color: #45B99C; 
                color: white;
                border-color: #45B99C; 
                border: 1px solid; 
                width: 60%; 
                height: 50px; 
                font-size: 16px; 
                font-weight: 600;
                border-radius: 30px;
                margin-bottom: 15px;
                margin-left: 20%;
            }
            li > button:hover {
                background-color: white; 
                color: #45B99C;
                border-color: white; 
                border: 1px solid; 
            }

            li > img {
                width: 50%;
                height: 50%;
                margin-top: 20px;
                margin-bottom: 10px;
                margin-left: 15px;
                margin-right: 15px;
                text-align: center;
            }
            .loginForm > input {
                width: 60%;
                height: 50px;
                border-radius: 30px;
                margin-bottom: 20px;
                border: 1px solid rgb(175, 175, 175);
                margin-left: 20%;
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
<script>
	const message = '${ requestScope.message }';
	if(message != null && message != '') {
		alert(message);
	}
</script>


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


            <jsp:include page="../user/common/userHeader.jsp"/>
            <!--Home Sections-->


            <section id="loginconfirm" class="login">
              <form action="${ pageContext.servletContext.contextPath }/user/login" method="post">
                <div class="loginForm" style="width: 50%; height: 530px; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 50px; margin-bottom: 50px; box-shadow: 3px 3px 3px 3px rgb(204, 204, 204);">
                    <h2 style="text-align: center; color: gray; margin-top: 30px;">로그인</h2><br>

                    <input type="text" id="userId" name="userId" placeholder="  아이디 입력"><br>
                    <input type="password" id="userPwd" name="userPwd" placeholder="  비밀번호 입력"><br>
              
                    <div style="left: 20%;">
                        <label style="margin-left: 21%; font-weight: normal;"><input type="checkbox" id="storeId"> 아이디 저장</label>
                    </div>
                    <hr style="width: 80%; border-color: rgb(175, 175, 175);">
						<button type="submit" class="login" style="margin-top: 30px; margin-left: 35%; background-color: #19A985; color: white; width: 300px; height: 50px; border: 0px; border-radius: 10px; font-size: 20px;">
						로그인
						</button>
				</form>
						<br>
						<button class="join" onclick="location.href='${ pageContext.servletContext.contextPath }/user/regist'" style="margin-top: 15px; margin-left: 35%; background-color: #19A985; color: white; width: 300px; height: 50px; border: 0px; border-radius: 10px; font-size: 20px;">회원가입</button>
                    <p style="text-align: center; margin-top: 10px;">
                        <a href="#findId" style="color: rgb(175, 175, 175); padding-right: 100px;">아이디 찾기</a>
                        <a href="#findPwd" style="color: rgb(175, 175, 175);">비밀번호 찾기</a>
                    </p>
                </div>
                <div>
                	<a href="admin_login"><img src="${ pageContext.servletContext.contextPath }/resources/images/spanner.png" style="width: 30px; height: 30px; float: right; margin-right: 50px; margin-bottom: 50px; margin-top: -80px;"></a>
                </div>
            </section>

            <!-- 아이디찾기 팝업창 -->
            <div id="findId" class="overlay">
                <div class="popup">
                    <a href="#none" class="close">&times;</a>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 10px;">아이디 찾기</p>
                    <div class="cont-step cont-step_02" id="contStep02" style="display: block;">
                        <div class="cont-step_preface">
                            <hr style="border:0.5px solid #A8A8A8;">
                        </div>
                        <!-- 이메일 입력 -->
                        <div style="text-align: center; margin-top: 30px;"><input type="text" placeholder="이메일을 입력하세요" style="height: 40px; width: 70%; border-radius: 10px; border: 1px solid;"></div>

                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#findIDID'">아이디 찾기</button></div>
                    
                    </div>
                </div>
            </div>


            <!-- 찾은 아이디 팝업창 -->
            <div id="findIDID" class="overlay">
                <div class="popup">
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 50px;">
                        회원님의 아이디는 <b>petpal123</b>입니다.
                    </p>
                    <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#none'">확인</button></div>
                </div>
            </div>



            <!-- 비밀번호찾기 팝업창 -->
            <div id="findPwd" class="overlay">
                <div class="popup">
                    <a href="#none" class="close">&times;</a>
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 10px;">비밀번호 찾기</p>
                    <div class="findpwd-content" id="contStep02" style="display: block;">
                        <div class="cont-step_preface">
                            <hr style="border:0.5px solid #A8A8A8;">
                        </div>
                        <!-- 이메일 입력 -->
                        <div style="text-align: center; margin-top: 30px; width: 80%;"><input type="text" placeholder="이메일을 입력하세요" style="height: 40px; width: 100%; border-radius: 10px; border: 1px solid;"></div>
                        <!-- 아이디 입력 -->
                        <div style="text-align: center; margin-top: 10px; width: 80%;"><input type="text" placeholder="아이디를 입력하세요" style="height: 40px; width: 100%; border-radius: 10px; border: 1px solid;"></div>
                        <!-- 인증번호 입력 -->
                        <div style="text-align: center; margin-top: 10px; width: 80%;">
                            <input type="text" placeholder="인증번호를 입력하세요" style="height: 40px; width: 50%; float: left; border-radius: 10px; border: 1px solid;">
                            <span> 01:00 </span>
                            <button class="certification">인증번호 받기</button>
                        </div>
                        <br>
                        <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#findPwdPwd'">비밀번호 찾기</button></div>
                    
                    </div>
                </div>
            </div>


            <!-- 찾은 비밀번호 팝업창 -->
            <div id="findPwdPwd" class="overlay">
                <div class="popup">
                    <p style="font-size: 20px; text-align: center; padding-bottom: 10px; margin-top: 50px;">
                        회원님의 비밀번호는 <b>1234</b>입니다.
                    </p>
                    <div style="text-align: center; margin-top: 30px;"><button class="btn_submit" onclick="location.href='#none'">확인</button></div>
                </div>
            </div>



            <!-- 푸터 -->
            <jsp:include page="../user/common/footer.jsp"/>
            
        </div>
</html>