<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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


            <!--Home page style-->
			<jsp:include page="../../admin/common/header.jsp"></jsp:include> 

            <!--Home Sections-->
           

           <!--Business Section-->
            <section id="business" class="business bg-grey roomy-70" style="margin-top: 50px; margin-bottom:100px; ">
                <div class="container">
                    <div class="row">
                        <div class="main_business">
                        <div class="col-md-6" style="width:100%;">
                                <div class="test_item fix" style="width: 280px; text-align: center; float:left;">
                                	<div style="width: 100%;height: 100px; ">
                                		<a style="text-align:center; font-size:60px;"><strong>3 건</strong></a>
                                	</div>
									<br>
                                     <h3 class="text-uppercase"><strong>결제관리</strong></h3>
                                </div>
                                
                                <div class="test_item fix" style="width: 280px; text-align: center; float:left;">
                                	<div style="width: 100%;height: 100px; ">
                                		<a style="text-align:center; font-size:60px;"><strong>3 건</strong></a>
                                	</div>
									<br>
                                     <h3 class="text-uppercase"><strong> 광고</strong></h3>
                                </div>
                                
                                <div class="test_item fix" style="width: 280px; text-align: center; float:left;">
                                	<div style="width: 100%;height: 100px; ">
                                		<a style="text-align:center; font-size:60px;"><strong>1 건</strong></a>
                                	</div>
									<br>
                                     <h3 class="text-uppercase"><strong> 검토게시판</strong></h3>
                                </div>
                               <div class="test_item fix" style="width: 280px; text-align: center; float:left;">
                                	<div style="width: 100%;height: 100px; ">
                                		<a style="text-align:center; font-size:60px;"><strong>5 건</strong></a>
                                	</div>
									<br>
                                     <h3 class="text-uppercase"><strong> 신고/문의 게시판</strong></h3>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </section><!-- End off Business section -->


          <jsp:include page="../../admin/common/footer.jsp"></jsp:include>




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
        </body>
</html>