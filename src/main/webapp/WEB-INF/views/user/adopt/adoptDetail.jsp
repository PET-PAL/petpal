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
            img {
                width: 600px;
                height: 600px;
                margin-bottom: 90px;
/*                 margin-left: 30px;
                margin-right: 30px; */
                text-align: center;
            }
            .sendmessage > input {
                width: 1000px;
                height: 50px;
                border-radius: 10px;
                border: 1px solid rgb(175, 175, 175);
                margin-bottom: 50px;
                margin-left: 80px;
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
            /* 이미지 콜라주 */
			/* 이미지 크기는 최대로 그냥 두고 span에 너비를 지정해서 사용.*/
			.imgCollage { margin:auto; text-align: center; }
			@media screen and (min-width: 768px) {	
				.imgCollage { 
					display:flex; -webkit-flex:auto; -moz-display:flex; -ms-display:flex; 
					flex-wrap:wrap; -webkit-flex-wrap:wrap; -moz-flex-wrap:wrap; -ms-flex-wrap:wrap; 
				}
				.imgCollage > span { padding: 4px; } 
				.imgCollage > span > .imageblock:not(:last-child) { vertical-align: baseline; } 
			    .imgCollage .imageblock { padding:0; } 
				.imgCollage img { box-shadow: none; }
			}
			@media screen and (max-width: 767px) { 
				.imgCollage > span { padding: 0; width: 100% !important; }  
				.imgCollage .imageblock { padding: 16px 0; } 
				.imgCollage  > span:first-of-type .imageblock:first-of-type { padding-top: 8px; }
				.imgCollage  > span:last-of-type .imageblock:last-of-type { padding-bottom: 4px; }
			}
			/* 이미지 콜라주  끝 */
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
			<section>
				<%-- <div class="port_img" style="float: left;">
                   <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                </div> --%>
                <div class="imgCollage" style="display: flow-root;"> 
                		<span style="width: 30%"><img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" /></span> 
                		<span style="width: 30%"><img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" /></span> 
                </div>
                <div class="imgCollage" style="display: flow-root;"> 
                		<span style="width: 30%"><img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" /></span> 
                		<span style="width: 30%"><img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" /></span>
                </div>
			</section>
			
            <section id="boradtable" class="boradtable">
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="container">
                        <div class="row">
                        	<div style="width: 600px;">
                	<h2 style="background-color: orange; width: 130px; border-radius: 8px; height: 60px; color: white; font-weight: bold; padding-top: 10px;" align="center">
                	대기중
                	</h2>
                	<!-- 상태 값에 따른 c:if 처리 -->
                	<!-- <h2 style="background-color: #FF6230; width: 130px; border-radius: 8px; height: 60px; color: white; font-weight: bold; padding-top: 10px;" align="center">
                	완료
                	</h2> -->
                	<button style="background-color: #A91919; width: 100px; border-radius: 8px; height: 40px; color: white; font-weight: bold; padding-top: 5px; ">
                	신고하기
                	</button>
                </div>
                <div>
                	<ul style="font-size: large;">
                		<li>작성자 : 
                		<b>QlQlfl</b>
                		<img src="${ pageContext.servletContext.contextPath }/resources/images/message icon.png" alt="" style="height: 50px; width: 50px; margin-top: 0px; margin-bottom: 0px; margin-left: 0px;"/>
                		</li>
                	</ul>
                </div>
                <div align="center" style="height: 150px;">
                	<h1 style="font-weight: bold;">차이니즈 크레스티드 / 수컷  <br> 3살 / 14KG / 커피색</h1>
                </div>
                <div align="center">
                <pre style="width: 1000px; white-space: pre-wrap; background-color: white; border: 0px; font-size: 20px;">
소심하지만 사람을 좋아하는 아이입니다. 부디 이 아이의 평생 가족을 찾을 수 있게 해주세요. 
현재 곰팡이 질환을 앓고 있어요 지금 치료중이지만 피부가 약해진 아이니 꼭 유의해주셔야해요
						
입양신청때 제가 더 필요로 하는 서류가 있어서 모두 충족시킬 수 있는 책임감 있으신 분을 찾고있어요!
                </pre>
                </div>
                <div align="center" style="margin-bottom: 70px;">
                <!-- 현재 로그인 되어 있는 사용자에 따라서 다르다. c:if처리 -->
                <!-- 작성자가 입양완료 버튼을 눌렀다면 상태값이 변하고 상태값에 따라 버튼이 보이기도 하고, 보이지 않기도 한다. -->
                	<button  
		                style="background-color: #45B99C; border: 0px; border-radius:10px; width:250px; margin-left:10px;">
		                	<h3 style="color: white; padding-top: 10px; font-weight: bold;">입양하기</h3>
                	</button>
                	<!-- <button  
		                style="background-color: #FF6230; border: 0px; border-radius:10px; width:250px; margin-left:10px;">
		                	<h3 style="color: white; padding-top: 10px; font-weight: bold;">입양완료</h3>
                	</button> -->
                </div>
                        </div>
                    </div>
                </div>
            </div>
            </section>

            <section id="boradtable" class="boradtable">
            	<div class="carousel-inner" role="listbox">
                	<div class="item active">
                    	<div class="container">
                        	<div class="row">
                            	<table class="table" style="margin-bottom: 50px;">
				                    <tbody>
				                        <tr>
				                            <td style="text-align: center;">펫파파</td>
				                            <td>좋은일을 하시다니 대단하신 거 같습니다!</td>
				                            <td style="text-align: center;">2021-06-22</td>
				                            <td><a href="#">신고하기</a></td>
				                        </tr>
				                        <tr>
				                            <td style="text-align: center;">유기농간식</td>
				                            <td style="width: 500px;">아이가 많이 귀엽네요</td>
				                            <td style="text-align: center;">2021-06-23</td>
				                             <td><a href="#">신고하기</a></td>
				                        </tr>
				                        <tr>
				                            <td style="text-align: center;">삐띠딕</td>
				                            <td>새 가족을 꼭 찾길 바랄게요!</td>
				                            <td style="text-align: center;">2021-06-23</td>
				                             <td><a href="#">신고하기</a></td>
				                        </tr>
				                        <tr>
				                            <td style="text-align: center;">Qododor</td>
				                            <td>아이구야 힘내세요</td>
				                            <td style="text-align: center;">2021-06-23</td>
				                             <td><a href="#">신고하기</a></td>
				                        </tr>
				                        <tr>
				                            <td style="text-align: center;">Backgu</td>
				                            <td>멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍멍</td>
				                            <td style="text-align: center;">2021-06-23</td>
				                             <td><a href="#">신고하기</a></td>
				                        </tr>
				                        <tr>
				                        	<td style="text-align: center;"> </td>
				                            <td>삭제 된 댓글입니다.</td>
				                            <td style="text-align: center;"> </td>
				                             <td><a href="#"> </a></td>
				                        </tr>
				                    </tbody>
				                </table>
				                <div class="text-center">
									<ul class="pagination">
										<li><a href="#"><</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">></a></li>
									</ul>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
             	<p style="margin-left: 380px; font-weight: bold; font-size: 20px;">
             	삐비디딕
             	</p>
             <section id="sendmessage" class="sendmessage" style="width: 70%; margin: 0px auto;">
                <input type="text" id="messagecontent" placeholder="  댓글로 임시보호자님을 응원해주세요!" >
                <button class="sendmessagecontent">댓글 작성</button>
            </section>
                              
                   
            </section>
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>
            <footer>
                <section id="business" class="business bg-grey roomy-70" style="background-color: #F1FAF8; padding-top: 80px; padding-bottom: 20px">
                
                    <div class="container">
                <p>
                    <b>고객행복센터 7777-7777</b>
                    오전 9시 - 새벽 3시
                </p>
                <address>
                    (주) petpal company<br>
                    주소 : 서울특별시 서초구 강남대로 441 5층 503호<br>
                    대표이사 : 유승제<br>
                    전화번호 : 02-7777-7777<br>
                    이메일 : petpal@petpal.com<br>
                </address>
                
            </div>
            </section>
            </footer>
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