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
                margin-left: 300px;
                margin-right: 30px;
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
            
             /* The Modal (background) */
      	  	.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        	}
    
	        /* Modal Content/Box */
	        .modal-content {
	            background-color: #fefefe;
	            margin: 15% auto; /* 15% from the top and centered */
	            padding: 20px;
	            border: 1px solid #888;
	            width: 800px; /* Could be more or less, depending on screen size */                          
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
        <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
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
				<div class="port_img" style="float: left;">
                   <img src="${ pageContext.servletContext.contextPath }/resources/images/work-img1.jpg" alt="" />
                </div>
                <div style="float: left; width: 600px; display: flex;">
                	<h2 style="background-color: orange; width: 100px; border-radius: 8px; height: 60px; color: white; font-weight: bold; padding-top: 10px;" align="center">
                	실종 
                	</h2>
                	<!-- 상태 값에 따른 c:if 처리 -->
                	<!-- <h2 style="background-color: #44B99C; width: 130px; border-radius: 8px; height: 60px; color: white; font-weight: bold; padding-top: 10px;" align="center">
                	집 도착
                	</h2> -->
                	<button style="background-color: #A91919; width: 100px; border-radius: 8px; height: 40px; color: white; font-weight: bold; padding-top: 5px; margin-left: 20px; margin-top: 20px;">
                	신고하기
                	</button>
                </div>
                <div>
                	<ul style="font-size: large;">
                		<li>작성자 : 
                		<b>QlQlfl</b>
                		<img src="${ pageContext.servletContext.contextPath }/resources/images/message icon.png" alt="" style="height: 50px; width: 50px; margin-top: 0px; margin-bottom: 0px; margin-left: 0px;" />
                		</li>
                	</ul>
                </div>
                <div style="float: left; width: 600px;">
                	<h1 style="font-weight: bold;">차이니즈 크레스티드 / 수컷  <br> 3살 / 14KG / 커피색</h1>
                </div>
                <div style="float: left; width: 600px;">
                	<table style="margin-bottom: 50px; width: 600px;">
			           <tbody>
			               <tr>
			                   <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
			                   	날 짜 
			                   </td>
			                   <td style="font-size: 20px; padding-left: 30px;">
			                   2021-06-21
			                   </td>
			               </tr>
			               <tr>
			                  <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
			                   	장 소 
			                  </td>
			                  <td style="font-size: 20px; padding-left: 30px; ">
			                  		서울특별시 xx구 xx동 xxxxxxxx아파트 앞 횡단보도
			                  </td>
			                </tr>
			                <tr>
			                  <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
			                   	특 징
			                  </td>
			                  <td style="font-size: 20px; padding-left: 30px; width: 300px;">
			                  		등에 연한 갈색의 얼룩처럼 보이게 털이 자랐어요. 코에 상처가 났어요. 꼬리가 비정상적으로 길어요.
			                  </td>
			                </tr>
			                <tr>
			                  <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
			                   	기 타
			                  </td>
			                  <td style="font-size: 20px; padding-left: 30px; width: 300px;">
			                  		겁이 많은 아이에요. 발견하시면 다가가지 말고 제보 부탁드려요ㅠㅠ
			                  </td>
			                </tr>
			                <tr>
			                  <td style="text-align: center; font-size: 20px; font-weight: bold; width: 40px; height: 50px;">
			                   	연 락 처
			                  </td>
			                  <td style="font-size: 20px; padding-left: 30px; width: 300px;">
			                  		010-1234-5673
			                  </td>
			                </tr>
			           </tbody>
			       </table>
                </div>
                <div style="float: left; width: 600px;" align="center">
                	<button onclick="show();"  style="background-color: red; border: 0px; border-radius:10px; width: 250px; margin-left:10px;">
		                	<h3 style="color: white; padding-top: 10px; font-weight: bold;">전단지 생성하기</h3>
                	</button>
                	<button  
		                style="background-color: #45B99C; border: 0px; border-radius:10px; width:250px; margin-left:10px;">
		                	<h3 style="color: white; padding-top: 10px; font-weight: bold;">찾았습니다!</h3>
                	</button>
                	<!-- 찾았습니다 버튼이 눌릴시 아래의 h3이 나오면 된다. -> 상태에 따른 c:if처리 -->
                	<!-- <h3 style="background-color: #45B99C; width: 600px; border-radius: 8px; height: 50px; color: white; font-weight: bold; padding-top: 10px;">
                	찾았습니다! 많은 관심과 제보 감사합니다!
                	</h3> -->
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
				                            <td>오늘 농협 옆 골목길에서 목격했습니다. 꼭 찾길 바랄게요</td>
				                            <td style="text-align: center;">2021-06-22</td>
				                            <td><a href="#">신고하기</a></td>
				                        </tr>
				                        <tr>
				                            <td style="text-align: center;">유기농간식</td>
				                            <td style="width: 500px;">xx초등학교 앞에서 봤습니다.</td>
				                            <td style="text-align: center;">2021-06-23</td>
				                             <td><a href="#">신고하기</a></td>
				                        </tr>
				                        <tr>
				                            <td style="text-align: center;">삐띠딕</td>
				                            <td>아직 못찾았나요? 꼭 찾길 바랄게요ㅠㅠ</td>
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
                <input type="text" id="messagecontent" placeholder="  혹시 이 아이를 보셨나요? 댓글로 목격 제보를 남겨보세요." >
                <button class="sendmessagecontent">댓글 작성</button>
            </section>
            </section>
            
            <!-- The Modal -->
            <div id="flyerModal" class="modal">
            	<!-- Modal content -->
            	<div class="modal-content">
	                <div style="height: 50px; width: 600px; background-color: yellow; margin-left: 80px;" align="center">
	                	<h2 style="color: red; font-weight: bold;">강아지를 찾습니다</h2>
	                </div>
            	<div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                	<span class="pop_bt" style="font-size: 13pt;" >
                     	닫기
                	</span>
            	</div>
            </div>
     		<script>
		        function show(){
		             $('#flyerModal').show();
		        };
		        //팝업 Close 기능
		        function close_pop(flag) {
		             $('#flyerModal').hide();
		        };
		     </script>

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