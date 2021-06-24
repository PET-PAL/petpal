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
            <section id="borad" class="borad" style="width: 80%; margin: 0px auto;  margin-bottom: 40px;">
                <div style="color: #45B99C; font-size: 25px; font-weight: 600; margin-left: 200px;">무료나눔
                <button 
                style="color: white; background-color: #FFA800; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px;">
                	나눔중
                </button>
                <button 
                style="color: white; background-color: #45B99C; border-color: white; border: 1px solid; 
                border-radius:10px; width:180px; margin-left:30px; position: relative; bottom: 10%;">
                	나눔완료
                </button>
                </div>
                <hr style="border-color: rgb(175, 175, 175); width: 80%;">
            </section> <!--End off Home Sections-->
            <div style="width: 370px; position: relative; left: 60%;">
		            <form style="margin-bottom: 40px;">
						<input type="search" placeholder=" 검색 키워드를 입력해주세요" aria-label="Search"
						style="width: 300px; border-radius: 5px; background-color: #F1FAF8; height:40px; border: solid 1px; border-color: black;">
						<span>
						<button type="submit" style="background-color: white; height: 40px; width: 50px; float: right; border: solid 1px; border-color: black; border-radius: 5px;">
							검색
						</button>
						</span>
					</form>
					</div>

            <section id="boradtable" class="boradtable">
                 <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img" style="position: relative;">
                                                    	<p style="position: absolute; font-size: 20px; background-color: orange; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">나눔중</p>
                                                    	<!-- <p style="position: absolute; font-size: 20px; background-color: #45B99C; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">집 도착</p> -->
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">
                                                        <h4><a href="${ pageContext.servletContext.contextPath }/views/user/community/shareDetail.jsp">강아지 침대 나눕니다</a></h4>
                                                        <h6>서울특별시 강남구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                    	<!-- <p style="position: absolute; font-size: 20px; background-color: orange; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">실종</p> -->
                                                    	<p style="position: absolute; font-size: 20px; background-color: #45B99C; color: white; height: 30px; width: 100px; padding-top: 6px; border-radius: 5px; font-weight: bold;" align="center">나눔완료</p>
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center">
                                                        <h4>고양이 간식 나눔합니다</h4>
                                                        <h6>서울특별시 xx구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center">
                                                        <h4>햄스터 챗바퀴 받으실분있나요</h4>
                                                        <h6>서울특별시 강남구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center">
                                                        <h4>강아지 훈련책 드립니다</h4>
                                                        <h6>서울특별시 강남구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             </div>
                             <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center">
                                                        <h4>강아지장난감드립니다</h4>
                                                        <h6>서울특별시 강남구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center">
                                                        <h4>유통기한 얼마남지 않은사료 </h4>
                                                        <h6>서울특별시 xx구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center">
                                                        <h4>고양이장난감</h4>
                                                        <h6>서울특별시 강남구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                    </div>
                                                    <div class="port_caption m-top-20" align="center" style="margin-bottom: 30px;">
                                                        <h4>배변패드 남아서 드려요</h4>
                                                        <h6>서울특별시 강남구 xx동</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             </div>
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
            </section>
            <div style="position: fixed; top: 310px; left: 200px;">
	            <button style="border: 0px; background-color: #19A985; width: 50px; height: 200px; border-radius: 10px;">
	            <h4 style="writing-mode: vertical-rl; color: white; font-weight: bold;" align="center">글 작성하기</h4>
	            </button>
			</div>
            <!-- 오른쪽 배너 -->
            <jsp:include page="../../common/banner.jsp"/>
        </div>
         <jsp:include page="../common/footer.jsp"/>
            

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