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
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin/report.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin/success_modalpop.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/magnific-popup.css">
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/bootsnav.css">

        <!-- xsslider slider css -->


        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/xsslider.css">-->

   <!--    <h1> hi</h1> -->


        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/plugins.css" />-->

        <!--Theme custom css -->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/style.css">
        <!--<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" />

        <script src="${ pageContext.servletContext.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
<body>

   


        <div class="culmn">
        
      <nav class="navbar navbar-default bootsnav navbar-fixed" style="background-color: #F1FAF8;">
               <!-- Start Top Search -->
                <div class="top-search">
                    <div class="container">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                        </div>
                    </div>
                </div>
                <!-- End Top Search -->


                <div class="container"> 
                    <div class="attr-nav" style="
                    margin-right: -40px;
                    margin-bottom: -100px;
                    margin-top: -20px;">
                        <ul style="margin-right:-100px;">
                            <li class="mypage"><a href="#"><img src="${ pageContext.servletContext.contextPath }/resources/images/user.png" alt="profile" style="height: 50px;width: 50px;margin-top: 7px;margin-left: 15px;"></a></li>
                        </ul>
                    </div> 

                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                    
                     <p style="color: #19A985; font-weight: 800; font-size: 35px; margin-top: 25px; margin-left: -45px">PET-PAL</p>
                        

                    </div>
                    <!-- End Header Navigation -->

                    <!-- navbar menu -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right">
                           <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/adminList.jsp">관리자 관리</a></li>                    
                            <li class="dropdown"><a href="#" class="dropdown-category" id="dropdownPaymentMenu" data-toggle="dropdown">결제 관리 <i class="caret"></i></a> 
                               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownPaymentMenu" style="width:130px;" > 
                                  <li style="text-align:center;"><a class="dropdown-item" aria-current="true" href="${ pageContext.servletContext.contextPath }/views/admin/main/paymentManageList.jsp">광고 결제 관리</a></li> 
                                  <li><a class="dropdown-item" href="${ pageContext.servletContext.contextPath }/views/admin/main/taxManageList.jsp">세금계산서 관리</a></li> 
                               </ul> 
                            </li>

                            <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/blackList.jsp">블랙리스트 관리</a></li>
                            <li class="dropdown"><a href="${ pageContext.servletContext.contextPath }/views/admin/main/adApproveList.jsp" class="dropdown-category" id="dropdownAskMenu" data-toggle="dropdown"> 광고 <i class="caret"></i></a> 
                               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownADMenu" style="width:130px;" > 
                                  <li><a class="dropdown-item" aria-current="true"  href="${ pageContext.servletContext.contextPath }/views/admin/main/adApproveList.jsp">광고 심사</a></li> 
                                  <li><a class="dropdown-item"  href="${ pageContext.servletContext.contextPath }/views/admin/main/adList.jsp">광고 관리</a></li> 

                               </ul> 
                            </li>
                             <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/reviewInfo.jsp"> 검토 게시판 </a></li>
                             <li class="dropdown"><a href="${ pageContext.servletContext.contextPath }/views/admin/main/report.jsp" class="dropdown-category" id="dropdownAskMenu" data-toggle="dropdown"> 신고/문의 게시판 <i class="caret"></i></a> 
                               <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownAskMenu" style="width:130px;" > 
                                  <li><a class="dropdown-item" aria-current="true" href="${ pageContext.servletContext.contextPath }/views/admin/main/report.jsp">신고 게시판</a></li> 
                                  <li><a class="dropdown-item" href="${ pageContext.servletContext.contextPath }/views/admin/main/ask_board.jsp">문의 게시판</a></li> 
                               </ul> 
                            </li>
                            <li><a href="${ pageContext.servletContext.contextPath }/views/admin/main/newsletterList.jsp">뉴스레터</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </div> 

            </nav>

            <!--헤더와 바디 사이 공간 유지 -->

            <div id="home" class="home" style="padding-top: 0%; padding-bottom:130px">
           
            </div> 

            <!--헤더와 바디 사이 공간 유지 -->
            <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div>

</body>
</html>