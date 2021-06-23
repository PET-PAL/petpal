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
            <!--Home Sections-->

            <section id="board" class="board" style="width: 70%; margin: 0px auto;  margin-bottom: 20px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600; float: left">커뮤니티</div>
                <img src="${ pageContext.servletContext.contextPath }/resources/images/back.png" onclick="location.href='${ pageContext.servletContext.contextPath }/views/user/community/reviewList.jsp'" style="width:50px; float: right; cursor: pointer !important;">
            </section>

			<div class="blog-list" style="position: absolute; top:25%; width: 15%; margin-top: 45px;">
				<nav>
					<ul style="margin-left: 30%;">
						<li style="text-align: center;" class="blog-list"><a href="${ pageContext.servletContext.contextPath }/point/select" style="color: #979797;">자유게시판</a></li>
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
							<td style="text-align: center; background-color: #F1FAF8; border-radius: 21px 0px 0px 0px;"><b>제목</b></td>
							<td>강아지 옷 리뷰</td>
							<td style="text-align: center; background-color: #F1FAF8;"><b>조회수</b></td>
							<td style="border-radius: 0px 21px 0px 0px;">367<span><img onclick="location.href=''" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px; float:right; margin-right: 10px;"></span></td>
						</tr>
						<tr>
							<td style="text-align: center; background-color: #F1FAF8;"><b>작성자</b></td>
							<td>킘유진</td>
							<td style="text-align: center; background-color: #F1FAF8;"><b>작성 일자</b></td>
							<td>2021-06-17</td>
						</tr>
					</table>
					<img src="${ pageContext.servletContext.contextPath }/resources/images/ccat.png"><br>
					<p style="margin-bottom: 50px; margin-left: 8px;">저희 강아지랑 너무 잘어울려요~! 여기 브랜드 애용하고 있었는데 이번에 나온 디자인이 너무 예쁘네요다들 한번 구매해보세요 후회 절대 없습니다~ 사이즈도 다양해서 강아치 크기에 따라서 옷 고르기도 좋습니다!</p>
		        </div>
		        
				<div style="color: #45B99C; width: 70%; margin: 0px auto; font-weight: 550; margin-bottom: 10px;">전체 댓글</div>
				<div style="margin-bottom: 40px;">
					<table class="table" style="margin-bottom: 50px; width: 70%; margin: 0px auto;">
				    	<tbody>
				            <tr>
				                <td style="text-align: center;">킘유진</td>
				                <td>감사합니다.</td>
				                <td style="text-align: center;">2021-06-17</td>
				                <td><img onclick="location.href=''" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px"></td>
				            </tr>
				            <tr>
				                <td style="text-align: center;">업나라</td>
				                <td>좋은 글 감사합니다! 더 궁금한 점이 있는데 쪽지 드려도 될까요~?</td>
				                <td style="text-align: center;">2021-06-17</td>
				                <td><img onclick="location.href=''" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px"></td>
				            </tr>
				            <tr>
				                <td style="text-align: center;">손성훙</td>
				                <td>정보 감사합니다.</td>
				                <td style="text-align: center;">2021-06-17</td>
				                <td><img onclick="location.href=''" src="${ pageContext.servletContext.contextPath }/resources/images/report.jpg" style="width: 25px"></td>
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

            <!-- 푸터 -->
            <jsp:include page="../common/footer.jsp"/>
        </div>
        
</html>