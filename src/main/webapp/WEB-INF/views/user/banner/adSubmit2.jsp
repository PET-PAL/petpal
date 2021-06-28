<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            a > img {
                width: 50%;
                height: 50%;
                margin-top: 20px;
                margin-bottom: 10px;
                margin-left: 15px;
                margin-right: 15px;
                text-align: center;
            }
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

            <section id="account" class="account" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600;">광고 신청</div>
            </section>
            
			<section id="account" class="account" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div style="font-size: 20px; font-weight: 600; float: left; margin-left: 10px; margin-top: 20px;">광고 기본정보 입력</div>
                <img src="/petpal_front/resources/images/back.png" onclick="location.href='${ pageContext.servletContext.contextPath }/user/select/adsubmit'" style="width:50px; float: right;">
                <br><br>
                <hr style="border-color: rgb(175, 175, 175);">
            </section>

            <section id="accountmanagement" class="accountmanagement">
                <div style="width: 70%; border: 1px solid rgba(175, 175, 175, 0.616); margin: 0px auto; border-radius: 35px; margin-bottom: 80px;">
					<table style="width: 80%; margin-left: 30px; margin-top: 20px; margin-bottom: 20px;">
						<tr>
							<td>광고 대상</td>
							<td>
								<label style="font-size: 15px; font-weight: normal; width:30%"><input name="adradio" type="radio" value="장소"> 장소</label>
								<label style="font-size: 15px; font-weight: normal;"><input name="adradio" type="radio" value="장소 이외"> 장소 이외</label>
							</td>
						</tr>
						<tr>
							<td>광고 기간</td>
							<td>
								<label style="font-size: 15px; font-weight: normal; width:30%"><input name="adDate" type="radio" value="1주"> 1주</label>
								<label style="font-size: 15px; font-weight: normal;"><input name="adDate" type="radio" value="2주"> 2주</label>								
							</td>
						</tr>
						<tr>
							<td>기업/상호명</td>
							<td><input type="text" id="userNickName" placeholder="기업/상호명을 입력하세요"></td>
						</tr>
						<tr>
							<td>사업자 번호</td>
							<td><input type="password" id="userPwd" placeholder="예) 120-394-93388"></td>
						</tr>
						<tr>
							<td>사업자 등록증</td>
							<td><button style="width: 210px;">사업자 등록증 첨부하기</button></td>
						</tr>
						<tr>
							<td>사업자 전화번호</td>
							<td><input type="text" id="userPhone" placeholder="사업자 전화번호를 입력하세요"></td>
						</tr>
						<tr>
							<td>사업자 이메일</td>
							<td><input type="text" id="userEmail" placeholder="사업자 이메일을 입력하세요"></td>
						</tr>
					</table>
                    <div style="margin: 0px auto; text-align: center; margin-bottom: 30px;">
                    <button onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/banner/adSubmit3.jsp'">다음으로</button></div>
				</div>
            </section>

            
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
            

        <!-- JS includes -->

        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/bootstrap.min.js"></script>

        <script src="${ pageContext.servletContext.contextPath }/resources/js/owl.carousel.min.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/js/jquery.magnific-popup.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/js/jquery.easing.1.3.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/css/slick/slick.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/css/slick/slick.min.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/js/jquery.collapse.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/js/bootsnav.js"></script>



        <script src="${ pageContext.servletContext.contextPath }/resources/js/plugins.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/js/main.js"></script>
</html>