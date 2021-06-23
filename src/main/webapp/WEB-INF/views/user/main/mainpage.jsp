<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            button {
                background-color: #19A985; 
                color: white;
                border-color: #19A985; 
                border: 1px solid; 
                width: 200px; 
                height: 50px; 
                font-size: 14px; 
                font-weight: 600;
                border-radius: 10px;
            }
            .footer-links > ul > li > a{
                color: #797979;
            }
            .footer-links > ul > li > a:hover{
                color: #45B99C;
            }
            .home {
            	background: url(${ pageContext.servletContext.contextPath }/resources/images/main.jpg) no-repeat scroll  center center !important;
            	background-size: cover !important;
			    position: relative !important;
			    padding-top: 300px !important;
			    padding-bottom: 190px !important;
			    width:100% !important;
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


            <jsp:include page="../common/header.jsp"/>

            <!--Home Sections-->

            <section id="home" class="home bg-black fix">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="col-md-12">
                                <div class="hello_slid">
                                    <div class="slid_item">
                                        <div class="home_text ">
                                            <h2 class="text-white">Welcome to <strong>PET-PAL</strong></h2>
                                            <h1 class="text-white">반려동물이 당신에게 보내는 메시지, 펫팔</h1>
                                            <h3 class="text-white">- A message from your pet to you, PetPal -</h3>
                                        </div>

                                        <div class="home_btns m-top-40">
                                            <a href="" class="btn btn-primary m-top-20">펫팔 둘러보기</a>
                                        </div>
                                    </div><!-- End off slid item -->
                                    <div class="slid_item">
                                        <div class="home_text ">
                                            <h2 class="text-white">Welcome to <strong>PET-PAL</strong></h2>
                                            <h1 class="text-white">더이상 사지않고 입양하는 문화를 만듭니다</h1>
                                            <h3 class="text-white">- We create a culture of adopting rather than buying -</h3>
                                        </div>

                                        <div class="home_btns m-top-40">
                                            <a href="" class="btn btn-primary m-top-20">펫팔 둘러보기</a>
                                        </div>
                                    </div><!-- End off slid item -->
                                </div>
                            </div>

                        </div>


                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->



            <!--Featured Section-->
            <section id="features" class="features" style="background-color: #F1FAF8;">
                <div class="container">
                    <div class="row">
                        <div class="main_features fix roomy-70">
                            <div class="col-md-4">
                                <div class="features_item sm-m-top-30">
                                    <div class="f_item_icon">
                                        <i class="fa fa-thumbs-o-up"></i>
                                    </div>
                                    <div class="f_item_text">
                                        <h3>Best Quality Design</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque eleifend
                                            in sit amet mattis volutpat rhoncus.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="features_item sm-m-top-30">
                                    <div class="f_item_icon">
                                        <i class="fa fa-tablet"></i>
                                    </div>
                                    <div class="f_item_text">
                                        <h3>Responsive Design</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque eleifend
                                            in sit amet mattis volutpat rhoncus.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="features_item sm-m-top-30">
                                    <div class="f_item_icon">
                                        <i class="fa fa-sliders"></i>
                                    </div>
                                    <div class="f_item_text">
                                        <h3>Easy to Customize</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque eleifend
                                            in sit amet mattis volutpat rhoncus.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Featured Section-->


           

            <!--product section-->
            <section id="product" class="product">
                <div class="container">
                    <div class="main_product roomy-80">
                        <div class="head_title text-center fix">
                            <h2 class="text-uppercase">What Client Say</h2>
                            <h5>Clean and Modern design is our best specialist</h5>
                        </div>

                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img2.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img2.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img3.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img3.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="port_item xs-m-top-30">
                                                    <div class="port_img">
                                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" alt="" />
                                                        <div class="port_overlay text-center">
                                                            <a href="${ pageContext.servletContext.contextPath }/resources/images/work-img4.jpg" class="popup-img">+</a>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>Your Work Title</h5>
                                                        <h6>- Graphic Design</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                                <span class="sr-only">Previous</span>
                            </a>

                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <i class="fa fa-angle-right" aria-hidden="true"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Product section -->

            <footer>
             <!--Business Section-->
             <section id="business" class="business bg-grey roomy-70" style="background-color: #F1FAF8; padding-top: 50px; padding-bottom: 20px">
                
                    <div class="container">
              
                      <div class="row">
              
                        <div class="col-lg-6">
              
                          <div class="row">
              
                            <div class="col-sm-6" style="padding-left: 0px;">
              
                              
              
                              <div class="footer-newsletter">
                                <h4>Developers information</h4>
                                <p>
					                                    김유진 : https://github.com/YuJin-Kimm<br>
					                                    김해인 : https://github.com/haein-side<br>
					                                    손성훈 : https://github.com/son-sung-hun<br>
					                                    위나라 : https://github.com/NaraWee<br>
					                                    황주희 : https://github.com/juheehwang<br>
                                </p>
                              </div>

                            <br><br>

                              <div class="footer-links">
                                <h4>Contact Us</h4>
                                <p>
					                               서울특별시 <br>
					                               서초구 강남대로 441<br>
                                  5층 503호 <br>
                                  <strong>Phone:</strong> 02-7777-7777<br>
                                  <strong>Email:</strong> petpal@petpal.com<br>
                                </p>
                              </div>
              
                            </div>
              
                                

                            <div class="col-sm-6">
                              <div class="footer-links" style="margin-left: 20px;">
                                <h4>Useful Links</h4>
                                <ul>
                                  <li><a href="">이용약관</a></li>
                                  <li><a href="">개인정보처리방침</a></li>
                                </ul>
                              </div>
              
                              
              
                            </div>
              
                          </div>
              
                        </div>
              
                        <div class="col-lg-6">
              
                          <div class="form">
              
                            <h4>문의 하기</h4>
                            <p>문의 하기 기능은 회원만 이용하실 수 있습니다.<br>문의하기를 이용하시고 싶은 분들은 회원가입 및 로그인을 먼저 해주세요</p>
              
                            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                              <div class="form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required="">
                              </div>
                              <div class="form-group mt-3">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required="">
                              </div>
                              <div class="form-group mt-3">
                  				<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required="">
               		 		  </div>
                              <div class="form-group mt-3">
                                <textarea class="form-control" name="message" rows="5" placeholder="Message" required="" style="resize: none;"></textarea>
                              </div>
              
                              <div class="text-center"><button type="submit" title="Send Message" style="color: white;">Send Message</button></div>
                            </form>
              
                          </div>
              
                        </div>
              
                      </div>
              
                    </div>
            </section><!-- End off Business section -->
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